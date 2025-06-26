package defpackage;

/* JADX WARN: Unexpected interfaces in signature: [java.lang.Object] */
/* loaded from: classes2.dex */
public final class hg7<T> extends rb7<T> {
    public final lb7 e;

    public static final class a<T> implements jb7, ic7 {
        public final tb7<? super T> e;
        public ic7 f;

        public a(tb7<? super T> tb7Var) {
            this.e = tb7Var;
        }

        @Override // defpackage.jb7
        public void a() {
            this.f = yc7.DISPOSED;
            this.e.a();
        }

        @Override // defpackage.jb7
        public void b(Throwable th) {
            this.f = yc7.DISPOSED;
            this.e.b(th);
        }

        @Override // defpackage.jb7
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
    }

    public hg7(lb7 lb7Var) {
        this.e = lb7Var;
    }

    @Override // defpackage.rb7
    public void m(tb7<? super T> tb7Var) {
        this.e.a(new a(tb7Var));
    }
}
