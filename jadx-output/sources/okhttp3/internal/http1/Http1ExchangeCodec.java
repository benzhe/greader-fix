package okhttp3.internal.http1;

import defpackage.at7;
import defpackage.co7;
import defpackage.ft7;
import defpackage.gm7;
import defpackage.im7;
import defpackage.jo;
import defpackage.tt7;
import defpackage.vt7;
import defpackage.wt7;
import defpackage.xs7;
import defpackage.zs7;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.util.concurrent.TimeUnit;
import okhttp3.CookieJar;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.RequestLine;
import okhttp3.internal.http.StatusLine;
import org.apache.commons.io.IOUtils;

/* loaded from: classes2.dex */
public final class Http1ExchangeCodec implements ExchangeCodec {
    public static final Companion Companion = new Companion(null);
    private static final long NO_CHUNK_YET = -1;
    private static final int STATE_CLOSED = 6;
    private static final int STATE_IDLE = 0;
    private static final int STATE_OPEN_REQUEST_BODY = 1;
    private static final int STATE_OPEN_RESPONSE_BODY = 4;
    private static final int STATE_READING_RESPONSE_BODY = 5;
    private static final int STATE_READ_RESPONSE_HEADERS = 3;
    private static final int STATE_WRITING_REQUEST_BODY = 2;
    private final OkHttpClient client;
    private final RealConnection connection;
    private final HeadersReader headersReader;
    private final zs7 sink;
    private final at7 source;
    private int state;
    private Headers trailers;

    public abstract class AbstractSource implements vt7 {
        private boolean closed;
        private final ft7 timeout;

        public AbstractSource() {
            this.timeout = new ft7(Http1ExchangeCodec.this.source.timeout());
        }

        @Override // defpackage.vt7, java.io.Closeable, java.lang.AutoCloseable
        public abstract /* synthetic */ void close() throws IOException;

        public final boolean getClosed() {
            return this.closed;
        }

        public final ft7 getTimeout() {
            return this.timeout;
        }

        @Override // defpackage.vt7
        public long read(xs7 xs7Var, long j) throws IOException {
            im7.e(xs7Var, "sink");
            try {
                return Http1ExchangeCodec.this.source.read(xs7Var, j);
            } catch (IOException e) {
                Http1ExchangeCodec.this.getConnection().noNewExchanges$okhttp();
                responseBodyComplete();
                throw e;
            }
        }

        public final void responseBodyComplete() {
            if (Http1ExchangeCodec.this.state == 6) {
                return;
            }
            if (Http1ExchangeCodec.this.state == 5) {
                Http1ExchangeCodec.this.detachTimeout(this.timeout);
                Http1ExchangeCodec.this.state = 6;
            } else {
                StringBuilder sbZ = jo.z("state: ");
                sbZ.append(Http1ExchangeCodec.this.state);
                throw new IllegalStateException(sbZ.toString());
            }
        }

        public final void setClosed(boolean z) {
            this.closed = z;
        }

        @Override // defpackage.vt7
        public wt7 timeout() {
            return this.timeout;
        }
    }

    public final class ChunkedSink implements tt7 {
        private boolean closed;
        private final ft7 timeout;

        public ChunkedSink() {
            this.timeout = new ft7(Http1ExchangeCodec.this.sink.timeout());
        }

        @Override // defpackage.tt7, java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() {
            if (this.closed) {
                return;
            }
            this.closed = true;
            Http1ExchangeCodec.this.sink.T("0\r\n\r\n");
            Http1ExchangeCodec.this.detachTimeout(this.timeout);
            Http1ExchangeCodec.this.state = 3;
        }

        @Override // defpackage.tt7, java.io.Flushable
        public synchronized void flush() {
            if (this.closed) {
                return;
            }
            Http1ExchangeCodec.this.sink.flush();
        }

        @Override // defpackage.tt7
        public wt7 timeout() {
            return this.timeout;
        }

        @Override // defpackage.tt7
        public void write(xs7 xs7Var, long j) throws IOException {
            im7.e(xs7Var, "source");
            if (!(!this.closed)) {
                throw new IllegalStateException("closed".toString());
            }
            if (j == 0) {
                return;
            }
            Http1ExchangeCodec.this.sink.c0(j);
            Http1ExchangeCodec.this.sink.T(IOUtils.LINE_SEPARATOR_WINDOWS);
            Http1ExchangeCodec.this.sink.write(xs7Var, j);
            Http1ExchangeCodec.this.sink.T(IOUtils.LINE_SEPARATOR_WINDOWS);
        }
    }

    public final class ChunkedSource extends AbstractSource {
        private long bytesRemainingInChunk;
        private boolean hasMoreChunks;
        public final /* synthetic */ Http1ExchangeCodec this$0;
        private final HttpUrl url;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChunkedSource(Http1ExchangeCodec http1ExchangeCodec, HttpUrl httpUrl) {
            super();
            im7.e(httpUrl, "url");
            this.this$0 = http1ExchangeCodec;
            this.url = httpUrl;
            this.bytesRemainingInChunk = -1L;
            this.hasMoreChunks = true;
        }

        private final void readChunkSize() throws IOException {
            if (this.bytesRemainingInChunk != -1) {
                this.this$0.source.i0();
            }
            try {
                this.bytesRemainingInChunk = this.this$0.source.G0();
                String strI0 = this.this$0.source.i0();
                if (strI0 == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.CharSequence");
                }
                String string = co7.F(strI0).toString();
                if (this.bytesRemainingInChunk >= 0) {
                    if (!(string.length() > 0) || co7.A(string, ";", false, 2)) {
                        if (this.bytesRemainingInChunk == 0) {
                            this.hasMoreChunks = false;
                            Http1ExchangeCodec http1ExchangeCodec = this.this$0;
                            http1ExchangeCodec.trailers = http1ExchangeCodec.headersReader.readHeaders();
                            OkHttpClient okHttpClient = this.this$0.client;
                            im7.c(okHttpClient);
                            CookieJar cookieJar = okHttpClient.cookieJar();
                            HttpUrl httpUrl = this.url;
                            Headers headers = this.this$0.trailers;
                            im7.c(headers);
                            HttpHeaders.receiveHeaders(cookieJar, httpUrl, headers);
                            responseBodyComplete();
                            return;
                        }
                        return;
                    }
                }
                throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.bytesRemainingInChunk + string + '\"');
            } catch (NumberFormatException e) {
                throw new ProtocolException(e.getMessage());
            }
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, defpackage.vt7, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (getClosed()) {
                return;
            }
            if (this.hasMoreChunks && !Util.discard(this, 100, TimeUnit.MILLISECONDS)) {
                this.this$0.getConnection().noNewExchanges$okhttp();
                responseBodyComplete();
            }
            setClosed(true);
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, defpackage.vt7
        public long read(xs7 xs7Var, long j) throws IOException {
            im7.e(xs7Var, "sink");
            if (!(j >= 0)) {
                throw new IllegalArgumentException(jo.j("byteCount < 0: ", j).toString());
            }
            if (!(!getClosed())) {
                throw new IllegalStateException("closed".toString());
            }
            if (!this.hasMoreChunks) {
                return -1L;
            }
            long j2 = this.bytesRemainingInChunk;
            if (j2 == 0 || j2 == -1) {
                readChunkSize();
                if (!this.hasMoreChunks) {
                    return -1L;
                }
            }
            long j3 = super.read(xs7Var, Math.min(j, this.bytesRemainingInChunk));
            if (j3 != -1) {
                this.bytesRemainingInChunk -= j3;
                return j3;
            }
            this.this$0.getConnection().noNewExchanges$okhttp();
            ProtocolException protocolException = new ProtocolException("unexpected end of stream");
            responseBodyComplete();
            throw protocolException;
        }
    }

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(gm7 gm7Var) {
            this();
        }
    }

    public final class FixedLengthSource extends AbstractSource {
        private long bytesRemaining;

        public FixedLengthSource(long j) {
            super();
            this.bytesRemaining = j;
            if (j == 0) {
                responseBodyComplete();
            }
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, defpackage.vt7, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (getClosed()) {
                return;
            }
            if (this.bytesRemaining != 0 && !Util.discard(this, 100, TimeUnit.MILLISECONDS)) {
                Http1ExchangeCodec.this.getConnection().noNewExchanges$okhttp();
                responseBodyComplete();
            }
            setClosed(true);
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, defpackage.vt7
        public long read(xs7 xs7Var, long j) throws IOException {
            im7.e(xs7Var, "sink");
            if (!(j >= 0)) {
                throw new IllegalArgumentException(jo.j("byteCount < 0: ", j).toString());
            }
            if (!(!getClosed())) {
                throw new IllegalStateException("closed".toString());
            }
            long j2 = this.bytesRemaining;
            if (j2 == 0) {
                return -1L;
            }
            long j3 = super.read(xs7Var, Math.min(j2, j));
            if (j3 == -1) {
                Http1ExchangeCodec.this.getConnection().noNewExchanges$okhttp();
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                responseBodyComplete();
                throw protocolException;
            }
            long j4 = this.bytesRemaining - j3;
            this.bytesRemaining = j4;
            if (j4 == 0) {
                responseBodyComplete();
            }
            return j3;
        }
    }

    public final class KnownLengthSink implements tt7 {
        private boolean closed;
        private final ft7 timeout;

        public KnownLengthSink() {
            this.timeout = new ft7(Http1ExchangeCodec.this.sink.timeout());
        }

        @Override // defpackage.tt7, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.closed) {
                return;
            }
            this.closed = true;
            Http1ExchangeCodec.this.detachTimeout(this.timeout);
            Http1ExchangeCodec.this.state = 3;
        }

        @Override // defpackage.tt7, java.io.Flushable
        public void flush() throws IOException {
            if (this.closed) {
                return;
            }
            Http1ExchangeCodec.this.sink.flush();
        }

        @Override // defpackage.tt7
        public wt7 timeout() {
            return this.timeout;
        }

        @Override // defpackage.tt7
        public void write(xs7 xs7Var, long j) throws IOException {
            im7.e(xs7Var, "source");
            if (!(!this.closed)) {
                throw new IllegalStateException("closed".toString());
            }
            Util.checkOffsetAndCount(xs7Var.f, 0L, j);
            Http1ExchangeCodec.this.sink.write(xs7Var, j);
        }
    }

    public final class UnknownLengthSource extends AbstractSource {
        private boolean inputExhausted;

        public UnknownLengthSource() {
            super();
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, defpackage.vt7, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (getClosed()) {
                return;
            }
            if (!this.inputExhausted) {
                responseBodyComplete();
            }
            setClosed(true);
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, defpackage.vt7
        public long read(xs7 xs7Var, long j) throws IOException {
            im7.e(xs7Var, "sink");
            if (!(j >= 0)) {
                throw new IllegalArgumentException(jo.j("byteCount < 0: ", j).toString());
            }
            if (!(!getClosed())) {
                throw new IllegalStateException("closed".toString());
            }
            if (this.inputExhausted) {
                return -1L;
            }
            long j2 = super.read(xs7Var, j);
            if (j2 != -1) {
                return j2;
            }
            this.inputExhausted = true;
            responseBodyComplete();
            return -1L;
        }
    }

    public Http1ExchangeCodec(OkHttpClient okHttpClient, RealConnection realConnection, at7 at7Var, zs7 zs7Var) {
        im7.e(realConnection, "connection");
        im7.e(at7Var, "source");
        im7.e(zs7Var, "sink");
        this.client = okHttpClient;
        this.connection = realConnection;
        this.source = at7Var;
        this.sink = zs7Var;
        this.headersReader = new HeadersReader(at7Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void detachTimeout(ft7 ft7Var) {
        wt7 wt7Var = ft7Var.a;
        wt7 wt7Var2 = wt7.NONE;
        im7.e(wt7Var2, "delegate");
        ft7Var.a = wt7Var2;
        wt7Var.clearDeadline();
        wt7Var.clearTimeout();
    }

    private final boolean isChunked(Response response) {
        return co7.e("chunked", Response.header$default(response, "Transfer-Encoding", null, 2, null), true);
    }

    private final tt7 newChunkedSink() {
        if (this.state == 1) {
            this.state = 2;
            return new ChunkedSink();
        }
        StringBuilder sbZ = jo.z("state: ");
        sbZ.append(this.state);
        throw new IllegalStateException(sbZ.toString().toString());
    }

    private final vt7 newChunkedSource(HttpUrl httpUrl) {
        if (this.state == 4) {
            this.state = 5;
            return new ChunkedSource(this, httpUrl);
        }
        StringBuilder sbZ = jo.z("state: ");
        sbZ.append(this.state);
        throw new IllegalStateException(sbZ.toString().toString());
    }

    private final vt7 newFixedLengthSource(long j) {
        if (this.state == 4) {
            this.state = 5;
            return new FixedLengthSource(j);
        }
        StringBuilder sbZ = jo.z("state: ");
        sbZ.append(this.state);
        throw new IllegalStateException(sbZ.toString().toString());
    }

    private final tt7 newKnownLengthSink() {
        if (this.state == 1) {
            this.state = 2;
            return new KnownLengthSink();
        }
        StringBuilder sbZ = jo.z("state: ");
        sbZ.append(this.state);
        throw new IllegalStateException(sbZ.toString().toString());
    }

    private final vt7 newUnknownLengthSource() {
        if (this.state == 4) {
            this.state = 5;
            getConnection().noNewExchanges$okhttp();
            return new UnknownLengthSource();
        }
        StringBuilder sbZ = jo.z("state: ");
        sbZ.append(this.state);
        throw new IllegalStateException(sbZ.toString().toString());
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void cancel() {
        getConnection().cancel();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public tt7 createRequestBody(Request request, long j) throws ProtocolException {
        im7.e(request, "request");
        if (request.body() != null && request.body().isDuplex()) {
            throw new ProtocolException("Duplex connections are not supported for HTTP/1");
        }
        if (isChunked(request)) {
            return newChunkedSink();
        }
        if (j != -1) {
            return newKnownLengthSink();
        }
        throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void finishRequest() {
        this.sink.flush();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void flushRequest() throws IOException {
        this.sink.flush();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public RealConnection getConnection() {
        return this.connection;
    }

    public final boolean isClosed() {
        return this.state == 6;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public vt7 openResponseBodySource(Response response) {
        im7.e(response, "response");
        if (!HttpHeaders.promisesBody(response)) {
            return newFixedLengthSource(0L);
        }
        if (isChunked(response)) {
            return newChunkedSource(response.request().url());
        }
        long jHeadersContentLength = Util.headersContentLength(response);
        return jHeadersContentLength != -1 ? newFixedLengthSource(jHeadersContentLength) : newUnknownLengthSource();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public Response.Builder readResponseHeaders(boolean z) {
        int i = this.state;
        boolean z2 = true;
        if (i != 1 && i != 3) {
            z2 = false;
        }
        if (!z2) {
            StringBuilder sbZ = jo.z("state: ");
            sbZ.append(this.state);
            throw new IllegalStateException(sbZ.toString().toString());
        }
        try {
            StatusLine statusLine = StatusLine.Companion.parse(this.headersReader.readLine());
            Response.Builder builderHeaders = new Response.Builder().protocol(statusLine.protocol).code(statusLine.code).message(statusLine.message).headers(this.headersReader.readHeaders());
            if (z && statusLine.code == 100) {
                return null;
            }
            if (statusLine.code == 100) {
                this.state = 3;
                return builderHeaders;
            }
            this.state = 4;
            return builderHeaders;
        } catch (EOFException e) {
            throw new IOException(jo.n("unexpected end of stream on ", getConnection().route().address().url().redact()), e);
        }
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public long reportedContentLength(Response response) {
        im7.e(response, "response");
        if (!HttpHeaders.promisesBody(response)) {
            return 0L;
        }
        if (isChunked(response)) {
            return -1L;
        }
        return Util.headersContentLength(response);
    }

    public final void skipConnectBody(Response response) {
        im7.e(response, "response");
        long jHeadersContentLength = Util.headersContentLength(response);
        if (jHeadersContentLength == -1) {
            return;
        }
        vt7 vt7VarNewFixedLengthSource = newFixedLengthSource(jHeadersContentLength);
        Util.skipAll(vt7VarNewFixedLengthSource, Integer.MAX_VALUE, TimeUnit.MILLISECONDS);
        vt7VarNewFixedLengthSource.close();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public Headers trailers() {
        if (!(this.state == 6)) {
            throw new IllegalStateException("too early; can't read the trailers yet".toString());
        }
        Headers headers = this.trailers;
        return headers != null ? headers : Util.EMPTY_HEADERS;
    }

    public final void writeRequest(Headers headers, String str) {
        im7.e(headers, "headers");
        im7.e(str, "requestLine");
        if (!(this.state == 0)) {
            StringBuilder sbZ = jo.z("state: ");
            sbZ.append(this.state);
            throw new IllegalStateException(sbZ.toString().toString());
        }
        this.sink.T(str).T(IOUtils.LINE_SEPARATOR_WINDOWS);
        int size = headers.size();
        for (int i = 0; i < size; i++) {
            this.sink.T(headers.name(i)).T(": ").T(headers.value(i)).T(IOUtils.LINE_SEPARATOR_WINDOWS);
        }
        this.sink.T(IOUtils.LINE_SEPARATOR_WINDOWS);
        this.state = 1;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void writeRequestHeaders(Request request) {
        im7.e(request, "request");
        RequestLine requestLine = RequestLine.INSTANCE;
        Proxy.Type type = getConnection().route().proxy().type();
        im7.d(type, "connection.route().proxy.type()");
        writeRequest(request.headers(), requestLine.get(request, type));
    }

    private final boolean isChunked(Request request) {
        return co7.e("chunked", request.header("Transfer-Encoding"), true);
    }
}
