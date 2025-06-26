package okhttp3;

import android.support.v4.media.session.PlaybackStateCompat;
import defpackage.at7;
import defpackage.bt7;
import defpackage.gm7;
import defpackage.im7;
import defpackage.jo;
import defpackage.lt7;
import defpackage.n56;
import defpackage.qt7;
import defpackage.vt7;
import defpackage.wt7;
import defpackage.xs7;
import defpackage.xt7;
import java.io.Closeable;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import okhttp3.internal.http1.HeadersReader;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public final class MultipartReader implements Closeable {
    public static final Companion Companion = new Companion(null);
    private static final lt7 afterBoundaryOptions;
    private final String boundary;
    private boolean closed;
    private final bt7 crlfDashDashBoundary;
    private PartSource currentPart;
    private final bt7 dashDashBoundary;
    private boolean noMoreParts;
    private int partCount;
    private final at7 source;

    public static final class Companion {
        private Companion() {
        }

        public final lt7 getAfterBoundaryOptions() {
            return MultipartReader.afterBoundaryOptions;
        }

        public /* synthetic */ Companion(gm7 gm7Var) {
            this();
        }
    }

    public static final class Part implements Closeable {
        private final at7 body;
        private final Headers headers;

        public Part(Headers headers, at7 at7Var) {
            im7.e(headers, "headers");
            im7.e(at7Var, "body");
            this.headers = headers;
            this.body = at7Var;
        }

        public final at7 body() {
            return this.body;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.body.close();
        }

        public final Headers headers() {
            return this.headers;
        }
    }

    public final class PartSource implements vt7 {
        private final wt7 timeout = new wt7();

        public PartSource() {
        }

        @Override // defpackage.vt7, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (im7.a(MultipartReader.this.currentPart, this)) {
                MultipartReader.this.currentPart = null;
            }
        }

        @Override // defpackage.vt7
        public long read(xs7 xs7Var, long j) {
            im7.e(xs7Var, "sink");
            if (!(j >= 0)) {
                throw new IllegalArgumentException(jo.j("byteCount < 0: ", j).toString());
            }
            if (!im7.a(MultipartReader.this.currentPart, this)) {
                throw new IllegalStateException("closed".toString());
            }
            wt7 wt7VarTimeout = MultipartReader.this.source.timeout();
            wt7 wt7Var = this.timeout;
            long jTimeoutNanos = wt7VarTimeout.timeoutNanos();
            long jA = wt7.Companion.a(wt7Var.timeoutNanos(), wt7VarTimeout.timeoutNanos());
            TimeUnit timeUnit = TimeUnit.NANOSECONDS;
            wt7VarTimeout.timeout(jA, timeUnit);
            if (!wt7VarTimeout.hasDeadline()) {
                if (wt7Var.hasDeadline()) {
                    wt7VarTimeout.deadlineNanoTime(wt7Var.deadlineNanoTime());
                }
                try {
                    long jCurrentPartBytesRemaining = MultipartReader.this.currentPartBytesRemaining(j);
                    long j2 = jCurrentPartBytesRemaining == 0 ? -1L : MultipartReader.this.source.read(xs7Var, jCurrentPartBytesRemaining);
                    wt7VarTimeout.timeout(jTimeoutNanos, timeUnit);
                    if (wt7Var.hasDeadline()) {
                        wt7VarTimeout.clearDeadline();
                    }
                    return j2;
                } catch (Throwable th) {
                    wt7VarTimeout.timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
                    if (wt7Var.hasDeadline()) {
                        wt7VarTimeout.clearDeadline();
                    }
                    throw th;
                }
            }
            long jDeadlineNanoTime = wt7VarTimeout.deadlineNanoTime();
            if (wt7Var.hasDeadline()) {
                wt7VarTimeout.deadlineNanoTime(Math.min(wt7VarTimeout.deadlineNanoTime(), wt7Var.deadlineNanoTime()));
            }
            try {
                long jCurrentPartBytesRemaining2 = MultipartReader.this.currentPartBytesRemaining(j);
                long j3 = jCurrentPartBytesRemaining2 == 0 ? -1L : MultipartReader.this.source.read(xs7Var, jCurrentPartBytesRemaining2);
                wt7VarTimeout.timeout(jTimeoutNanos, timeUnit);
                if (wt7Var.hasDeadline()) {
                    wt7VarTimeout.deadlineNanoTime(jDeadlineNanoTime);
                }
                return j3;
            } catch (Throwable th2) {
                wt7VarTimeout.timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
                if (wt7Var.hasDeadline()) {
                    wt7VarTimeout.deadlineNanoTime(jDeadlineNanoTime);
                }
                throw th2;
            }
        }

        @Override // defpackage.vt7
        public wt7 timeout() {
            return this.timeout;
        }
    }

    static {
        lt7.a aVar = lt7.g;
        bt7.a aVar2 = bt7.i;
        afterBoundaryOptions = aVar.c(aVar2.c(IOUtils.LINE_SEPARATOR_WINDOWS), aVar2.c("--"), aVar2.c(StringUtils.SPACE), aVar2.c("\t"));
    }

    public MultipartReader(at7 at7Var, String str) throws IOException {
        im7.e(at7Var, "source");
        im7.e(str, "boundary");
        this.source = at7Var;
        this.boundary = str;
        xs7 xs7Var = new xs7();
        xs7Var.k0("--");
        xs7Var.k0(str);
        this.dashDashBoundary = xs7Var.e0();
        xs7 xs7Var2 = new xs7();
        xs7Var2.k0("\r\n--");
        xs7Var2.k0(str);
        this.crlfDashDashBoundary = xs7Var2.e0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long currentPartBytesRemaining(long j) throws IOException {
        long j2;
        byte[] bArr;
        byte[] bArr2;
        this.source.D0(this.crlfDashDashBoundary.t());
        xs7 xs7VarH = this.source.h();
        bt7 bt7Var = this.crlfDashDashBoundary;
        Objects.requireNonNull(xs7VarH);
        im7.e(bt7Var, "bytes");
        im7.e(bt7Var, "bytes");
        if (!(bt7Var.t() > 0)) {
            throw new IllegalArgumentException("bytes is empty".toString());
        }
        qt7 qt7Var = xs7VarH.e;
        if (qt7Var != null) {
            long j3 = xs7VarH.f;
            if (j3 - 0 < 0) {
                while (j3 > 0) {
                    qt7Var = qt7Var.g;
                    im7.c(qt7Var);
                    j3 -= qt7Var.c - qt7Var.b;
                }
                byte[] bArrX = bt7Var.x();
                byte b = bArrX[0];
                int iT = bt7Var.t();
                byte[] bArr3 = bArrX;
                long j4 = (xs7VarH.f - iT) + 1;
                long j5 = 0;
                loop1: while (j3 < j4) {
                    byte[] bArr4 = qt7Var.a;
                    int iMin = (int) Math.min(qt7Var.c, (qt7Var.b + j4) - j3);
                    int i = (int) ((qt7Var.b + j5) - j3);
                    while (i < iMin) {
                        if (bArr4[i] == b) {
                            bArr2 = bArr3;
                            if (xt7.a(qt7Var, i + 1, bArr2, 1, iT)) {
                                j2 = (i - qt7Var.b) + j3;
                                break loop1;
                            }
                        } else {
                            bArr2 = bArr3;
                        }
                        i++;
                        bArr3 = bArr2;
                    }
                    j5 = (qt7Var.c - qt7Var.b) + j3;
                    qt7Var = qt7Var.f;
                    im7.c(qt7Var);
                    j3 = j5;
                }
                j2 = -1;
            } else {
                long j6 = 0;
                while (true) {
                    long j7 = (qt7Var.c - qt7Var.b) + j6;
                    if (j7 > 0) {
                        break;
                    }
                    qt7Var = qt7Var.f;
                    im7.c(qt7Var);
                    j6 = j7;
                }
                byte[] bArrX2 = bt7Var.x();
                byte b2 = bArrX2[0];
                int iT2 = bt7Var.t();
                long j8 = (xs7VarH.f - iT2) + 1;
                long j9 = 0;
                loop4: while (j6 < j8) {
                    byte[] bArr5 = qt7Var.a;
                    byte[] bArr6 = bArrX2;
                    int iMin2 = (int) Math.min(qt7Var.c, (qt7Var.b + j8) - j6);
                    int i2 = (int) ((qt7Var.b + j9) - j6);
                    while (i2 < iMin2) {
                        if (bArr5[i2] == b2) {
                            bArr = bArr6;
                            if (xt7.a(qt7Var, i2 + 1, bArr, 1, iT2)) {
                                j2 = (i2 - qt7Var.b) + j6;
                                break loop4;
                            }
                        } else {
                            bArr = bArr6;
                        }
                        i2++;
                        bArr6 = bArr;
                    }
                    j9 = j6 + (qt7Var.c - qt7Var.b);
                    qt7Var = qt7Var.f;
                    im7.c(qt7Var);
                    bArrX2 = bArr6;
                    j6 = j9;
                }
                j2 = -1;
            }
        } else {
            j2 = -1;
        }
        return j2 == -1 ? Math.min(j, (this.source.h().f - this.crlfDashDashBoundary.t()) + 1) : Math.min(j, j2);
    }

    public final String boundary() {
        return this.boundary;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.closed) {
            return;
        }
        this.closed = true;
        this.currentPart = null;
        this.source.close();
    }

    public final Part nextPart() throws IOException {
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        if (this.noMoreParts) {
            return null;
        }
        if (this.partCount == 0 && this.source.U(0L, this.dashDashBoundary)) {
            this.source.skip(this.dashDashBoundary.t());
        } else {
            while (true) {
                long jCurrentPartBytesRemaining = currentPartBytesRemaining(PlaybackStateCompat.ACTION_PLAY_FROM_URI);
                if (jCurrentPartBytesRemaining == 0) {
                    break;
                }
                this.source.skip(jCurrentPartBytesRemaining);
            }
            this.source.skip(this.crlfDashDashBoundary.t());
        }
        boolean z = false;
        while (true) {
            int iJ0 = this.source.J0(afterBoundaryOptions);
            if (iJ0 == -1) {
                throw new ProtocolException("unexpected characters after boundary");
            }
            if (iJ0 == 0) {
                this.partCount++;
                Headers headers = new HeadersReader(this.source).readHeaders();
                PartSource partSource = new PartSource();
                this.currentPart = partSource;
                return new Part(headers, n56.p(partSource));
            }
            if (iJ0 == 1) {
                if (z) {
                    throw new ProtocolException("unexpected characters after boundary");
                }
                if (this.partCount == 0) {
                    throw new ProtocolException("expected at least 1 part");
                }
                this.noMoreParts = true;
                return null;
            }
            if (iJ0 == 2 || iJ0 == 3) {
                z = true;
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MultipartReader(ResponseBody responseBody) throws IOException {
        String strParameter;
        im7.e(responseBody, "response");
        at7 at7VarSource = responseBody.source();
        MediaType mediaTypeContentType = responseBody.contentType();
        if (mediaTypeContentType != null && (strParameter = mediaTypeContentType.parameter("boundary")) != null) {
            this(at7VarSource, strParameter);
            return;
        }
        throw new ProtocolException("expected the Content-Type to have a boundary parameter");
    }
}
