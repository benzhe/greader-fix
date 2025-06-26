package defpackage;

/* JADX WARN: Unexpected interfaces in signature: [java.lang.Object<T>] */
/* loaded from: classes2.dex */
public final class rg7<T> extends mb7<T> {
    public final vb7<T> f;

    public static final class a<T> extends li7<T> implements tb7<T> {
        public ic7 g;

        public a(x38<? super T> x38Var) {
            super(x38Var);
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
                this.e.e(this);
            }
        }

        @Override // defpackage.li7, defpackage.y38
        public void cancel() {
            super.cancel();
            this.g.k();
        }

        @Override // defpackage.tb7
        public void onSuccess(T t) {
            g(t);
        }
    }

    public rg7(vb7<T> vb7Var) {
        this.f = vb7Var;
    }

    @Override // defpackage.mb7
    public void t(x38<? super T> x38Var) {
        this.f.a(new a(x38Var));
    }
}
