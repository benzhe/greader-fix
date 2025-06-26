package defpackage;

/* loaded from: classes2.dex */
public final class xg7<T> extends vg7<T, T> {
    public final vc7<? super T> f;

    public static final class a<T> extends od7<T, T> {
        public final vc7<? super T> i;

        public a(yb7<? super T> yb7Var, vc7<? super T> vc7Var) {
            super(yb7Var);
            this.i = vc7Var;
        }

        @Override // defpackage.yb7
        public void d(T t) {
            try {
                if (this.i.test(t)) {
                    this.e.d(t);
                }
            } catch (Throwable th) {
                n56.r2(th);
                this.f.k();
                b(th);
            }
        }

        @Override // defpackage.nd7
        public T poll() throws Exception {
            T tPoll;
            do {
                tPoll = this.g.poll();
                if (tPoll == null) {
                    break;
                }
            } while (!this.i.test(tPoll));
            return tPoll;
        }
    }

    public xg7(xb7<T> xb7Var, vc7<? super T> vc7Var) {
        super(xb7Var);
        this.f = vc7Var;
    }

    @Override // defpackage.wb7
    public void f(yb7<? super T> yb7Var) {
        this.e.e(new a(yb7Var, this.f));
    }
}
