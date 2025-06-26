package defpackage;

/* loaded from: classes2.dex */
public final class gh7<T> extends ac7<T> {
    public final ec7<T> e;
    public final tc7<? super T> f;

    public final class a implements cc7<T> {
        public final cc7<? super T> e;

        public a(cc7<? super T> cc7Var) {
            this.e = cc7Var;
        }

        @Override // defpackage.cc7
        public void b(Throwable th) {
            this.e.b(th);
        }

        @Override // defpackage.cc7
        public void c(ic7 ic7Var) {
            this.e.c(ic7Var);
        }

        @Override // defpackage.cc7
        public void onSuccess(T t) {
            try {
                gh7.this.f.accept(t);
                this.e.onSuccess(t);
            } catch (Throwable th) {
                n56.r2(th);
                this.e.b(th);
            }
        }
    }

    public gh7(ec7<T> ec7Var, tc7<? super T> tc7Var) {
        this.e = ec7Var;
        this.f = tc7Var;
    }

    @Override // defpackage.ac7
    public void g(cc7<? super T> cc7Var) {
        this.e.a(new a(cc7Var));
    }
}
