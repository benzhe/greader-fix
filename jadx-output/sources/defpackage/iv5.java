package defpackage;

import defpackage.ex5;
import defpackage.i47;
import defpackage.iv5;
import defpackage.qx5;
import defpackage.uw5;
import defpackage.x47;
import java.net.ConnectException;
import java.net.UnknownHostException;
import java.util.Date;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLHandshakeException;

/* JADX WARN: Unexpected interfaces in signature: [java.lang.Object<CallbackT>] */
/* loaded from: classes.dex */
public abstract class iv5<ReqT, RespT, CallbackT extends uw5> {
    public static final long l;
    public static final long m;
    public static final long n;
    public static final long o;
    public ex5.b a;
    public final aw5 b;
    public final j47<ReqT, RespT> c;
    public final ex5 e;
    public final ex5.d f;
    public a37<ReqT, RespT> i;
    public final px5 j;
    public final CallbackT k;
    public tw5 g = tw5.Initial;
    public long h = 0;
    public final iv5<ReqT, RespT, CallbackT>.b d = new b();

    public class a {
        public final long a;

        public a(long j) {
            this.a = j;
        }

        public void a(Runnable runnable) {
            iv5.this.e.d();
            iv5 iv5Var = iv5.this;
            if (iv5Var.h == this.a) {
                runnable.run();
            } else {
                qx5.a(qx5.a.DEBUG, iv5Var.getClass().getSimpleName(), "stream callback skipped by CloseGuardedRunner.", new Object[0]);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            iv5 iv5Var = iv5.this;
            if (iv5Var.c()) {
                iv5Var.a(tw5.Initial, x47.f);
            }
        }
    }

    public class c implements kw5<RespT> {
        public final iv5<ReqT, RespT, CallbackT>.a a;

        public c(iv5<ReqT, RespT, CallbackT>.a aVar) {
            this.a = aVar;
        }
    }

    static {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        l = timeUnit.toMillis(1L);
        TimeUnit timeUnit2 = TimeUnit.MINUTES;
        m = timeUnit2.toMillis(1L);
        n = timeUnit2.toMillis(1L);
        o = timeUnit.toMillis(10L);
    }

    public iv5(aw5 aw5Var, j47<ReqT, RespT> j47Var, ex5 ex5Var, ex5.d dVar, ex5.d dVar2, CallbackT callbackt) {
        this.b = aw5Var;
        this.c = j47Var;
        this.e = ex5Var;
        this.f = dVar2;
        this.k = callbackt;
        this.j = new px5(ex5Var, dVar, l, 1.5d, m);
    }

    public final void a(tw5 tw5Var, x47 x47Var) {
        qx5.a aVar = qx5.a.DEBUG;
        bx5.c(d(), "Only started streams should be closed.", new Object[0]);
        tw5 tw5Var2 = tw5.Error;
        bx5.c(tw5Var == tw5Var2 || x47Var.equals(x47.f), "Can't provide an error when not in an error state.", new Object[0]);
        this.e.d();
        Set<String> set = qv5.d;
        x47.b bVar = x47Var.a;
        Throwable th = x47Var.c;
        if (th instanceof SSLHandshakeException) {
            th.getMessage().contains("no ciphers available");
        }
        ex5.b bVar2 = this.a;
        if (bVar2 != null) {
            bVar2.a();
            this.a = null;
        }
        px5 px5Var = this.j;
        ex5.b bVar3 = px5Var.h;
        if (bVar3 != null) {
            bVar3.a();
            px5Var.h = null;
        }
        this.h++;
        x47.b bVar4 = x47Var.a;
        if (bVar4 == x47.b.OK) {
            this.j.f = 0L;
        } else if (bVar4 == x47.b.RESOURCE_EXHAUSTED) {
            qx5.a(aVar, getClass().getSimpleName(), "(%x) Using maximum backoff delay to prevent overloading the backend.", Integer.valueOf(System.identityHashCode(this)));
            px5 px5Var2 = this.j;
            px5Var2.f = px5Var2.e;
        } else if (bVar4 == x47.b.UNAUTHENTICATED) {
            this.b.b.b();
        } else if (bVar4 == x47.b.UNAVAILABLE) {
            Throwable th2 = x47Var.c;
            if ((th2 instanceof UnknownHostException) || (th2 instanceof ConnectException)) {
                this.j.e = o;
            }
        }
        if (tw5Var != tw5Var2) {
            qx5.a(aVar, getClass().getSimpleName(), "(%x) Performing stream teardown", Integer.valueOf(System.identityHashCode(this)));
            h();
        }
        if (this.i != null) {
            if (x47Var.f()) {
                qx5.a(aVar, getClass().getSimpleName(), "(%x) Closing stream client-side", Integer.valueOf(System.identityHashCode(this)));
                this.i.b();
            }
            this.i = null;
        }
        this.g = tw5Var;
        this.k.e(x47Var);
    }

    public void b() {
        bx5.c(!d(), "Can only inhibit backoff after in a stopped state", new Object[0]);
        this.e.d();
        this.g = tw5.Initial;
        this.j.f = 0L;
    }

    public boolean c() {
        this.e.d();
        return this.g == tw5.Open;
    }

    public boolean d() {
        this.e.d();
        tw5 tw5Var = this.g;
        return tw5Var == tw5.Starting || tw5Var == tw5.Open || tw5Var == tw5.Backoff;
    }

    public void e() {
        if (c() && this.a == null) {
            this.a = this.e.b(this.f, n, this.d);
        }
    }

    public abstract void f(RespT respt);

    public void g() {
        this.e.d();
        bx5.c(this.i == null, "Last call still set", new Object[0]);
        bx5.c(this.a == null, "Idle timer still set", new Object[0]);
        tw5 tw5Var = this.g;
        tw5 tw5Var2 = tw5.Error;
        if (tw5Var != tw5Var2) {
            bx5.c(tw5Var == tw5.Initial, "Already started", new Object[0]);
            final c cVar = new c(new a(this.h));
            final aw5 aw5Var = this.b;
            final j47<ReqT, RespT> j47Var = this.c;
            Objects.requireNonNull(aw5Var);
            final a37[] a37VarArr = {null};
            final iw5 iw5Var = aw5Var.c;
            e45<TContinuationResult> e45VarJ = iw5Var.a.j(iw5Var.b.a, new w35(iw5Var, j47Var) { // from class: bw5
                public final iw5 a;
                public final j47 b;

                {
                    this.a = iw5Var;
                    this.b = j47Var;
                }

                @Override // defpackage.w35
                public Object a(e45 e45Var) {
                    iw5 iw5Var2 = this.a;
                    return c50.X(((f47) e45Var.l()).h(this.b, iw5Var2.c));
                }
            });
            e45VarJ.c(aw5Var.a.a, new z35(aw5Var, a37VarArr, cVar) { // from class: wv5
                public final aw5 a;
                public final a37[] b;
                public final kw5 c;

                {
                    this.a = aw5Var;
                    this.b = a37VarArr;
                    this.c = cVar;
                }

                @Override // defpackage.z35
                public void a(e45 e45Var) {
                    aw5 aw5Var2 = this.a;
                    a37[] a37VarArr2 = this.b;
                    kw5 kw5Var = this.c;
                    i47.f<String> fVar = aw5.f;
                    a37VarArr2[0] = (a37) e45Var.l();
                    a37 a37Var = a37VarArr2[0];
                    xv5 xv5Var = new xv5(aw5Var2, kw5Var, a37VarArr2);
                    Objects.requireNonNull(aw5Var2);
                    i47 i47Var = new i47();
                    i47Var.h(aw5.f, String.format("%s fire/%s grpc/", aw5.h, "22.0.1"));
                    i47Var.h(aw5.g, aw5Var2.d);
                    jw5 jw5Var = aw5Var2.e;
                    if (jw5Var != null) {
                        sv5 sv5Var = (sv5) jw5Var;
                        if (sv5Var.a.get() != null && sv5Var.b.get() != null) {
                            int i = sv5Var.a.get().a("fire-fst").e;
                            if (i != 0) {
                                i47Var.h(sv5.d, Integer.toString(i));
                            }
                            i47Var.h(sv5.e, sv5Var.b.get().a());
                            ve5 ve5Var = sv5Var.c;
                            if (ve5Var != null) {
                                String str = ve5Var.b;
                                if (str.length() != 0) {
                                    i47Var.h(sv5.f, str);
                                }
                            }
                        }
                    }
                    a37Var.e(xv5Var, i47Var);
                    iv5.c cVar2 = (iv5.c) kw5Var;
                    cVar2.a.a(new Runnable(cVar2) { // from class: lv5
                        public final iv5.c e;

                        {
                            this.e = cVar2;
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            iv5.c cVar3 = this.e;
                            qx5.a(qx5.a.DEBUG, iv5.this.getClass().getSimpleName(), "(%x) Stream is open", Integer.valueOf(System.identityHashCode(iv5.this)));
                            iv5 iv5Var = iv5.this;
                            iv5Var.g = tw5.Open;
                            iv5Var.k.b();
                        }
                    });
                    a37VarArr2[0].c(1);
                }
            });
            this.i = new zv5(aw5Var, a37VarArr, e45VarJ);
            this.g = tw5.Starting;
            return;
        }
        bx5.c(tw5Var == tw5Var2, "Should only perform backoff in an error state", new Object[0]);
        this.g = tw5.Backoff;
        final px5 px5Var = this.j;
        final Runnable runnable = new Runnable(this) { // from class: hv5
            public final iv5 e;

            {
                this.e = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                iv5 iv5Var = this.e;
                tw5 tw5Var3 = iv5Var.g;
                bx5.c(tw5Var3 == tw5.Backoff, "State should still be backoff but was %s", tw5Var3);
                iv5Var.g = tw5.Initial;
                iv5Var.g();
                bx5.c(iv5Var.d(), "Stream should have started", new Object[0]);
            }
        };
        ex5.b bVar = px5Var.h;
        if (bVar != null) {
            bVar.a();
            px5Var.h = null;
        }
        long jRandom = px5Var.f + ((long) ((Math.random() - 0.5d) * px5Var.f));
        long jMax = Math.max(0L, new Date().getTime() - px5Var.g);
        long jMax2 = Math.max(0L, jRandom - jMax);
        if (px5Var.f > 0) {
            qx5.a(qx5.a.DEBUG, px5.class.getSimpleName(), "Backing off for %d ms (base delay: %d ms, delay with jitter: %d ms, last attempt: %d ms ago)", Long.valueOf(jMax2), Long.valueOf(px5Var.f), Long.valueOf(jRandom), Long.valueOf(jMax));
        }
        px5Var.h = px5Var.a.b(px5Var.b, jMax2, new Runnable(px5Var, runnable) { // from class: ox5
            public final px5 e;
            public final Runnable f;

            {
                this.e = px5Var;
                this.f = runnable;
            }

            @Override // java.lang.Runnable
            public void run() {
                px5 px5Var2 = this.e;
                Runnable runnable2 = this.f;
                px5Var2.g = new Date().getTime();
                runnable2.run();
            }
        });
        long j = (long) (px5Var.f * 1.5d);
        px5Var.f = j;
        long j2 = px5Var.c;
        if (j < j2) {
            px5Var.f = j2;
        } else {
            long j3 = px5Var.e;
            if (j > j3) {
                px5Var.f = j3;
            }
        }
        px5Var.e = px5Var.d;
    }

    public void h() {
    }

    public void i(ReqT reqt) {
        this.e.d();
        qx5.a(qx5.a.DEBUG, getClass().getSimpleName(), "(%x) Stream sending: %s", Integer.valueOf(System.identityHashCode(this)), reqt);
        ex5.b bVar = this.a;
        if (bVar != null) {
            bVar.a();
            this.a = null;
        }
        this.i.d(reqt);
    }
}
