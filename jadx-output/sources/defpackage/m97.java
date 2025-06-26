package defpackage;

import defpackage.b67;
import defpackage.g97;
import defpackage.k57;
import defpackage.x87;
import defpackage.z97;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.security.GeneralSecurityException;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import k57.b;
import okhttp3.internal.http2.Settings;

/* loaded from: classes2.dex */
public class m97 extends f57<m97> {
    public static final z97 M;
    public static final long N;
    public static final x87.c<Executor> O;
    public Executor D;
    public ScheduledExecutorService E;
    public SSLSocketFactory F;
    public z97 G;
    public b H;
    public long I;
    public long J;
    public int K;
    public int L;

    public class a implements x87.c<Executor> {
        @Override // x87.c
        public Executor a() {
            return Executors.newCachedThreadPool(u67.d("grpc-okhttp-%d", true));
        }

        @Override // x87.c
        public void b(Executor executor) {
            ((ExecutorService) executor).shutdown();
        }
    }

    public enum b {
        TLS,
        PLAINTEXT
    }

    public static final class c implements b67 {
        public final Executor e;
        public final boolean f;
        public final boolean g;
        public final g97.b h;
        public final SocketFactory i;
        public final SSLSocketFactory j;
        public final HostnameVerifier k;
        public final z97 l;
        public final int m;
        public final boolean n;
        public final k57 o;
        public final long p;
        public final int q;
        public final boolean r;
        public final int s;
        public final ScheduledExecutorService t;
        public final boolean u;
        public boolean v;

        public class a implements Runnable {
            public final /* synthetic */ k57.b e;

            public a(c cVar, k57.b bVar) {
                this.e = bVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                k57.b bVar = this.e;
                long j = bVar.a;
                long jMax = Math.max(2 * j, j);
                if (k57.this.b.compareAndSet(bVar.a, jMax)) {
                    k57.c.log(Level.WARNING, "Increased {0} to {1}", new Object[]{k57.this.a, Long.valueOf(jMax)});
                }
            }
        }

        public c(Executor executor, ScheduledExecutorService scheduledExecutorService, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, z97 z97Var, int i, boolean z, long j, long j2, int i2, boolean z2, int i3, g97.b bVar, boolean z3, a aVar) {
            boolean z4 = scheduledExecutorService == null;
            this.g = z4;
            this.t = z4 ? (ScheduledExecutorService) x87.a(u67.n) : scheduledExecutorService;
            this.i = null;
            this.j = sSLSocketFactory;
            this.k = null;
            this.l = z97Var;
            this.m = i;
            this.n = z;
            this.o = new k57("keepalive time nanos", j);
            this.p = j2;
            this.q = i2;
            this.r = z2;
            this.s = i3;
            this.u = z3;
            boolean z5 = executor == null;
            this.f = z5;
            c50.A(bVar, "transportTracerFactory");
            this.h = bVar;
            if (z5) {
                this.e = (Executor) x87.a(m97.O);
            } else {
                this.e = executor;
            }
        }

        @Override // defpackage.b67
        public d67 Y(SocketAddress socketAddress, b67.a aVar, z27 z27Var) {
            if (this.v) {
                throw new IllegalStateException("The transport factory is closed.");
            }
            k57 k57Var = this.o;
            k57.b bVar = k57Var.new b(k57Var.b.get(), null);
            a aVar2 = new a(this, bVar);
            String str = aVar.a;
            String str2 = aVar.c;
            v27 v27Var = aVar.b;
            Executor executor = this.e;
            SocketFactory socketFactory = this.i;
            SSLSocketFactory sSLSocketFactory = this.j;
            HostnameVerifier hostnameVerifier = this.k;
            z97 z97Var = this.l;
            int i = this.m;
            int i2 = this.q;
            u37 u37Var = aVar.d;
            int i3 = this.s;
            g97.b bVar2 = this.h;
            Objects.requireNonNull(bVar2);
            p97 p97Var = new p97((InetSocketAddress) socketAddress, str, str2, v27Var, executor, socketFactory, sSLSocketFactory, hostnameVerifier, z97Var, i, i2, u37Var, aVar2, i3, new g97(bVar2.a, null), this.u);
            if (this.n) {
                long j = bVar.a;
                long j2 = this.p;
                boolean z = this.r;
                p97Var.G = true;
                p97Var.H = j;
                p97Var.I = j2;
                p97Var.J = z;
            }
            return p97Var;
        }

        @Override // defpackage.b67, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.v) {
                return;
            }
            this.v = true;
            if (this.g) {
                x87.b(u67.n, this.t);
            }
            if (this.f) {
                x87.b(m97.O, this.e);
            }
        }

        @Override // defpackage.b67
        public ScheduledExecutorService x0() {
            return this.t;
        }
    }

    static {
        z97.b bVar = new z97.b(z97.f);
        bVar.b(y97.TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384, y97.TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256, y97.TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384, y97.TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256, y97.TLS_DHE_RSA_WITH_AES_128_GCM_SHA256, y97.TLS_DHE_DSS_WITH_AES_128_GCM_SHA256, y97.TLS_DHE_RSA_WITH_AES_256_GCM_SHA384, y97.TLS_DHE_DSS_WITH_AES_256_GCM_SHA384);
        bVar.d(ia7.TLS_1_2);
        bVar.c(true);
        M = bVar.a();
        N = TimeUnit.DAYS.toNanos(1000L);
        O = new a();
    }

    public m97(String str) {
        super(str);
        this.G = M;
        this.H = b.TLS;
        this.I = Long.MAX_VALUE;
        this.J = u67.j;
        this.K = Settings.DEFAULT_INITIAL_WINDOW_SIZE;
        this.L = Integer.MAX_VALUE;
    }

    public static m97 forTarget(String str) {
        return new m97(str);
    }

    @Override // defpackage.g47
    public g47 b(long j, TimeUnit timeUnit) {
        c50.t(j > 0, "keepalive time must be positive");
        long nanos = timeUnit.toNanos(j);
        this.I = nanos;
        long jMax = Math.max(nanos, n77.l);
        this.I = jMax;
        if (jMax >= N) {
            this.I = Long.MAX_VALUE;
        }
        return this;
    }

    @Override // defpackage.g47
    public g47 c() {
        this.H = b.PLAINTEXT;
        return this;
    }

    @Override // defpackage.f57
    public final b67 d() {
        SSLSocketFactory sSLSocketFactory;
        boolean z = this.I != Long.MAX_VALUE;
        Executor executor = this.D;
        ScheduledExecutorService scheduledExecutorService = this.E;
        int iOrdinal = this.H.ordinal();
        if (iOrdinal == 0) {
            try {
                if (this.F == null) {
                    this.F = SSLContext.getInstance("Default", ga7.d.a).getSocketFactory();
                }
                sSLSocketFactory = this.F;
            } catch (GeneralSecurityException e) {
                throw new RuntimeException("TLS Provider failure", e);
            }
        } else {
            if (iOrdinal != 1) {
                StringBuilder sbZ = jo.z("Unknown negotiation type: ");
                sbZ.append(this.H);
                throw new RuntimeException(sbZ.toString());
            }
            sSLSocketFactory = null;
        }
        return new c(executor, scheduledExecutorService, null, sSLSocketFactory, null, this.G, this.s, z, this.I, this.J, this.K, false, this.L, this.r, false, null);
    }

    @Override // defpackage.f57
    public int e() {
        int iOrdinal = this.H.ordinal();
        if (iOrdinal == 0) {
            return 443;
        }
        if (iOrdinal == 1) {
            return 80;
        }
        throw new AssertionError(this.H + " not handled");
    }

    public final m97 scheduledExecutorService(ScheduledExecutorService scheduledExecutorService) {
        c50.A(scheduledExecutorService, "scheduledExecutorService");
        this.E = scheduledExecutorService;
        return this;
    }

    public final m97 sslSocketFactory(SSLSocketFactory sSLSocketFactory) {
        this.F = sSLSocketFactory;
        this.H = b.TLS;
        return this;
    }

    public final m97 transportExecutor(Executor executor) {
        this.D = executor;
        return this;
    }
}
