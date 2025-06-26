package defpackage;

/* JADX WARN: Unexpected interfaces in signature: [hd7<java.lang.Boolean>] */
/* loaded from: classes2.dex */
public final class jg7<T> extends ac7<Boolean> implements Object<T> {
    public final vb7<T> e;

    public static final class a<T> implements tb7<T>, ic7 {
        public final cc7<? super Boolean> e;
        public ic7 f;

        public a(cc7<? super Boolean> cc7Var) {
            this.e = cc7Var;
        }

        @Override // defpackage.tb7
        public void a() {
            this.f = yc7.DISPOSED;
            this.e.onSuccess(Boolean.TRUE);
        }

        @Override // defpackage.tb7
        public void b(Throwable th) {
            this.f = yc7.DISPOSED;
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
            this.f = yc7.DISPOSED;
        }

        @Override // defpackage.tb7
        public void onSuccess(T t) {
            this.f = yc7.DISPOSED;
            this.e.onSuccess(Boolean.FALSE);
        }
    }

    public jg7(vb7<T> vb7Var) {
        this.e = vb7Var;
    }

    public rb7<Boolean> b() {
        return new ig7(this.e);
    }

    @Override // defpackage.ac7
    public void g(cc7<? super Boolean> cc7Var) {
        this.e.a(new a(cc7Var));
    }
}
