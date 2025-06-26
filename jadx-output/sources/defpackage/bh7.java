package defpackage;

import java.util.Objects;

/* loaded from: classes2.dex */
public final class bh7<T, U> extends vg7<T, U> {
    public final uc7<? super T, ? extends U> f;

    public static final class a<T, U> extends od7<T, U> {
        public final uc7<? super T, ? extends U> i;

        public a(yb7<? super U> yb7Var, uc7<? super T, ? extends U> uc7Var) {
            super(yb7Var);
            this.i = uc7Var;
        }

        @Override // defpackage.yb7
        public void d(T t) {
            if (this.h) {
                return;
            }
            try {
                U uApply = this.i.apply(t);
                Objects.requireNonNull(uApply, "The mapper function returned a null value.");
                this.e.d(uApply);
            } catch (Throwable th) {
                n56.r2(th);
                this.f.k();
                b(th);
            }
        }

        @Override // defpackage.nd7
        public U poll() throws Exception {
            T tPoll = this.g.poll();
            if (tPoll == null) {
                return null;
            }
            U uApply = this.i.apply(tPoll);
            Objects.requireNonNull(uApply, "The mapper function returned a null value.");
            return uApply;
        }
    }

    public bh7(xb7<T> xb7Var, uc7<? super T, ? extends U> uc7Var) {
        super(xb7Var);
        this.f = uc7Var;
    }

    @Override // defpackage.wb7
    public void f(yb7<? super U> yb7Var) {
        this.e.e(new a(yb7Var, this.f));
    }
}
