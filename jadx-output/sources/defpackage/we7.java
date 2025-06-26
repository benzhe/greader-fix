package defpackage;

/* loaded from: classes2.dex */
public final class we7<T> extends mb7<T> {
    public final wb7<T> f;

    public static final class a<T> implements yb7<T>, y38 {
        public final x38<? super T> e;
        public ic7 f;

        public a(x38<? super T> x38Var) {
            this.e = x38Var;
        }

        @Override // defpackage.yb7
        public void a() {
            this.e.a();
        }

        @Override // defpackage.yb7
        public void b(Throwable th) {
            this.e.b(th);
        }

        @Override // defpackage.yb7
        public void c(ic7 ic7Var) {
            this.f = ic7Var;
            this.e.e(this);
        }

        @Override // defpackage.y38
        public void cancel() {
            this.f.k();
        }

        @Override // defpackage.yb7
        public void d(T t) {
            this.e.d(t);
        }

        @Override // defpackage.y38
        public void l(long j) {
        }
    }

    public we7(wb7<T> wb7Var) {
        this.f = wb7Var;
    }

    @Override // defpackage.mb7
    public void t(x38<? super T> x38Var) {
        this.f.e(new a(x38Var));
    }
}
