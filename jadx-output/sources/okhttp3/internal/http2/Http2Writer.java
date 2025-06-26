package okhttp3.internal.http2;

import defpackage.gm7;
import defpackage.im7;
import defpackage.jo;
import defpackage.xs7;
import defpackage.zs7;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Hpack;
import org.apache.commons.codec.binary.Base64;

/* loaded from: classes2.dex */
public final class Http2Writer implements Closeable {
    public static final Companion Companion = new Companion(null);
    private static final Logger logger = Logger.getLogger(Http2.class.getName());
    private final boolean client;
    private boolean closed;
    private final xs7 hpackBuffer;
    private final Hpack.Writer hpackWriter;
    private int maxFrameSize;
    private final zs7 sink;

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(gm7 gm7Var) {
            this();
        }
    }

    public Http2Writer(zs7 zs7Var, boolean z) {
        im7.e(zs7Var, "sink");
        this.sink = zs7Var;
        this.client = z;
        xs7 xs7Var = new xs7();
        this.hpackBuffer = xs7Var;
        this.maxFrameSize = Http2.INITIAL_MAX_FRAME_SIZE;
        this.hpackWriter = new Hpack.Writer(0, false, xs7Var, 3, null);
    }

    private final void writeContinuationFrames(int i, long j) throws IOException {
        while (j > 0) {
            long jMin = Math.min(this.maxFrameSize, j);
            j -= jMin;
            frameHeader(i, (int) jMin, 9, j == 0 ? 4 : 0);
            this.sink.write(this.hpackBuffer, jMin);
        }
    }

    public final synchronized void applyAndAckSettings(Settings settings) throws IOException {
        im7.e(settings, "peerSettings");
        if (this.closed) {
            throw new IOException("closed");
        }
        this.maxFrameSize = settings.getMaxFrameSize(this.maxFrameSize);
        if (settings.getHeaderTableSize() != -1) {
            this.hpackWriter.resizeHeaderTable(settings.getHeaderTableSize());
        }
        frameHeader(0, 0, 4, 1);
        this.sink.flush();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        this.closed = true;
        this.sink.close();
    }

    public final synchronized void connectionPreface() throws IOException {
        if (this.closed) {
            throw new IOException("closed");
        }
        if (this.client) {
            Logger logger2 = logger;
            if (logger2.isLoggable(Level.FINE)) {
                logger2.fine(Util.format(">> CONNECTION " + Http2.CONNECTION_PREFACE.w(), new Object[0]));
            }
            this.sink.q0(Http2.CONNECTION_PREFACE);
            this.sink.flush();
        }
    }

    public final synchronized void data(boolean z, int i, xs7 xs7Var, int i2) throws IOException {
        if (this.closed) {
            throw new IOException("closed");
        }
        dataFrame(i, z ? 1 : 0, xs7Var, i2);
    }

    public final void dataFrame(int i, int i2, xs7 xs7Var, int i3) throws IOException {
        frameHeader(i, i3, 0, i2);
        if (i3 > 0) {
            zs7 zs7Var = this.sink;
            im7.c(xs7Var);
            zs7Var.write(xs7Var, i3);
        }
    }

    public final synchronized void flush() throws IOException {
        if (this.closed) {
            throw new IOException("closed");
        }
        this.sink.flush();
    }

    public final void frameHeader(int i, int i2, int i3, int i4) throws IOException {
        Logger logger2 = logger;
        if (logger2.isLoggable(Level.FINE)) {
            logger2.fine(Http2.INSTANCE.frameLog(false, i, i2, i3, i4));
        }
        if (!(i2 <= this.maxFrameSize)) {
            StringBuilder sbZ = jo.z("FRAME_SIZE_ERROR length > ");
            sbZ.append(this.maxFrameSize);
            sbZ.append(": ");
            sbZ.append(i2);
            throw new IllegalArgumentException(sbZ.toString().toString());
        }
        if (!((((int) 2147483648L) & i) == 0)) {
            throw new IllegalArgumentException(jo.g("reserved bit set: ", i).toString());
        }
        Util.writeMedium(this.sink, i2);
        this.sink.K(i3 & Base64.BASELENGTH);
        this.sink.K(i4 & Base64.BASELENGTH);
        this.sink.z(i & Integer.MAX_VALUE);
    }

    public final Hpack.Writer getHpackWriter() {
        return this.hpackWriter;
    }

    public final synchronized void goAway(int i, ErrorCode errorCode, byte[] bArr) throws IOException {
        im7.e(errorCode, "errorCode");
        im7.e(bArr, "debugData");
        if (this.closed) {
            throw new IOException("closed");
        }
        if (!(errorCode.getHttpCode() != -1)) {
            throw new IllegalArgumentException("errorCode.httpCode == -1".toString());
        }
        frameHeader(0, bArr.length + 8, 7, 0);
        this.sink.z(i);
        this.sink.z(errorCode.getHttpCode());
        if (!(bArr.length == 0)) {
            this.sink.o0(bArr);
        }
        this.sink.flush();
    }

    public final synchronized void headers(boolean z, int i, List<Header> list) throws IOException {
        im7.e(list, "headerBlock");
        if (this.closed) {
            throw new IOException("closed");
        }
        this.hpackWriter.writeHeaders(list);
        long j = this.hpackBuffer.f;
        long jMin = Math.min(this.maxFrameSize, j);
        int i2 = j == jMin ? 4 : 0;
        if (z) {
            i2 |= 1;
        }
        frameHeader(i, (int) jMin, 1, i2);
        this.sink.write(this.hpackBuffer, jMin);
        if (j > jMin) {
            writeContinuationFrames(i, j - jMin);
        }
    }

    public final int maxDataLength() {
        return this.maxFrameSize;
    }

    public final synchronized void ping(boolean z, int i, int i2) throws IOException {
        if (this.closed) {
            throw new IOException("closed");
        }
        frameHeader(0, 8, 6, z ? 1 : 0);
        this.sink.z(i);
        this.sink.z(i2);
        this.sink.flush();
    }

    public final synchronized void pushPromise(int i, int i2, List<Header> list) throws IOException {
        im7.e(list, "requestHeaders");
        if (this.closed) {
            throw new IOException("closed");
        }
        this.hpackWriter.writeHeaders(list);
        long j = this.hpackBuffer.f;
        int iMin = (int) Math.min(this.maxFrameSize - 4, j);
        long j2 = iMin;
        frameHeader(i, iMin + 4, 5, j == j2 ? 4 : 0);
        this.sink.z(i2 & Integer.MAX_VALUE);
        this.sink.write(this.hpackBuffer, j2);
        if (j > j2) {
            writeContinuationFrames(i, j - j2);
        }
    }

    public final synchronized void rstStream(int i, ErrorCode errorCode) throws IOException {
        im7.e(errorCode, "errorCode");
        if (this.closed) {
            throw new IOException("closed");
        }
        if (!(errorCode.getHttpCode() != -1)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        frameHeader(i, 4, 3, 0);
        this.sink.z(errorCode.getHttpCode());
        this.sink.flush();
    }

    public final synchronized void settings(Settings settings) throws IOException {
        im7.e(settings, "settings");
        if (this.closed) {
            throw new IOException("closed");
        }
        int i = 0;
        frameHeader(0, settings.size() * 6, 4, 0);
        while (i < 10) {
            if (settings.isSet(i)) {
                this.sink.v(i != 4 ? i != 7 ? i : 4 : 3);
                this.sink.z(settings.get(i));
            }
            i++;
        }
        this.sink.flush();
    }

    public final synchronized void windowUpdate(int i, long j) throws IOException {
        if (this.closed) {
            throw new IOException("closed");
        }
        if (!(j != 0 && j <= 2147483647L)) {
            throw new IllegalArgumentException(("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: " + j).toString());
        }
        frameHeader(i, 4, 8, 0);
        this.sink.z((int) j);
        this.sink.flush();
    }
}
