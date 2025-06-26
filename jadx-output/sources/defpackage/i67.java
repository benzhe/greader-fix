package defpackage;

import defpackage.c97;
import defpackage.z57;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class i67 implements y57 {
    public volatile boolean a;
    public z57 b;
    public y57 c;
    public x47 d;
    public List<Runnable> e = new ArrayList();
    public n f;
    public long g;
    public long h;

    public class a implements Runnable {
        public final /* synthetic */ int e;

        public a(int i) {
            this.e = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            i67.this.c.b(this.e);
        }
    }

    public class b implements Runnable {
        public final /* synthetic */ g37 e;

        public b(g37 g37Var) {
            this.e = g37Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            i67.this.c.a(this.e);
        }
    }

    public class c implements Runnable {
        public final /* synthetic */ boolean e;

        public c(boolean z) {
            this.e = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            i67.this.c.n(this.e);
        }
    }

    public class d implements Runnable {
        public final /* synthetic */ o37 e;

        public d(o37 o37Var) {
            this.e = o37Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            i67.this.c.e(this.e);
        }
    }

    public class e implements Runnable {
        public final /* synthetic */ int e;

        public e(int i) {
            this.e = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            i67.this.c.c(this.e);
        }
    }

    public class f implements Runnable {
        public final /* synthetic */ int e;

        public f(int i) {
            this.e = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            i67.this.c.d(this.e);
        }
    }

    public class g implements Runnable {
        public final /* synthetic */ m37 e;

        public g(m37 m37Var) {
            this.e = m37Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            i67.this.c.j(this.e);
        }
    }

    public class h implements Runnable {
        public final /* synthetic */ String e;

        public h(String str) {
            this.e = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            i67.this.c.g(this.e);
        }
    }

    public class i implements Runnable {
        public final /* synthetic */ z57 e;

        public i(z57 z57Var) {
            this.e = z57Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            i67.this.c.k(this.e);
        }
    }

    public class j implements Runnable {
        public final /* synthetic */ InputStream e;

        public j(InputStream inputStream) {
            this.e = inputStream;
        }

        @Override // java.lang.Runnable
        public void run() {
            i67.this.c.l(this.e);
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            i67.this.c.flush();
        }
    }

    public class l implements Runnable {
        public final /* synthetic */ x47 e;

        public l(x47 x47Var) {
            this.e = x47Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            i67.this.c.f(this.e);
        }
    }

    public class m implements Runnable {
        public m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            i67.this.c.i();
        }
    }

    public static class n implements z57 {
        public final z57 a;
        public volatile boolean b;
        public List<Runnable> c = new ArrayList();

        public class a implements Runnable {
            public final /* synthetic */ c97.a e;

            public a(c97.a aVar) {
                this.e = aVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                n.this.a.a(this.e);
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                n.this.a.d();
            }
        }

        public class c implements Runnable {
            public final /* synthetic */ i47 e;

            public c(i47 i47Var) {
                this.e = i47Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                n.this.a.c(this.e);
            }
        }

        public class d implements Runnable {
            public final /* synthetic */ x47 e;
            public final /* synthetic */ i47 f;

            public d(x47 x47Var, i47 i47Var) {
                this.e = x47Var;
                this.f = i47Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                n.this.a.b(this.e, this.f);
            }
        }

        public class e implements Runnable {
            public final /* synthetic */ x47 e;
            public final /* synthetic */ z57.a f;
            public final /* synthetic */ i47 g;

            public e(x47 x47Var, z57.a aVar, i47 i47Var) {
                this.e = x47Var;
                this.f = aVar;
                this.g = i47Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                n.this.a.e(this.e, this.f, this.g);
            }
        }

        public n(z57 z57Var) {
            this.a = z57Var;
        }

        @Override // defpackage.c97
        public void a(c97.a aVar) {
            if (this.b) {
                this.a.a(aVar);
            } else {
                f(new a(aVar));
            }
        }

        @Override // defpackage.z57
        public void b(x47 x47Var, i47 i47Var) {
            f(new d(x47Var, i47Var));
        }

        @Override // defpackage.z57
        public void c(i47 i47Var) {
            f(new c(i47Var));
        }

        @Override // defpackage.c97
        public void d() {
            if (this.b) {
                this.a.d();
            } else {
                f(new b());
            }
        }

        @Override // defpackage.z57
        public void e(x47 x47Var, z57.a aVar, i47 i47Var) {
            f(new e(x47Var, aVar, i47Var));
        }

        public final void f(Runnable runnable) {
            synchronized (this) {
                if (this.b) {
                    runnable.run();
                } else {
                    this.c.add(runnable);
                }
            }
        }
    }

    @Override // defpackage.b97
    public void a(g37 g37Var) {
        c50.A(g37Var, "compressor");
        m(new b(g37Var));
    }

    @Override // defpackage.b97
    public void b(int i2) {
        if (this.a) {
            this.c.b(i2);
        } else {
            m(new a(i2));
        }
    }

    @Override // defpackage.y57
    public void c(int i2) {
        if (this.a) {
            this.c.c(i2);
        } else {
            m(new e(i2));
        }
    }

    @Override // defpackage.y57
    public void d(int i2) {
        if (this.a) {
            this.c.d(i2);
        } else {
            m(new f(i2));
        }
    }

    @Override // defpackage.y57
    public void e(o37 o37Var) {
        c50.A(o37Var, "decompressorRegistry");
        m(new d(o37Var));
    }

    @Override // defpackage.y57
    public void f(x47 x47Var) {
        boolean z;
        z57 z57Var;
        c50.A(x47Var, "reason");
        synchronized (this) {
            if (this.c == null) {
                p(g87.a);
                z = false;
                z57Var = this.b;
                this.d = x47Var;
            } else {
                z = true;
                z57Var = null;
            }
        }
        if (z) {
            m(new l(x47Var));
            return;
        }
        if (z57Var != null) {
            z57Var.b(x47Var, new i47());
        }
        o();
    }

    @Override // defpackage.b97
    public void flush() {
        if (this.a) {
            this.c.flush();
        } else {
            m(new k());
        }
    }

    @Override // defpackage.y57
    public void g(String str) {
        c50.G(this.b == null, "May only be called before start");
        c50.A(str, "authority");
        m(new h(str));
    }

    @Override // defpackage.y57
    public void h(c77 c77Var) {
        synchronized (this) {
            if (this.b == null) {
                return;
            }
            if (this.c != null) {
                c77Var.b("buffered_nanos", Long.valueOf(this.h - this.g));
                this.c.h(c77Var);
            } else {
                c77Var.b("buffered_nanos", Long.valueOf(System.nanoTime() - this.g));
                c77Var.a.add("waiting_for_connection");
            }
        }
    }

    @Override // defpackage.y57
    public void i() {
        m(new m());
    }

    @Override // defpackage.y57
    public void j(m37 m37Var) {
        m(new g(m37Var));
    }

    @Override // defpackage.y57
    public void k(z57 z57Var) {
        x47 x47Var;
        boolean z;
        c50.G(this.b == null, "already started");
        synchronized (this) {
            c50.A(z57Var, "listener");
            this.b = z57Var;
            x47Var = this.d;
            z = this.a;
            if (!z) {
                n nVar = new n(z57Var);
                this.f = nVar;
                z57Var = nVar;
            }
            this.g = System.nanoTime();
        }
        if (x47Var != null) {
            z57Var.b(x47Var, new i47());
        } else if (z) {
            this.c.k(z57Var);
        } else {
            m(new i(z57Var));
        }
    }

    @Override // defpackage.b97
    public void l(InputStream inputStream) {
        c50.A(inputStream, "message");
        if (this.a) {
            this.c.l(inputStream);
        } else {
            m(new j(inputStream));
        }
    }

    public final void m(Runnable runnable) {
        synchronized (this) {
            if (this.a) {
                runnable.run();
            } else {
                this.e.add(runnable);
            }
        }
    }

    @Override // defpackage.y57
    public void n(boolean z) {
        m(new c(z));
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0054, code lost:
    
        r0 = r1.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x005c, code lost:
    
        if (r0.hasNext() == false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x005e, code lost:
    
        ((java.lang.Runnable) r0.next()).run();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:26:0x004e A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0019  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void o() {
        /*
            r6 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
        L5:
            monitor-enter(r6)
            java.util.List<java.lang.Runnable> r1 = r6.e     // Catch: java.lang.Throwable -> L6d
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L6d
            if (r1 == 0) goto L4f
            r0 = 0
            r6.e = r0     // Catch: java.lang.Throwable -> L6d
            r1 = 1
            r6.a = r1     // Catch: java.lang.Throwable -> L6d
            i67$n r2 = r6.f     // Catch: java.lang.Throwable -> L6d
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L6d
            if (r2 == 0) goto L4e
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>()
        L1e:
            monitor-enter(r2)
            java.util.List<java.lang.Runnable> r4 = r2.c     // Catch: java.lang.Throwable -> L4b
            boolean r4 = r4.isEmpty()     // Catch: java.lang.Throwable -> L4b
            if (r4 == 0) goto L2d
            r2.c = r0     // Catch: java.lang.Throwable -> L4b
            r2.b = r1     // Catch: java.lang.Throwable -> L4b
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L4b
            goto L4e
        L2d:
            java.util.List<java.lang.Runnable> r4 = r2.c     // Catch: java.lang.Throwable -> L4b
            r2.c = r3     // Catch: java.lang.Throwable -> L4b
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L4b
            java.util.Iterator r3 = r4.iterator()
        L36:
            boolean r5 = r3.hasNext()
            if (r5 == 0) goto L46
            java.lang.Object r5 = r3.next()
            java.lang.Runnable r5 = (java.lang.Runnable) r5
            r5.run()
            goto L36
        L46:
            r4.clear()
            r3 = r4
            goto L1e
        L4b:
            r0 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L4b
            throw r0
        L4e:
            return
        L4f:
            java.util.List<java.lang.Runnable> r1 = r6.e     // Catch: java.lang.Throwable -> L6d
            r6.e = r0     // Catch: java.lang.Throwable -> L6d
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L6d
            java.util.Iterator r0 = r1.iterator()
        L58:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L68
            java.lang.Object r2 = r0.next()
            java.lang.Runnable r2 = (java.lang.Runnable) r2
            r2.run()
            goto L58
        L68:
            r1.clear()
            r0 = r1
            goto L5
        L6d:
            r0 = move-exception
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L6d
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.i67.o():void");
    }

    public final void p(y57 y57Var) {
        y57 y57Var2 = this.c;
        c50.F(y57Var2 == null, "realStream already set to %s", y57Var2);
        this.c = y57Var;
        this.h = System.nanoTime();
    }

    public final void q(y57 y57Var) {
        synchronized (this) {
            if (this.c != null) {
                return;
            }
            c50.A(y57Var, "stream");
            p(y57Var);
            o();
        }
    }
}
