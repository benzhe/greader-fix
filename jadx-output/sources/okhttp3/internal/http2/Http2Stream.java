package okhttp3.internal.http2;

import defpackage.at7;
import defpackage.gm7;
import defpackage.im7;
import defpackage.jo;
import defpackage.tt7;
import defpackage.vs7;
import defpackage.vt7;
import defpackage.wt7;
import defpackage.xs7;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import java.util.List;
import okhttp3.Headers;
import okhttp3.internal.Util;

/* loaded from: classes2.dex */
public final class Http2Stream {
    public static final Companion Companion = new Companion(null);
    public static final long EMIT_BUFFER_SIZE = 16384;
    private final Http2Connection connection;
    private ErrorCode errorCode;
    private IOException errorException;
    private boolean hasResponseHeaders;
    private final ArrayDeque<Headers> headersQueue;
    private final int id;
    private long readBytesAcknowledged;
    private long readBytesTotal;
    private final StreamTimeout readTimeout;
    private final FramingSink sink;
    private final FramingSource source;
    private long writeBytesMaximum;
    private long writeBytesTotal;
    private final StreamTimeout writeTimeout;

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(gm7 gm7Var) {
            this();
        }
    }

    public final class FramingSource implements vt7 {
        private boolean closed;
        private boolean finished;
        private final long maxByteCount;
        private Headers trailers;
        private final xs7 receiveBuffer = new xs7();
        private final xs7 readBuffer = new xs7();

        public FramingSource(long j, boolean z) {
            this.maxByteCount = j;
            this.finished = z;
        }

        private final void updateConnectionFlowControl(long j) {
            Http2Stream http2Stream = Http2Stream.this;
            if (!Util.assertionsEnabled || !Thread.holdsLock(http2Stream)) {
                Http2Stream.this.getConnection().updateConnectionFlowControl$okhttp(j);
                return;
            }
            StringBuilder sbZ = jo.z("Thread ");
            Thread threadCurrentThread = Thread.currentThread();
            im7.d(threadCurrentThread, "Thread.currentThread()");
            sbZ.append(threadCurrentThread.getName());
            sbZ.append(" MUST NOT hold lock on ");
            sbZ.append(http2Stream);
            throw new AssertionError(sbZ.toString());
        }

        @Override // defpackage.vt7, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            long j;
            synchronized (Http2Stream.this) {
                this.closed = true;
                xs7 xs7Var = this.readBuffer;
                j = xs7Var.f;
                xs7Var.skip(j);
                Http2Stream http2Stream = Http2Stream.this;
                if (http2Stream == null) {
                    throw new NullPointerException("null cannot be cast to non-null type java.lang.Object");
                }
                http2Stream.notifyAll();
            }
            if (j > 0) {
                updateConnectionFlowControl(j);
            }
            Http2Stream.this.cancelStreamIfNecessary$okhttp();
        }

        public final boolean getClosed$okhttp() {
            return this.closed;
        }

        public final boolean getFinished$okhttp() {
            return this.finished;
        }

        public final xs7 getReadBuffer() {
            return this.readBuffer;
        }

        public final xs7 getReceiveBuffer() {
            return this.receiveBuffer;
        }

        public final Headers getTrailers() {
            return this.trailers;
        }

        @Override // defpackage.vt7
        public long read(xs7 xs7Var, long j) throws IOException {
            long j2;
            boolean z;
            long j3;
            im7.e(xs7Var, "sink");
            long j4 = 0;
            if (!(j >= 0)) {
                throw new IllegalArgumentException(jo.j("byteCount < 0: ", j).toString());
            }
            while (true) {
                IOException errorException$okhttp = null;
                synchronized (Http2Stream.this) {
                    Http2Stream.this.getReadTimeout$okhttp().enter();
                    try {
                        if (Http2Stream.this.getErrorCode$okhttp() != null && (errorException$okhttp = Http2Stream.this.getErrorException$okhttp()) == null) {
                            ErrorCode errorCode$okhttp = Http2Stream.this.getErrorCode$okhttp();
                            im7.c(errorCode$okhttp);
                            errorException$okhttp = new StreamResetException(errorCode$okhttp);
                        }
                        if (this.closed) {
                            throw new IOException("stream closed");
                        }
                        xs7 xs7Var2 = this.readBuffer;
                        long j5 = xs7Var2.f;
                        if (j5 > j4) {
                            j2 = xs7Var2.read(xs7Var, Math.min(j, j5));
                            Http2Stream http2Stream = Http2Stream.this;
                            http2Stream.setReadBytesTotal$okhttp(http2Stream.getReadBytesTotal() + j2);
                            long readBytesTotal = Http2Stream.this.getReadBytesTotal() - Http2Stream.this.getReadBytesAcknowledged();
                            if (errorException$okhttp == null && readBytesTotal >= Http2Stream.this.getConnection().getOkHttpSettings().getInitialWindowSize() / 2) {
                                Http2Stream.this.getConnection().writeWindowUpdateLater$okhttp(Http2Stream.this.getId(), readBytesTotal);
                                Http2Stream http2Stream2 = Http2Stream.this;
                                http2Stream2.setReadBytesAcknowledged$okhttp(http2Stream2.getReadBytesTotal());
                            }
                        } else if (this.finished || errorException$okhttp != null) {
                            j2 = -1;
                        } else {
                            Http2Stream.this.waitForIo$okhttp();
                            z = true;
                            j3 = -1;
                        }
                        j3 = j2;
                        z = false;
                    } finally {
                    }
                }
                if (!z) {
                    if (j3 != -1) {
                        updateConnectionFlowControl(j3);
                        return j3;
                    }
                    if (errorException$okhttp == null) {
                        return -1L;
                    }
                    im7.c(errorException$okhttp);
                    throw errorException$okhttp;
                }
                j4 = 0;
            }
        }

        public final void receive$okhttp(at7 at7Var, long j) throws IOException {
            boolean z;
            boolean z2;
            boolean z3;
            long j2;
            im7.e(at7Var, "source");
            Http2Stream http2Stream = Http2Stream.this;
            if (Util.assertionsEnabled && Thread.holdsLock(http2Stream)) {
                StringBuilder sbZ = jo.z("Thread ");
                Thread threadCurrentThread = Thread.currentThread();
                im7.d(threadCurrentThread, "Thread.currentThread()");
                sbZ.append(threadCurrentThread.getName());
                sbZ.append(" MUST NOT hold lock on ");
                sbZ.append(http2Stream);
                throw new AssertionError(sbZ.toString());
            }
            while (j > 0) {
                synchronized (Http2Stream.this) {
                    z = this.finished;
                    z2 = true;
                    z3 = this.readBuffer.f + j > this.maxByteCount;
                }
                if (z3) {
                    at7Var.skip(j);
                    Http2Stream.this.closeLater(ErrorCode.FLOW_CONTROL_ERROR);
                    return;
                }
                if (z) {
                    at7Var.skip(j);
                    return;
                }
                long j3 = at7Var.read(this.receiveBuffer, j);
                if (j3 == -1) {
                    throw new EOFException();
                }
                j -= j3;
                synchronized (Http2Stream.this) {
                    if (this.closed) {
                        xs7 xs7Var = this.receiveBuffer;
                        j2 = xs7Var.f;
                        xs7Var.skip(j2);
                    } else {
                        xs7 xs7Var2 = this.readBuffer;
                        if (xs7Var2.f != 0) {
                            z2 = false;
                        }
                        xs7Var2.b0(this.receiveBuffer);
                        if (z2) {
                            Http2Stream http2Stream2 = Http2Stream.this;
                            if (http2Stream2 == null) {
                                throw new NullPointerException("null cannot be cast to non-null type java.lang.Object");
                            }
                            http2Stream2.notifyAll();
                        }
                        j2 = 0;
                    }
                }
                if (j2 > 0) {
                    updateConnectionFlowControl(j2);
                }
            }
        }

        public final void setClosed$okhttp(boolean z) {
            this.closed = z;
        }

        public final void setFinished$okhttp(boolean z) {
            this.finished = z;
        }

        public final void setTrailers(Headers headers) {
            this.trailers = headers;
        }

        @Override // defpackage.vt7
        public wt7 timeout() {
            return Http2Stream.this.getReadTimeout$okhttp();
        }
    }

    public final class StreamTimeout extends vs7 {
        public StreamTimeout() {
        }

        public final void exitAndThrowIfTimedOut() throws IOException {
            if (exit()) {
                throw newTimeoutException(null);
            }
        }

        @Override // defpackage.vs7
        public IOException newTimeoutException(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override // defpackage.vs7
        public void timedOut() {
            Http2Stream.this.closeLater(ErrorCode.CANCEL);
            Http2Stream.this.getConnection().sendDegradedPingLater$okhttp();
        }
    }

    public Http2Stream(int i, Http2Connection http2Connection, boolean z, boolean z2, Headers headers) {
        im7.e(http2Connection, "connection");
        this.id = i;
        this.connection = http2Connection;
        this.writeBytesMaximum = http2Connection.getPeerSettings().getInitialWindowSize();
        ArrayDeque<Headers> arrayDeque = new ArrayDeque<>();
        this.headersQueue = arrayDeque;
        this.source = new FramingSource(http2Connection.getOkHttpSettings().getInitialWindowSize(), z2);
        this.sink = new FramingSink(z);
        this.readTimeout = new StreamTimeout();
        this.writeTimeout = new StreamTimeout();
        if (headers == null) {
            if (!isLocallyInitiated()) {
                throw new IllegalStateException("remotely-initiated streams should have headers".toString());
            }
        } else {
            if (!(!isLocallyInitiated())) {
                throw new IllegalStateException("locally-initiated streams shouldn't have headers yet".toString());
            }
            arrayDeque.add(headers);
        }
    }

    private final boolean closeInternal(ErrorCode errorCode, IOException iOException) {
        if (Util.assertionsEnabled && Thread.holdsLock(this)) {
            StringBuilder sbZ = jo.z("Thread ");
            Thread threadCurrentThread = Thread.currentThread();
            im7.d(threadCurrentThread, "Thread.currentThread()");
            sbZ.append(threadCurrentThread.getName());
            sbZ.append(" MUST NOT hold lock on ");
            sbZ.append(this);
            throw new AssertionError(sbZ.toString());
        }
        synchronized (this) {
            if (this.errorCode != null) {
                return false;
            }
            if (this.source.getFinished$okhttp() && this.sink.getFinished()) {
                return false;
            }
            this.errorCode = errorCode;
            this.errorException = iOException;
            notifyAll();
            this.connection.removeStream$okhttp(this.id);
            return true;
        }
    }

    public final void addBytesToWriteWindow(long j) {
        this.writeBytesMaximum += j;
        if (j > 0) {
            notifyAll();
        }
    }

    public final void cancelStreamIfNecessary$okhttp() throws IOException {
        boolean z;
        boolean zIsOpen;
        if (Util.assertionsEnabled && Thread.holdsLock(this)) {
            StringBuilder sbZ = jo.z("Thread ");
            Thread threadCurrentThread = Thread.currentThread();
            im7.d(threadCurrentThread, "Thread.currentThread()");
            sbZ.append(threadCurrentThread.getName());
            sbZ.append(" MUST NOT hold lock on ");
            sbZ.append(this);
            throw new AssertionError(sbZ.toString());
        }
        synchronized (this) {
            z = !this.source.getFinished$okhttp() && this.source.getClosed$okhttp() && (this.sink.getFinished() || this.sink.getClosed());
            zIsOpen = isOpen();
        }
        if (z) {
            close(ErrorCode.CANCEL, null);
        } else {
            if (zIsOpen) {
                return;
            }
            this.connection.removeStream$okhttp(this.id);
        }
    }

    public final void checkOutNotClosed$okhttp() throws IOException {
        if (this.sink.getClosed()) {
            throw new IOException("stream closed");
        }
        if (this.sink.getFinished()) {
            throw new IOException("stream finished");
        }
        if (this.errorCode != null) {
            IOException iOException = this.errorException;
            if (iOException != null) {
                throw iOException;
            }
            ErrorCode errorCode = this.errorCode;
            im7.c(errorCode);
            throw new StreamResetException(errorCode);
        }
    }

    public final void close(ErrorCode errorCode, IOException iOException) throws IOException {
        im7.e(errorCode, "rstStatusCode");
        if (closeInternal(errorCode, iOException)) {
            this.connection.writeSynReset$okhttp(this.id, errorCode);
        }
    }

    public final void closeLater(ErrorCode errorCode) {
        im7.e(errorCode, "errorCode");
        if (closeInternal(errorCode, null)) {
            this.connection.writeSynResetLater$okhttp(this.id, errorCode);
        }
    }

    public final void enqueueTrailers(Headers headers) {
        im7.e(headers, "trailers");
        synchronized (this) {
            boolean z = true;
            if (!(!this.sink.getFinished())) {
                throw new IllegalStateException("already finished".toString());
            }
            if (headers.size() == 0) {
                z = false;
            }
            if (!z) {
                throw new IllegalArgumentException("trailers.size() == 0".toString());
            }
            this.sink.setTrailers(headers);
        }
    }

    public final Http2Connection getConnection() {
        return this.connection;
    }

    public final synchronized ErrorCode getErrorCode$okhttp() {
        return this.errorCode;
    }

    public final IOException getErrorException$okhttp() {
        return this.errorException;
    }

    public final int getId() {
        return this.id;
    }

    public final long getReadBytesAcknowledged() {
        return this.readBytesAcknowledged;
    }

    public final long getReadBytesTotal() {
        return this.readBytesTotal;
    }

    public final StreamTimeout getReadTimeout$okhttp() {
        return this.readTimeout;
    }

    public final tt7 getSink() {
        synchronized (this) {
            if (!(this.hasResponseHeaders || isLocallyInitiated())) {
                throw new IllegalStateException("reply before requesting the sink".toString());
            }
        }
        return this.sink;
    }

    public final FramingSink getSink$okhttp() {
        return this.sink;
    }

    public final vt7 getSource() {
        return this.source;
    }

    public final FramingSource getSource$okhttp() {
        return this.source;
    }

    public final long getWriteBytesMaximum() {
        return this.writeBytesMaximum;
    }

    public final long getWriteBytesTotal() {
        return this.writeBytesTotal;
    }

    public final StreamTimeout getWriteTimeout$okhttp() {
        return this.writeTimeout;
    }

    public final boolean isLocallyInitiated() {
        return this.connection.getClient$okhttp() == ((this.id & 1) == 1);
    }

    public final synchronized boolean isOpen() {
        if (this.errorCode != null) {
            return false;
        }
        if ((this.source.getFinished$okhttp() || this.source.getClosed$okhttp()) && (this.sink.getFinished() || this.sink.getClosed())) {
            if (this.hasResponseHeaders) {
                return false;
            }
        }
        return true;
    }

    public final wt7 readTimeout() {
        return this.readTimeout;
    }

    public final void receiveData(at7 at7Var, int i) throws IOException {
        im7.e(at7Var, "source");
        if (!Util.assertionsEnabled || !Thread.holdsLock(this)) {
            this.source.receive$okhttp(at7Var, i);
            return;
        }
        StringBuilder sbZ = jo.z("Thread ");
        Thread threadCurrentThread = Thread.currentThread();
        im7.d(threadCurrentThread, "Thread.currentThread()");
        sbZ.append(threadCurrentThread.getName());
        sbZ.append(" MUST NOT hold lock on ");
        sbZ.append(this);
        throw new AssertionError(sbZ.toString());
    }

    public final void receiveHeaders(Headers headers, boolean z) {
        boolean zIsOpen;
        im7.e(headers, "headers");
        if (Util.assertionsEnabled && Thread.holdsLock(this)) {
            StringBuilder sbZ = jo.z("Thread ");
            Thread threadCurrentThread = Thread.currentThread();
            im7.d(threadCurrentThread, "Thread.currentThread()");
            sbZ.append(threadCurrentThread.getName());
            sbZ.append(" MUST NOT hold lock on ");
            sbZ.append(this);
            throw new AssertionError(sbZ.toString());
        }
        synchronized (this) {
            if (this.hasResponseHeaders && z) {
                this.source.setTrailers(headers);
            } else {
                this.hasResponseHeaders = true;
                this.headersQueue.add(headers);
            }
            if (z) {
                this.source.setFinished$okhttp(true);
            }
            zIsOpen = isOpen();
            notifyAll();
        }
        if (zIsOpen) {
            return;
        }
        this.connection.removeStream$okhttp(this.id);
    }

    public final synchronized void receiveRstStream(ErrorCode errorCode) {
        im7.e(errorCode, "errorCode");
        if (this.errorCode == null) {
            this.errorCode = errorCode;
            notifyAll();
        }
    }

    public final void setErrorCode$okhttp(ErrorCode errorCode) {
        this.errorCode = errorCode;
    }

    public final void setErrorException$okhttp(IOException iOException) {
        this.errorException = iOException;
    }

    public final void setReadBytesAcknowledged$okhttp(long j) {
        this.readBytesAcknowledged = j;
    }

    public final void setReadBytesTotal$okhttp(long j) {
        this.readBytesTotal = j;
    }

    public final void setWriteBytesMaximum$okhttp(long j) {
        this.writeBytesMaximum = j;
    }

    public final void setWriteBytesTotal$okhttp(long j) {
        this.writeBytesTotal = j;
    }

    public final synchronized Headers takeHeaders() throws IOException {
        Headers headersRemoveFirst;
        this.readTimeout.enter();
        while (this.headersQueue.isEmpty() && this.errorCode == null) {
            try {
                waitForIo$okhttp();
            } catch (Throwable th) {
                this.readTimeout.exitAndThrowIfTimedOut();
                throw th;
            }
        }
        this.readTimeout.exitAndThrowIfTimedOut();
        if (!(!this.headersQueue.isEmpty())) {
            IOException iOException = this.errorException;
            if (iOException != null) {
                throw iOException;
            }
            ErrorCode errorCode = this.errorCode;
            im7.c(errorCode);
            throw new StreamResetException(errorCode);
        }
        headersRemoveFirst = this.headersQueue.removeFirst();
        im7.d(headersRemoveFirst, "headersQueue.removeFirst()");
        return headersRemoveFirst;
    }

    public final synchronized Headers trailers() throws IOException {
        Headers trailers;
        if (this.errorCode != null) {
            IOException iOException = this.errorException;
            if (iOException != null) {
                throw iOException;
            }
            ErrorCode errorCode = this.errorCode;
            im7.c(errorCode);
            throw new StreamResetException(errorCode);
        }
        if (!(this.source.getFinished$okhttp() && this.source.getReceiveBuffer().J() && this.source.getReadBuffer().J())) {
            throw new IllegalStateException("too early; can't read the trailers yet".toString());
        }
        trailers = this.source.getTrailers();
        if (trailers == null) {
            trailers = Util.EMPTY_HEADERS;
        }
        return trailers;
    }

    public final void waitForIo$okhttp() throws InterruptedException, InterruptedIOException {
        try {
            wait();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException();
        }
    }

    public final void writeHeaders(List<Header> list, boolean z, boolean z2) throws IOException {
        boolean z3;
        im7.e(list, "responseHeaders");
        if (Util.assertionsEnabled && Thread.holdsLock(this)) {
            StringBuilder sbZ = jo.z("Thread ");
            Thread threadCurrentThread = Thread.currentThread();
            im7.d(threadCurrentThread, "Thread.currentThread()");
            sbZ.append(threadCurrentThread.getName());
            sbZ.append(" MUST NOT hold lock on ");
            sbZ.append(this);
            throw new AssertionError(sbZ.toString());
        }
        synchronized (this) {
            this.hasResponseHeaders = true;
            if (z) {
                this.sink.setFinished(true);
            }
        }
        if (!z2) {
            synchronized (this.connection) {
                z3 = this.connection.getWriteBytesTotal() >= this.connection.getWriteBytesMaximum();
            }
            z2 = z3;
        }
        this.connection.writeHeaders$okhttp(this.id, z, list);
        if (z2) {
            this.connection.flush();
        }
    }

    public final wt7 writeTimeout() {
        return this.writeTimeout;
    }

    public final class FramingSink implements tt7 {
        private boolean closed;
        private boolean finished;
        private final xs7 sendBuffer;
        private Headers trailers;

        public FramingSink(boolean z) {
            this.finished = z;
            this.sendBuffer = new xs7();
        }

        private final void emitFrame(boolean z) throws IOException {
            long jMin;
            boolean z2;
            synchronized (Http2Stream.this) {
                Http2Stream.this.getWriteTimeout$okhttp().enter();
                while (Http2Stream.this.getWriteBytesTotal() >= Http2Stream.this.getWriteBytesMaximum() && !this.finished && !this.closed && Http2Stream.this.getErrorCode$okhttp() == null) {
                    try {
                        Http2Stream.this.waitForIo$okhttp();
                    } finally {
                    }
                }
                Http2Stream.this.getWriteTimeout$okhttp().exitAndThrowIfTimedOut();
                Http2Stream.this.checkOutNotClosed$okhttp();
                jMin = Math.min(Http2Stream.this.getWriteBytesMaximum() - Http2Stream.this.getWriteBytesTotal(), this.sendBuffer.f);
                Http2Stream http2Stream = Http2Stream.this;
                http2Stream.setWriteBytesTotal$okhttp(http2Stream.getWriteBytesTotal() + jMin);
                z2 = z && jMin == this.sendBuffer.f && Http2Stream.this.getErrorCode$okhttp() == null;
            }
            Http2Stream.this.getWriteTimeout$okhttp().enter();
            try {
                Http2Stream.this.getConnection().writeData(Http2Stream.this.getId(), z2, this.sendBuffer, jMin);
            } finally {
            }
        }

        @Override // defpackage.tt7, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            Http2Stream http2Stream = Http2Stream.this;
            if (Util.assertionsEnabled && Thread.holdsLock(http2Stream)) {
                StringBuilder sbZ = jo.z("Thread ");
                Thread threadCurrentThread = Thread.currentThread();
                im7.d(threadCurrentThread, "Thread.currentThread()");
                sbZ.append(threadCurrentThread.getName());
                sbZ.append(" MUST NOT hold lock on ");
                sbZ.append(http2Stream);
                throw new AssertionError(sbZ.toString());
            }
            synchronized (Http2Stream.this) {
                if (this.closed) {
                    return;
                }
                boolean z = Http2Stream.this.getErrorCode$okhttp() == null;
                if (!Http2Stream.this.getSink$okhttp().finished) {
                    boolean z2 = this.sendBuffer.f > 0;
                    if (this.trailers != null) {
                        while (this.sendBuffer.f > 0) {
                            emitFrame(false);
                        }
                        Http2Connection connection = Http2Stream.this.getConnection();
                        int id = Http2Stream.this.getId();
                        Headers headers = this.trailers;
                        im7.c(headers);
                        connection.writeHeaders$okhttp(id, z, Util.toHeaderList(headers));
                    } else if (z2) {
                        while (this.sendBuffer.f > 0) {
                            emitFrame(true);
                        }
                    } else if (z) {
                        Http2Stream.this.getConnection().writeData(Http2Stream.this.getId(), true, null, 0L);
                    }
                }
                synchronized (Http2Stream.this) {
                    this.closed = true;
                }
                Http2Stream.this.getConnection().flush();
                Http2Stream.this.cancelStreamIfNecessary$okhttp();
            }
        }

        @Override // defpackage.tt7, java.io.Flushable
        public void flush() throws IOException {
            Http2Stream http2Stream = Http2Stream.this;
            if (Util.assertionsEnabled && Thread.holdsLock(http2Stream)) {
                StringBuilder sbZ = jo.z("Thread ");
                Thread threadCurrentThread = Thread.currentThread();
                im7.d(threadCurrentThread, "Thread.currentThread()");
                sbZ.append(threadCurrentThread.getName());
                sbZ.append(" MUST NOT hold lock on ");
                sbZ.append(http2Stream);
                throw new AssertionError(sbZ.toString());
            }
            synchronized (Http2Stream.this) {
                Http2Stream.this.checkOutNotClosed$okhttp();
            }
            while (this.sendBuffer.f > 0) {
                emitFrame(false);
                Http2Stream.this.getConnection().flush();
            }
        }

        public final boolean getClosed() {
            return this.closed;
        }

        public final boolean getFinished() {
            return this.finished;
        }

        public final Headers getTrailers() {
            return this.trailers;
        }

        public final void setClosed(boolean z) {
            this.closed = z;
        }

        public final void setFinished(boolean z) {
            this.finished = z;
        }

        public final void setTrailers(Headers headers) {
            this.trailers = headers;
        }

        @Override // defpackage.tt7
        public wt7 timeout() {
            return Http2Stream.this.getWriteTimeout$okhttp();
        }

        @Override // defpackage.tt7
        public void write(xs7 xs7Var, long j) throws IOException {
            im7.e(xs7Var, "source");
            Http2Stream http2Stream = Http2Stream.this;
            if (!Util.assertionsEnabled || !Thread.holdsLock(http2Stream)) {
                this.sendBuffer.write(xs7Var, j);
                while (this.sendBuffer.f >= 16384) {
                    emitFrame(false);
                }
            } else {
                StringBuilder sbZ = jo.z("Thread ");
                Thread threadCurrentThread = Thread.currentThread();
                im7.d(threadCurrentThread, "Thread.currentThread()");
                sbZ.append(threadCurrentThread.getName());
                sbZ.append(" MUST NOT hold lock on ");
                sbZ.append(http2Stream);
                throw new AssertionError(sbZ.toString());
            }
        }

        public /* synthetic */ FramingSink(Http2Stream http2Stream, boolean z, int i, gm7 gm7Var) {
            this((i & 1) != 0 ? false : z);
        }
    }
}
