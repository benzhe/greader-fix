package defpackage;

import defpackage.c97;
import defpackage.d87;
import java.io.InputStream;
import java.util.ArrayDeque;
import java.util.Queue;

/* loaded from: classes2.dex */
public class j57 implements g67, d87.b {
    public final d87.b e;
    public final d87 f;
    public final i g;
    public final Queue<InputStream> h = new ArrayDeque();

    public class a implements Runnable {
        public final /* synthetic */ int e;

        public a(int i) {
            this.e = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (j57.this.f.isClosed()) {
                return;
            }
            try {
                j57.this.f.b(this.e);
            } catch (Throwable th) {
                j57.this.e.h(th);
                j57.this.f.close();
            }
        }
    }

    public class b implements Runnable {
        public final /* synthetic */ n87 e;

        public b(n87 n87Var) {
            this.e = n87Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                j57.this.f.k(this.e);
            } catch (Throwable th) {
                j57 j57Var = j57.this;
                j57Var.g.b(j57Var.new g(th));
                j57.this.f.close();
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j57.this.f.f();
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j57.this.f.close();
        }
    }

    public class e implements Runnable {
        public final /* synthetic */ int e;

        public e(int i) {
            this.e = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            j57.this.e.g(this.e);
        }
    }

    public class f implements Runnable {
        public final /* synthetic */ boolean e;

        public f(boolean z) {
            this.e = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            j57.this.e.d(this.e);
        }
    }

    public class g implements Runnable {
        public final /* synthetic */ Throwable e;

        public g(Throwable th) {
            this.e = th;
        }

        @Override // java.lang.Runnable
        public void run() {
            j57.this.e.h(this.e);
        }
    }

    public class h implements c97.a {
        public final Runnable a;
        public boolean b = false;

        public h(Runnable runnable, a aVar) {
            this.a = runnable;
        }

        @Override // c97.a
        public InputStream next() {
            if (!this.b) {
                this.a.run();
                this.b = true;
            }
            return j57.this.h.poll();
        }
    }

    public interface i {
        void b(Runnable runnable);
    }

    public j57(d87.b bVar, i iVar, d87 d87Var) {
        c50.A(bVar, "listener");
        this.e = bVar;
        c50.A(iVar, "transportExecutor");
        this.g = iVar;
        d87Var.e = this;
        this.f = d87Var;
    }

    @Override // d87.b
    public void a(c97.a aVar) {
        while (true) {
            InputStream next = aVar.next();
            if (next == null) {
                return;
            } else {
                this.h.add(next);
            }
        }
    }

    @Override // defpackage.g67
    public void b(int i2) {
        this.e.a(new h(new a(i2), null));
    }

    @Override // defpackage.g67
    public void c(int i2) {
        this.f.f = i2;
    }

    @Override // defpackage.g67, java.lang.AutoCloseable
    public void close() {
        this.f.w = true;
        this.e.a(new h(new d(), null));
    }

    @Override // d87.b
    public void d(boolean z) {
        this.g.b(new f(z));
    }

    @Override // defpackage.g67
    public void e(v67 v67Var) {
        this.f.e(v67Var);
    }

    @Override // defpackage.g67
    public void f() {
        this.e.a(new h(new c(), null));
    }

    @Override // d87.b
    public void g(int i2) {
        this.g.b(new e(i2));
    }

    @Override // d87.b
    public void h(Throwable th) {
        this.g.b(new g(th));
    }

    @Override // defpackage.g67
    public void i(n37 n37Var) {
        this.f.i(n37Var);
    }

    @Override // defpackage.g67
    public void k(n87 n87Var) {
        this.e.a(new h(new b(n87Var), null));
    }
}
