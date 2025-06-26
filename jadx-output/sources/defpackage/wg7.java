package defpackage;

/* JADX WARN: Unexpected interfaces in signature: [java.lang.Object<java.lang.Boolean>] */
/* loaded from: classes2.dex */
public final class wg7<T> extends ac7<Boolean> {
    public final xb7<T> e;
    public final vc7<? super T> f;

    public static final class a<T> implements yb7<T>, ic7 {
        public final cc7<? super Boolean> e;
        public final vc7<? super T> f;
        public ic7 g;
        public boolean h;

        public a(cc7<? super Boolean> cc7Var, vc7<? super T> vc7Var) {
            this.e = cc7Var;
            this.f = vc7Var;
        }

        @Override // defpackage.yb7
        public void a() {
            if (this.h) {
                return;
            }
            this.h = true;
            this.e.onSuccess(Boolean.FALSE);
        }

        @Override // defpackage.yb7
        public void b(Throwable th) {
            if (this.h) {
                n56.z1(th);
            } else {
                this.h = true;
                this.e.b(th);
            }
        }

        @Override // defpackage.yb7
        public void c(ic7 ic7Var) {
            if (yc7.x(this.g, ic7Var)) {
                this.g = ic7Var;
                this.e.c(this);
            }
        }

        @Override // defpackage.yb7
        public void d(T t) {
            if (this.h) {
                return;
            }
            try {
                if (this.f.test(t)) {
                    this.h = true;
                    this.g.k();
                    this.e.onSuccess(Boolean.TRUE);
                }
            } catch (Throwable th) {
                n56.r2(th);
                this.g.k();
                b(th);
            }
        }

        @Override // defpackage.ic7
        public void k() {
            this.g.k();
        }
    }

    public wg7(xb7<T> xb7Var, vc7<? super T> vc7Var) {
        this.e = xb7Var;
        this.f = vc7Var;
    }

    @Override // defpackage.ac7
    public void g(cc7<? super Boolean> cc7Var) {
        this.e.e(new a(cc7Var, this.f));
    }
}
