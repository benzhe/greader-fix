package defpackage;

/* loaded from: classes2.dex */
public final class be7<T> extends hb7 {
    public final ec7<T> a;

    public static final class a<T> implements cc7<T> {
        public final jb7 e;

        public a(jb7 jb7Var) {
            this.e = jb7Var;
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
            this.e.a();
        }
    }

    public be7(ec7<T> ec7Var) {
        this.a = ec7Var;
    }

    @Override // defpackage.hb7
    public void i(jb7 jb7Var) {
        this.a.a(new a(jb7Var));
    }
}
