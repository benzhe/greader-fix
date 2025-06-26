package defpackage;

/* loaded from: classes2.dex */
public final class dh7<T> extends vg7<T, T> {
    public final xb7<? extends T> f;

    public static final class a<T> implements yb7<T> {
        public final yb7<? super T> e;
        public final xb7<? extends T> f;
        public boolean h = true;
        public final cd7 g = new cd7();

        public a(yb7<? super T> yb7Var, xb7<? extends T> xb7Var) {
            this.e = yb7Var;
            this.f = xb7Var;
        }

        @Override // defpackage.yb7
        public void a() {
            if (!this.h) {
                this.e.a();
            } else {
                this.h = false;
                this.f.e(this);
            }
        }

        @Override // defpackage.yb7
        public void b(Throwable th) {
            this.e.b(th);
        }

        @Override // defpackage.yb7
        public void c(ic7 ic7Var) {
            this.g.b(ic7Var);
        }

        @Override // defpackage.yb7
        public void d(T t) {
            if (this.h) {
                this.h = false;
            }
            this.e.d(t);
        }
    }

    public dh7(xb7<T> xb7Var, xb7<? extends T> xb7Var2) {
        super(xb7Var);
        this.f = xb7Var2;
    }

    @Override // defpackage.wb7
    public void f(yb7<? super T> yb7Var) {
        a aVar = new a(yb7Var, this.f);
        yb7Var.c(aVar.g);
        this.e.e(aVar);
    }
}
