package defpackage;

/* loaded from: classes2.dex */
public final class cg7<T> extends yf7<T, T> {
    public final vc7<? super T> f;

    public static final class a<T> implements tb7<T>, ic7 {
        public final tb7<? super T> e;
        public final vc7<? super T> f;
        public ic7 g;

        public a(tb7<? super T> tb7Var, vc7<? super T> vc7Var) {
            this.e = tb7Var;
            this.f = vc7Var;
        }

        @Override // defpackage.tb7
        public void a() {
            this.e.a();
        }

        @Override // defpackage.tb7
        public void b(Throwable th) {
            this.e.b(th);
        }

        @Override // defpackage.tb7
        public void c(ic7 ic7Var) {
            if (yc7.x(this.g, ic7Var)) {
                this.g = ic7Var;
                this.e.c(this);
            }
        }

        @Override // defpackage.ic7
        public void k() {
            ic7 ic7Var = this.g;
            this.g = yc7.DISPOSED;
            ic7Var.k();
        }

        @Override // defpackage.tb7
        public void onSuccess(T t) {
            try {
                if (this.f.test(t)) {
                    this.e.onSuccess(t);
                } else {
                    this.e.a();
                }
            } catch (Throwable th) {
                n56.r2(th);
                this.e.b(th);
            }
        }
    }

    public cg7(vb7<T> vb7Var, vc7<? super T> vc7Var) {
        super(vb7Var);
        this.f = vc7Var;
    }

    @Override // defpackage.rb7
    public void m(tb7<? super T> tb7Var) {
        this.e.a(new a(tb7Var, this.f));
    }
}
