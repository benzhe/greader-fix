package defpackage;

import defpackage.a37;
import defpackage.c97;
import defpackage.f37;
import defpackage.i47;
import defpackage.j47;
import defpackage.l37;
import defpackage.q77;
import defpackage.x47;
import defpackage.z57;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public final class t57<ReqT, RespT> extends a37<ReqT, RespT> {
    public static final Logger v = Logger.getLogger(t57.class.getName());
    public static final byte[] w = "gzip".getBytes(Charset.forName("US-ASCII"));
    public static final long x = TimeUnit.SECONDS.toNanos(1);
    public final j47<ReqT, RespT> a;
    public final fb7 b;
    public final Executor c;
    public final q57 d;
    public final l37 e;
    public final boolean f;
    public final x27 g;
    public final boolean h;
    public y57 i;
    public volatile boolean j;
    public boolean k;
    public boolean l;
    public final c m;
    public t57<ReqT, RespT>.d n;
    public final ScheduledExecutorService o;
    public boolean p;
    public volatile ScheduledFuture<?> s;
    public volatile ScheduledFuture<?> t;
    public o37 q = o37.d;
    public h37 r = h37.b;
    public boolean u = false;

    public class b implements z57 {
        public final a37.a<RespT> a;
        public boolean b;

        public final class a extends f67 {
            public final /* synthetic */ i47 f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(db7 db7Var, i47 i47Var) {
                super(t57.this.e);
                this.f = i47Var;
            }

            @Override // defpackage.f67
            public void a() {
                fb7 fb7Var = t57.this.b;
                cb7 cb7Var = eb7.a;
                Objects.requireNonNull(cb7Var);
                Objects.requireNonNull(cb7Var);
                try {
                    b();
                    fb7 fb7Var2 = t57.this.b;
                    Objects.requireNonNull(cb7Var);
                } catch (Throwable th) {
                    fb7 fb7Var3 = t57.this.b;
                    Objects.requireNonNull(eb7.a);
                    throw th;
                }
            }

            public final void b() {
                b bVar = b.this;
                if (bVar.b) {
                    return;
                }
                try {
                    bVar.a.b(this.f);
                } catch (Throwable th) {
                    x47 x47VarH = x47.g.g(th).h("Failed to read headers");
                    t57.this.i.f(x47VarH);
                    b.f(b.this, x47VarH, new i47());
                }
            }
        }

        /* renamed from: t57$b$b, reason: collision with other inner class name */
        public final class C0040b extends f67 {
            public final /* synthetic */ c97.a f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0040b(db7 db7Var, c97.a aVar) {
                super(t57.this.e);
                this.f = aVar;
            }

            @Override // defpackage.f67
            public void a() {
                fb7 fb7Var = t57.this.b;
                cb7 cb7Var = eb7.a;
                Objects.requireNonNull(cb7Var);
                Objects.requireNonNull(cb7Var);
                try {
                    b();
                    fb7 fb7Var2 = t57.this.b;
                    Objects.requireNonNull(cb7Var);
                } catch (Throwable th) {
                    fb7 fb7Var3 = t57.this.b;
                    Objects.requireNonNull(eb7.a);
                    throw th;
                }
            }

            public final void b() throws IOException {
                if (b.this.b) {
                    c97.a aVar = this.f;
                    Logger logger = u67.a;
                    while (true) {
                        InputStream next = aVar.next();
                        if (next == null) {
                            return;
                        } else {
                            u67.b(next);
                        }
                    }
                } else {
                    while (true) {
                        try {
                            InputStream next2 = this.f.next();
                            if (next2 == null) {
                                return;
                            }
                            try {
                                b bVar = b.this;
                                bVar.a.c(t57.this.a.e.a(next2));
                                next2.close();
                            } catch (Throwable th) {
                                u67.b(next2);
                                throw th;
                            }
                        } catch (Throwable th2) {
                            c97.a aVar2 = this.f;
                            Logger logger2 = u67.a;
                            while (true) {
                                InputStream next3 = aVar2.next();
                                if (next3 == null) {
                                    x47 x47VarH = x47.g.g(th2).h("Failed to read message.");
                                    t57.this.i.f(x47VarH);
                                    b.f(b.this, x47VarH, new i47());
                                    return;
                                }
                                u67.b(next3);
                            }
                        }
                    }
                }
            }
        }

        public final class c extends f67 {
            public c(db7 db7Var) {
                super(t57.this.e);
            }

            @Override // defpackage.f67
            public void a() {
                fb7 fb7Var = t57.this.b;
                cb7 cb7Var = eb7.a;
                Objects.requireNonNull(cb7Var);
                Objects.requireNonNull(cb7Var);
                try {
                    b();
                    fb7 fb7Var2 = t57.this.b;
                    Objects.requireNonNull(cb7Var);
                } catch (Throwable th) {
                    fb7 fb7Var3 = t57.this.b;
                    Objects.requireNonNull(eb7.a);
                    throw th;
                }
            }

            public final void b() {
                try {
                    b.this.a.d();
                } catch (Throwable th) {
                    x47 x47VarH = x47.g.g(th).h("Failed to call onReady.");
                    t57.this.i.f(x47VarH);
                    b.f(b.this, x47VarH, new i47());
                }
            }
        }

        public b(a37.a<RespT> aVar) {
            c50.A(aVar, "observer");
            this.a = aVar;
        }

        public static void f(b bVar, x47 x47Var, i47 i47Var) {
            bVar.b = true;
            t57.this.j = true;
            try {
                t57 t57Var = t57.this;
                a37.a<RespT> aVar = bVar.a;
                if (!t57Var.u) {
                    t57Var.u = true;
                    aVar.a(x47Var, i47Var);
                }
            } finally {
                t57.this.i();
                t57.this.d.a(x47Var.f());
            }
        }

        @Override // defpackage.c97
        public void a(c97.a aVar) {
            fb7 fb7Var = t57.this.b;
            cb7 cb7Var = eb7.a;
            Objects.requireNonNull(cb7Var);
            eb7.a();
            try {
                t57.this.c.execute(new C0040b(cb7.b, aVar));
                fb7 fb7Var2 = t57.this.b;
                Objects.requireNonNull(cb7Var);
            } catch (Throwable th) {
                fb7 fb7Var3 = t57.this.b;
                Objects.requireNonNull(eb7.a);
                throw th;
            }
        }

        @Override // defpackage.z57
        public void b(x47 x47Var, i47 i47Var) {
            fb7 fb7Var = t57.this.b;
            cb7 cb7Var = eb7.a;
            Objects.requireNonNull(cb7Var);
            try {
                g(x47Var, i47Var);
                fb7 fb7Var2 = t57.this.b;
                Objects.requireNonNull(cb7Var);
            } catch (Throwable th) {
                fb7 fb7Var3 = t57.this.b;
                Objects.requireNonNull(eb7.a);
                throw th;
            }
        }

        @Override // defpackage.z57
        public void c(i47 i47Var) {
            fb7 fb7Var = t57.this.b;
            cb7 cb7Var = eb7.a;
            Objects.requireNonNull(cb7Var);
            eb7.a();
            try {
                t57.this.c.execute(new a(cb7.b, i47Var));
                fb7 fb7Var2 = t57.this.b;
                Objects.requireNonNull(cb7Var);
            } catch (Throwable th) {
                fb7 fb7Var3 = t57.this.b;
                Objects.requireNonNull(eb7.a);
                throw th;
            }
        }

        @Override // defpackage.c97
        public void d() {
            j47.d dVar = t57.this.a.a;
            Objects.requireNonNull(dVar);
            if (dVar == j47.d.UNARY || dVar == j47.d.SERVER_STREAMING) {
                return;
            }
            fb7 fb7Var = t57.this.b;
            Objects.requireNonNull(eb7.a);
            eb7.a();
            try {
                t57.this.c.execute(new c(cb7.b));
                fb7 fb7Var2 = t57.this.b;
            } catch (Throwable th) {
                fb7 fb7Var3 = t57.this.b;
                Objects.requireNonNull(eb7.a);
                throw th;
            }
        }

        @Override // defpackage.z57
        public void e(x47 x47Var, z57.a aVar, i47 i47Var) {
            fb7 fb7Var = t57.this.b;
            cb7 cb7Var = eb7.a;
            Objects.requireNonNull(cb7Var);
            try {
                g(x47Var, i47Var);
                fb7 fb7Var2 = t57.this.b;
                Objects.requireNonNull(cb7Var);
            } catch (Throwable th) {
                fb7 fb7Var3 = t57.this.b;
                Objects.requireNonNull(eb7.a);
                throw th;
            }
        }

        public final void g(x47 x47Var, i47 i47Var) {
            m37 m37VarH = t57.this.h();
            if (x47Var.a == x47.b.CANCELLED && m37VarH != null && m37VarH.l()) {
                c77 c77Var = new c77();
                t57.this.i.h(c77Var);
                x47Var = x47.i.b("ClientCall was cancelled at or after deadline. " + c77Var);
                i47Var = new i47();
            }
            eb7.a();
            t57.this.c.execute(new x57(this, cb7.b, x47Var, i47Var));
        }
    }

    public interface c {
    }

    public final class d implements l37.b {
        public a37.a<RespT> a;

        public d(a37.a aVar, a aVar2) {
            this.a = aVar;
        }

        @Override // l37.b
        public void a(l37 l37Var) {
            if (l37Var.k() == null || !l37Var.k().l()) {
                t57.this.i.f(n56.k2(l37Var));
            } else {
                t57.f(t57.this, n56.k2(l37Var), this.a);
            }
        }
    }

    public t57(j47<ReqT, RespT> j47Var, Executor executor, x27 x27Var, c cVar, ScheduledExecutorService scheduledExecutorService, q57 q57Var, boolean z) {
        this.a = j47Var;
        String str = j47Var.b;
        System.identityHashCode(this);
        Objects.requireNonNull(eb7.a);
        this.b = cb7.a;
        this.c = executor == he5.INSTANCE ? new t87() : new u87(executor);
        this.d = q57Var;
        this.e = l37.g();
        j47.d dVar = j47Var.a;
        this.f = dVar == j47.d.UNARY || dVar == j47.d.SERVER_STREAMING;
        this.g = x27Var;
        this.m = cVar;
        this.o = scheduledExecutorService;
        this.h = z;
    }

    public static void f(t57 t57Var, x47 x47Var, a37.a aVar) {
        if (t57Var.t != null) {
            return;
        }
        t57Var.t = t57Var.o.schedule(new o77(new w57(t57Var, x47Var)), x, TimeUnit.NANOSECONDS);
        t57Var.c.execute(new u57(t57Var, aVar, x47Var));
    }

    @Override // defpackage.a37
    public void a(String str, Throwable th) {
        cb7 cb7Var = eb7.a;
        Objects.requireNonNull(cb7Var);
        try {
            g(str, th);
            Objects.requireNonNull(cb7Var);
        } catch (Throwable th2) {
            Objects.requireNonNull(eb7.a);
            throw th2;
        }
    }

    @Override // defpackage.a37
    public void b() {
        cb7 cb7Var = eb7.a;
        Objects.requireNonNull(cb7Var);
        try {
            c50.G(this.i != null, "Not started");
            c50.G(!this.k, "call was cancelled");
            c50.G(!this.l, "call already half-closed");
            this.l = true;
            this.i.i();
            Objects.requireNonNull(cb7Var);
        } catch (Throwable th) {
            Objects.requireNonNull(eb7.a);
            throw th;
        }
    }

    @Override // defpackage.a37
    public void c(int i) {
        cb7 cb7Var = eb7.a;
        Objects.requireNonNull(cb7Var);
        try {
            boolean z = true;
            c50.G(this.i != null, "Not started");
            if (i < 0) {
                z = false;
            }
            c50.t(z, "Number requested must be non-negative");
            this.i.b(i);
            Objects.requireNonNull(cb7Var);
        } catch (Throwable th) {
            Objects.requireNonNull(eb7.a);
            throw th;
        }
    }

    @Override // defpackage.a37
    public void d(ReqT reqt) {
        cb7 cb7Var = eb7.a;
        Objects.requireNonNull(cb7Var);
        try {
            j(reqt);
            Objects.requireNonNull(cb7Var);
        } catch (Throwable th) {
            Objects.requireNonNull(eb7.a);
            throw th;
        }
    }

    @Override // defpackage.a37
    public void e(a37.a<RespT> aVar, i47 i47Var) {
        cb7 cb7Var = eb7.a;
        Objects.requireNonNull(cb7Var);
        try {
            k(aVar, i47Var);
            Objects.requireNonNull(cb7Var);
        } catch (Throwable th) {
            Objects.requireNonNull(eb7.a);
            throw th;
        }
    }

    public final void g(String str, Throwable th) {
        if (str == null && th == null) {
            th = new CancellationException("Cancelled without a message or cause");
            v.log(Level.WARNING, "Cancelling without a message or cause is suboptimal", th);
        }
        if (this.k) {
            return;
        }
        this.k = true;
        try {
            if (this.i != null) {
                x47 x47Var = x47.g;
                x47 x47VarH = str != null ? x47Var.h(str) : x47Var.h("Call cancelled without message");
                if (th != null) {
                    x47VarH = x47VarH.g(th);
                }
                this.i.f(x47VarH);
            }
        } finally {
            i();
        }
    }

    public final m37 h() {
        m37 m37Var = this.g.a;
        m37 m37VarK = this.e.k();
        if (m37Var != null) {
            if (m37VarK == null) {
                return m37Var;
            }
            m37Var.i(m37VarK);
            m37Var.i(m37VarK);
            if (m37Var.f - m37VarK.f < 0) {
                return m37Var;
            }
        }
        return m37VarK;
    }

    public final void i() {
        this.e.q(this.n);
        ScheduledFuture<?> scheduledFuture = this.t;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        ScheduledFuture<?> scheduledFuture2 = this.s;
        if (scheduledFuture2 != null) {
            scheduledFuture2.cancel(false);
        }
    }

    public final void j(ReqT reqt) {
        c50.G(this.i != null, "Not started");
        c50.G(!this.k, "call was cancelled");
        c50.G(!this.l, "call was half-closed");
        try {
            y57 y57Var = this.i;
            if (y57Var instanceof r87) {
                ((r87) y57Var).y(reqt);
            } else {
                y57Var.l(this.a.d.b(reqt));
            }
            if (this.f) {
                return;
            }
            this.i.flush();
        } catch (Error e) {
            this.i.f(x47.g.h("Client sendMessage() failed with Error"));
            throw e;
        } catch (RuntimeException e2) {
            this.i.f(x47.g.g(e2).h("Failed to stream message"));
        }
    }

    public final void k(a37.a<RespT> aVar, i47 i47Var) {
        g37 g37Var;
        c50.G(this.i == null, "Already started");
        c50.G(!this.k, "call was cancelled");
        c50.A(aVar, "observer");
        c50.A(i47Var, "headers");
        if (this.e.m()) {
            this.i = g87.a;
            this.c.execute(new u57(this, aVar, n56.k2(this.e)));
            return;
        }
        String str = this.g.e;
        if (str != null) {
            g37Var = this.r.a.get(str);
            if (g37Var == null) {
                this.i = g87.a;
                this.c.execute(new u57(this, aVar, x47.m.h(String.format("Unable to find compressor by name %s", str))));
                return;
            }
        } else {
            g37Var = f37.b.a;
        }
        o37 o37Var = this.q;
        boolean z = this.p;
        i47.f<String> fVar = u67.c;
        i47Var.b(fVar);
        if (g37Var != f37.b.a) {
            i47Var.h(fVar, g37Var.a());
        }
        i47.f<byte[]> fVar2 = u67.d;
        i47Var.b(fVar2);
        byte[] bArr = o37Var.b;
        if (bArr.length != 0) {
            i47Var.h(fVar2, bArr);
        }
        i47Var.b(u67.e);
        i47.f<byte[]> fVar3 = u67.f;
        i47Var.b(fVar3);
        if (z) {
            i47Var.h(fVar3, w);
        }
        m37 m37VarH = h();
        if (m37VarH != null && m37VarH.l()) {
            this.i = new m67(x47.i.h("ClientCall started after deadline exceeded: " + m37VarH));
        } else {
            m37 m37VarK = this.e.k();
            m37 m37Var = this.g.a;
            Logger logger = v;
            if (logger.isLoggable(Level.FINE) && m37VarH != null && m37VarH.equals(m37VarK)) {
                TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                StringBuilder sb = new StringBuilder(String.format("Call timeout set to '%d' ns, due to context deadline.", Long.valueOf(Math.max(0L, m37VarH.t(timeUnit)))));
                if (m37Var == null) {
                    sb.append(" Explicit call timeout was not set.");
                } else {
                    sb.append(String.format(" Explicit call timeout was '%d' ns.", Long.valueOf(m37Var.t(timeUnit))));
                }
                logger.fine(sb.toString());
            }
            if (this.h) {
                c cVar = this.m;
                j47<ReqT, RespT> j47Var = this.a;
                x27 x27Var = this.g;
                l37 l37Var = this.e;
                q77.h hVar = (q77.h) cVar;
                Objects.requireNonNull(q77.this);
                c50.G(false, "retry should be enabled");
                this.i = new v77(hVar, j47Var, i47Var, x27Var, q77.this.Q.b.c, l37Var);
            } else {
                a67 a67VarA = ((q77.h) this.m).a(new l87(this.a, i47Var, this.g));
                l37 l37VarB = this.e.b();
                try {
                    this.i = a67VarA.g(this.a, i47Var, this.g);
                } finally {
                    this.e.i(l37VarB);
                }
            }
        }
        String str2 = this.g.c;
        if (str2 != null) {
            this.i.g(str2);
        }
        Integer num = this.g.i;
        if (num != null) {
            this.i.c(num.intValue());
        }
        Integer num2 = this.g.j;
        if (num2 != null) {
            this.i.d(num2.intValue());
        }
        if (m37VarH != null) {
            this.i.j(m37VarH);
        }
        this.i.a(g37Var);
        boolean z2 = this.p;
        if (z2) {
            this.i.n(z2);
        }
        this.i.e(this.q);
        q57 q57Var = this.d;
        q57Var.b.a(1L);
        q57Var.a.a();
        this.n = new d(aVar, null);
        this.i.k(new b(aVar));
        this.e.a(this.n, he5.INSTANCE);
        if (m37VarH != null && !m37VarH.equals(this.e.k()) && this.o != null && !(this.i instanceof m67)) {
            TimeUnit timeUnit2 = TimeUnit.NANOSECONDS;
            long jT = m37VarH.t(timeUnit2);
            this.s = this.o.schedule(new o77(new v57(this, jT, aVar)), jT, timeUnit2);
        }
        if (this.j) {
            i();
        }
    }

    public String toString() {
        nd5 nd5VarK0 = c50.K0(this);
        nd5VarK0.d("method", this.a);
        return nd5VarK0.toString();
    }
}
