package defpackage;

/* loaded from: classes2.dex */
public final class sh7<T> extends mb7<T> {
    public final ec7<? extends T> f;

    public static final class a<T> extends li7<T> implements cc7<T> {
        public ic7 g;

        public a(x38<? super T> x38Var) {
            super(x38Var);
        }

        @Override // defpackage.cc7
        public void b(Throwable th) {
            this.e.b(th);
        }

        @Override // defpackage.cc7
        public void c(ic7 ic7Var) {
            if (yc7.x(this.g, ic7Var)) {
                this.g = ic7Var;
                this.e.e(this);
            }
        }

        @Override // defpackage.li7, defpackage.y38
        public void cancel() {
            super.cancel();
            this.g.k();
        }

        @Override // defpackage.cc7
        public void onSuccess(T t) {
            g(t);
        }
    }

    public sh7(ec7<? extends T> ec7Var) {
        this.f = ec7Var;
    }

    @Override // defpackage.mb7
    public void t(x38<? super T> x38Var) {
        this.f.a(new a(x38Var));
    }
}
