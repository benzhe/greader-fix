package defpackage;

import defpackage.b57;
import defpackage.b67;
import defpackage.c87;
import defpackage.l67;
import defpackage.n57;
import defpackage.z27;
import defpackage.z57;
import java.net.SocketAddress;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public final class d77 implements x37<Object>, f97 {
    public final y37 a;
    public final String b;
    public final String c;
    public final n57.a d;
    public final e e;
    public final b67 f;
    public final ScheduledExecutorService g;
    public final v37 h;
    public final q57 i;
    public final z27 j;
    public final b57 k;
    public final f l;
    public volatile List<q37> m;
    public n57 n;
    public final pd5 o;
    public b57.c p;
    public d67 s;
    public volatile c87 t;
    public x47 v;
    public final Collection<d67> q = new ArrayList();
    public final b77<d67> r = new a();
    public volatile j37 u = j37.a(i37.IDLE);

    public class a extends b77<d67> {
        public a() {
        }

        @Override // defpackage.b77
        public void a() {
            d77 d77Var = d77.this;
            q77.this.X.c(d77Var, true);
        }

        @Override // defpackage.b77
        public void b() {
            d77 d77Var = d77.this;
            q77.this.X.c(d77Var, false);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (d77.this.u.a == i37.IDLE) {
                d77.this.j.a(z27.a.INFO, "CONNECTING as requested");
                d77.h(d77.this, i37.CONNECTING);
                d77.i(d77.this);
            }
        }
    }

    public class c implements Runnable {
        public final /* synthetic */ x47 e;

        public c(x47 x47Var) {
            this.e = x47Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            i37 i37Var = d77.this.u.a;
            i37 i37Var2 = i37.SHUTDOWN;
            if (i37Var == i37Var2) {
                return;
            }
            d77 d77Var = d77.this;
            d77Var.v = this.e;
            c87 c87Var = d77Var.t;
            d77 d77Var2 = d77.this;
            d67 d67Var = d77Var2.s;
            d77Var2.t = null;
            d77 d77Var3 = d77.this;
            d77Var3.s = null;
            d77Var3.k.d();
            d77Var3.j(j37.a(i37Var2));
            d77.this.l.b();
            if (d77.this.q.isEmpty()) {
                d77 d77Var4 = d77.this;
                b57 b57Var = d77Var4.k;
                h77 h77Var = new h77(d77Var4);
                Queue<Runnable> queue = b57Var.f;
                c50.A(h77Var, "runnable is null");
                queue.add(h77Var);
                b57Var.a();
            }
            d77 d77Var5 = d77.this;
            d77Var5.k.d();
            b57.c cVar = d77Var5.p;
            if (cVar != null) {
                cVar.a();
                d77Var5.p = null;
                d77Var5.n = null;
            }
            if (c87Var != null) {
                c87Var.b(this.e);
            }
            if (d67Var != null) {
                d67Var.b(this.e);
            }
        }
    }

    public static final class d extends q67 {
        public final d67 a;
        public final q57 b;

        public class a extends o67 {
            public final /* synthetic */ y57 a;

            /* renamed from: d77$d$a$a, reason: collision with other inner class name */
            public class C0011a extends p67 {
                public final /* synthetic */ z57 a;

                public C0011a(z57 z57Var) {
                    this.a = z57Var;
                }

                @Override // defpackage.z57
                public void b(x47 x47Var, i47 i47Var) {
                    d.this.b.a(x47Var.f());
                    this.a.b(x47Var, i47Var);
                }

                @Override // defpackage.z57
                public void e(x47 x47Var, z57.a aVar, i47 i47Var) {
                    d.this.b.a(x47Var.f());
                    this.a.e(x47Var, aVar, i47Var);
                }
            }

            public a(y57 y57Var) {
                this.a = y57Var;
            }

            @Override // defpackage.y57
            public void k(z57 z57Var) {
                q57 q57Var = d.this.b;
                q57Var.b.a(1L);
                q57Var.a.a();
                this.a.k(new C0011a(z57Var));
            }
        }

        public d(d67 d67Var, q57 q57Var, a aVar) {
            this.a = d67Var;
            this.b = q57Var;
        }

        @Override // defpackage.q67
        public d67 a() {
            return this.a;
        }

        @Override // defpackage.a67
        public y57 g(j47<?, ?> j47Var, i47 i47Var, x27 x27Var) {
            return new a(a().g(j47Var, i47Var, x27Var));
        }
    }

    public static abstract class e {
    }

    public static final class f {
        public List<q37> a;
        public int b;
        public int c;

        public f(List<q37> list) {
            this.a = list;
        }

        public SocketAddress a() {
            return this.a.get(this.b).a.get(this.c);
        }

        public void b() {
            this.b = 0;
            this.c = 0;
        }
    }

    public class g implements c87.a {
        public final d67 a;
        public boolean b = false;

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                g gVar = g.this;
                d77 d77Var = d77.this;
                d77Var.n = null;
                if (d77Var.v != null) {
                    c50.G(d77Var.t == null, "Unexpected non-null activeTransport");
                    g gVar2 = g.this;
                    gVar2.a.b(d77.this.v);
                    return;
                }
                d67 d67Var = d77Var.s;
                d67 d67Var2 = gVar.a;
                if (d67Var == d67Var2) {
                    d77Var.t = d67Var2;
                    d77 d77Var2 = d77.this;
                    d77Var2.s = null;
                    i37 i37Var = i37.READY;
                    d77Var2.k.d();
                    d77Var2.j(j37.a(i37Var));
                }
            }
        }

        public class b implements Runnable {
            public final /* synthetic */ x47 e;

            public b(x47 x47Var) {
                this.e = x47Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (d77.this.u.a == i37.SHUTDOWN) {
                    return;
                }
                c87 c87Var = d77.this.t;
                g gVar = g.this;
                d67 d67Var = gVar.a;
                if (c87Var == d67Var) {
                    d77.this.t = null;
                    d77.this.l.b();
                    d77.h(d77.this, i37.IDLE);
                    return;
                }
                d77 d77Var = d77.this;
                if (d77Var.s == d67Var) {
                    c50.F(d77Var.u.a == i37.CONNECTING, "Expected state is CONNECTING, actual state is %s", d77.this.u.a);
                    f fVar = d77.this.l;
                    q37 q37Var = fVar.a.get(fVar.b);
                    int i = fVar.c + 1;
                    fVar.c = i;
                    if (i >= q37Var.a.size()) {
                        fVar.b++;
                        fVar.c = 0;
                    }
                    f fVar2 = d77.this.l;
                    if (fVar2.b < fVar2.a.size()) {
                        d77.i(d77.this);
                        return;
                    }
                    d77 d77Var2 = d77.this;
                    d77Var2.s = null;
                    d77Var2.l.b();
                    d77 d77Var3 = d77.this;
                    x47 x47Var = this.e;
                    d77Var3.k.d();
                    c50.t(!x47Var.f(), "The error status must not be OK");
                    d77Var3.j(new j37(i37.TRANSIENT_FAILURE, x47Var));
                    if (d77Var3.n == null) {
                        Objects.requireNonNull((l67.a) d77Var3.d);
                        d77Var3.n = new l67();
                    }
                    long jA = ((l67) d77Var3.n).a();
                    pd5 pd5Var = d77Var3.o;
                    TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                    long jA2 = jA - pd5Var.a(timeUnit);
                    d77Var3.j.b(z27.a.INFO, "TRANSIENT_FAILURE ({0}). Will reconnect after {1} ns", d77Var3.k(x47Var), Long.valueOf(jA2));
                    c50.G(d77Var3.p == null, "previous reconnectTask is not done");
                    d77Var3.p = d77Var3.k.c(new e77(d77Var3), jA2, timeUnit, d77Var3.g);
                }
            }
        }

        public class c implements Runnable {
            public c() {
            }

            @Override // java.lang.Runnable
            public void run() {
                g gVar = g.this;
                d77.this.q.remove(gVar.a);
                if (d77.this.u.a == i37.SHUTDOWN && d77.this.q.isEmpty()) {
                    d77 d77Var = d77.this;
                    b57 b57Var = d77Var.k;
                    h77 h77Var = new h77(d77Var);
                    Queue<Runnable> queue = b57Var.f;
                    c50.A(h77Var, "runnable is null");
                    queue.add(h77Var);
                    b57Var.a();
                }
            }
        }

        public g(d67 d67Var, SocketAddress socketAddress) {
            this.a = d67Var;
        }

        @Override // c87.a
        public void a(x47 x47Var) {
            d77.this.j.b(z27.a.INFO, "{0} SHUTDOWN with {1}", this.a.e(), d77.this.k(x47Var));
            this.b = true;
            b57 b57Var = d77.this.k;
            b bVar = new b(x47Var);
            Queue<Runnable> queue = b57Var.f;
            c50.A(bVar, "runnable is null");
            queue.add(bVar);
            b57Var.a();
        }

        @Override // c87.a
        public void b() {
            d77.this.j.a(z27.a.INFO, "READY");
            b57 b57Var = d77.this.k;
            a aVar = new a();
            Queue<Runnable> queue = b57Var.f;
            c50.A(aVar, "runnable is null");
            queue.add(aVar);
            b57Var.a();
        }

        @Override // c87.a
        public void c() {
            c50.G(this.b, "transportShutdown() must be called before transportTerminated().");
            d77.this.j.b(z27.a.INFO, "{0} Terminated", this.a.e());
            v37.b(d77.this.h.c, this.a);
            d77 d77Var = d77.this;
            d67 d67Var = this.a;
            b57 b57Var = d77Var.k;
            i77 i77Var = new i77(d77Var, d67Var, false);
            Queue<Runnable> queue = b57Var.f;
            c50.A(i77Var, "runnable is null");
            queue.add(i77Var);
            b57Var.a();
            b57 b57Var2 = d77.this.k;
            c cVar = new c();
            Queue<Runnable> queue2 = b57Var2.f;
            c50.A(cVar, "runnable is null");
            queue2.add(cVar);
            b57Var2.a();
        }

        @Override // c87.a
        public void d(boolean z) {
            d77 d77Var = d77.this;
            d67 d67Var = this.a;
            b57 b57Var = d77Var.k;
            i77 i77Var = new i77(d77Var, d67Var, z);
            Queue<Runnable> queue = b57Var.f;
            c50.A(i77Var, "runnable is null");
            queue.add(i77Var);
            b57Var.a();
        }
    }

    public static final class h extends z27 {
        public y37 a;

        @Override // defpackage.z27
        public void a(z27.a aVar, String str) {
            y37 y37Var = this.a;
            Level levelD = r57.d(aVar);
            if (s57.e.isLoggable(levelD)) {
                s57.a(y37Var, levelD, str);
            }
        }

        @Override // defpackage.z27
        public void b(z27.a aVar, String str, Object... objArr) {
            y37 y37Var = this.a;
            Level levelD = r57.d(aVar);
            if (s57.e.isLoggable(levelD)) {
                s57.a(y37Var, levelD, MessageFormat.format(str, objArr));
            }
        }
    }

    public d77(List<q37> list, String str, String str2, n57.a aVar, b67 b67Var, ScheduledExecutorService scheduledExecutorService, qd5<pd5> qd5Var, b57 b57Var, e eVar, v37 v37Var, q57 q57Var, s57 s57Var, y37 y37Var, z27 z27Var) {
        c50.A(list, "addressGroups");
        c50.t(!list.isEmpty(), "addressGroups is empty");
        Iterator<q37> it = list.iterator();
        while (it.hasNext()) {
            c50.A(it.next(), "addressGroups contains null entry");
        }
        List<q37> listUnmodifiableList = Collections.unmodifiableList(new ArrayList(list));
        this.m = listUnmodifiableList;
        this.l = new f(listUnmodifiableList);
        this.b = str;
        this.c = str2;
        this.d = aVar;
        this.f = b67Var;
        this.g = scheduledExecutorService;
        this.o = qd5Var.get();
        this.k = b57Var;
        this.e = eVar;
        this.h = v37Var;
        this.i = q57Var;
        c50.A(s57Var, "channelTracer");
        c50.A(y37Var, "logId");
        this.a = y37Var;
        c50.A(z27Var, "channelLogger");
        this.j = z27Var;
    }

    public static void h(d77 d77Var, i37 i37Var) {
        d77Var.k.d();
        d77Var.j(j37.a(i37Var));
    }

    public static void i(d77 d77Var) {
        SocketAddress socketAddress;
        u37 u37Var;
        d77Var.k.d();
        c50.G(d77Var.p == null, "Should have no reconnectTask scheduled");
        f fVar = d77Var.l;
        if (fVar.b == 0 && fVar.c == 0) {
            pd5 pd5Var = d77Var.o;
            pd5Var.b();
            pd5Var.c();
        }
        SocketAddress socketAddressA = d77Var.l.a();
        if (socketAddressA instanceof u37) {
            u37Var = (u37) socketAddressA;
            socketAddress = u37Var.f;
        } else {
            socketAddress = socketAddressA;
            u37Var = null;
        }
        f fVar2 = d77Var.l;
        v27 v27Var = fVar2.a.get(fVar2.b).b;
        String str = (String) v27Var.a.get(q37.d);
        b67.a aVar = new b67.a();
        if (str == null) {
            str = d77Var.b;
        }
        c50.A(str, "authority");
        aVar.a = str;
        c50.A(v27Var, "eagAttributes");
        aVar.b = v27Var;
        aVar.c = d77Var.c;
        aVar.d = u37Var;
        h hVar = new h();
        hVar.a = d77Var.a;
        d dVar = new d(d77Var.f.Y(socketAddress, aVar, hVar), d77Var.i, null);
        hVar.a = dVar.e();
        v37.a(d77Var.h.c, dVar);
        d77Var.s = dVar;
        d77Var.q.add(dVar);
        Runnable runnableD = dVar.a().d(d77Var.new g(dVar, socketAddress));
        if (runnableD != null) {
            Queue<Runnable> queue = d77Var.k.f;
            c50.A(runnableD, "runnable is null");
            queue.add(runnableD);
        }
        d77Var.j.b(z27.a.INFO, "Started transport {0}", hVar.a);
    }

    @Override // defpackage.f97
    public a67 a() {
        c87 c87Var = this.t;
        if (c87Var != null) {
            return c87Var;
        }
        b57 b57Var = this.k;
        b bVar = new b();
        Queue<Runnable> queue = b57Var.f;
        c50.A(bVar, "runnable is null");
        queue.add(bVar);
        b57Var.a();
        return null;
    }

    public void b(x47 x47Var) {
        b57 b57Var = this.k;
        c cVar = new c(x47Var);
        Queue<Runnable> queue = b57Var.f;
        c50.A(cVar, "runnable is null");
        queue.add(cVar);
        b57Var.a();
    }

    @Override // defpackage.x37
    public y37 e() {
        return this.a;
    }

    public final void j(j37 j37Var) {
        this.k.d();
        if (this.u.a != j37Var.a) {
            c50.G(this.u.a != i37.SHUTDOWN, "Cannot transition out of SHUTDOWN to " + j37Var);
            this.u = j37Var;
            x77 x77Var = (x77) this.e;
            q77 q77Var = q77.this;
            Logger logger = q77.c0;
            Objects.requireNonNull(q77Var);
            i37 i37Var = j37Var.a;
            if (i37Var == i37.TRANSIENT_FAILURE || i37Var == i37.IDLE) {
                q77Var.u();
            }
            c50.G(x77Var.a != null, "listener is null");
            x77Var.a.a(j37Var);
        }
    }

    public final String k(x47 x47Var) {
        StringBuilder sb = new StringBuilder();
        sb.append(x47Var.a);
        if (x47Var.b != null) {
            sb.append("(");
            sb.append(x47Var.b);
            sb.append(")");
        }
        return sb.toString();
    }

    public String toString() {
        nd5 nd5VarK0 = c50.K0(this);
        nd5VarK0.b("logId", this.a.c);
        nd5VarK0.d("addressGroups", this.m);
        return nd5VarK0.toString();
    }
}
