package defpackage;

/* loaded from: classes2.dex */
public final class me7<T> extends rb7<T> implements gd7<T> {
    public final mb7<T> e;
    public final long f;

    public static final class a<T> implements pb7<T>, ic7 {
        public final tb7<? super T> e;
        public final long f;
        public y38 g;
        public long h;
        public boolean i;

        public a(tb7<? super T> tb7Var, long j) {
            this.e = tb7Var;
            this.f = j;
        }

        @Override // defpackage.x38
        public void a() {
            this.g = pi7.CANCELLED;
            if (this.i) {
                return;
            }
            this.i = true;
            this.e.a();
        }

        @Override // defpackage.x38
        public void b(Throwable th) {
            if (this.i) {
                n56.z1(th);
                return;
            }
            this.i = true;
            this.g = pi7.CANCELLED;
            this.e.b(th);
        }

        @Override // defpackage.x38
        public void d(T t) {
            if (this.i) {
                return;
            }
            long j = this.h;
            if (j != this.f) {
                this.h = j + 1;
                return;
            }
            this.i = true;
            this.g.cancel();
            this.g = pi7.CANCELLED;
            this.e.onSuccess(t);
        }

        @Override // defpackage.pb7, defpackage.x38
        public void e(y38 y38Var) {
            if (pi7.C(this.g, y38Var)) {
                this.g = y38Var;
                this.e.c(this);
                y38Var.l(Long.MAX_VALUE);
            }
        }

        @Override // defpackage.ic7
        public void k() {
            this.g.cancel();
            this.g = pi7.CANCELLED;
        }
    }

    public me7(mb7<T> mb7Var, long j) {
        this.e = mb7Var;
        this.f = j;
    }

    @Override // defpackage.gd7
    public mb7<T> c() {
        return new le7(this.e, this.f, null, false);
    }

    @Override // defpackage.rb7
    public void m(tb7<? super T> tb7Var) {
        this.e.s(new a(tb7Var, this.f));
    }
}
