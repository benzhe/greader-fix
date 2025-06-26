package defpackage;

/* loaded from: classes2.dex */
public final class ig7<T> extends yf7<T, Boolean> {

    public static final class a<T> implements tb7<T>, ic7 {
        public final tb7<? super Boolean> e;
        public ic7 f;

        public a(tb7<? super Boolean> tb7Var) {
            this.e = tb7Var;
        }

        @Override // defpackage.tb7
        public void a() {
            this.e.onSuccess(Boolean.TRUE);
        }

        @Override // defpackage.tb7
        public void b(Throwable th) {
            this.e.b(th);
        }

        @Override // defpackage.tb7
        public void c(ic7 ic7Var) {
            if (yc7.x(this.f, ic7Var)) {
                this.f = ic7Var;
                this.e.c(this);
            }
        }

        @Override // defpackage.ic7
        public void k() {
            this.f.k();
        }

        @Override // defpackage.tb7
        public void onSuccess(T t) {
            this.e.onSuccess(Boolean.FALSE);
        }
    }

    public ig7(vb7<T> vb7Var) {
        super(vb7Var);
    }

    @Override // defpackage.rb7
    public void m(tb7<? super Boolean> tb7Var) {
        this.e.a(new a(tb7Var));
    }
}
