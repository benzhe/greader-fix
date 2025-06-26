package defpackage;

/* loaded from: classes2.dex */
public final class fh7<T> extends ac7<T> {
    public final ec7<T> e;
    public final tc7<? super Throwable> f;

    public final class a implements cc7<T> {
        public final cc7<? super T> e;

        public a(cc7<? super T> cc7Var) {
            this.e = cc7Var;
        }

        @Override // defpackage.cc7
        public void b(Throwable th) {
            try {
                fh7.this.f.accept(th);
            } catch (Throwable th2) {
                n56.r2(th2);
                th = new kc7(th, th2);
            }
            this.e.b(th);
        }

        @Override // defpackage.cc7
        public void c(ic7 ic7Var) {
            this.e.c(ic7Var);
        }

        @Override // defpackage.cc7
        public void onSuccess(T t) {
            this.e.onSuccess(t);
        }
    }

    public fh7(ec7<T> ec7Var, tc7<? super Throwable> tc7Var) {
        this.e = ec7Var;
        this.f = tc7Var;
    }

    @Override // defpackage.ac7
    public void g(cc7<? super T> cc7Var) {
        this.e.a(new a(cc7Var));
    }
}
