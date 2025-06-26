package defpackage;

import java.util.Objects;

/* loaded from: classes2.dex */
public final class af7<T, U> extends he7<T, U> {
    public final uc7<? super T, ? extends U> g;

    public static final class a<T, U> extends fi7<T, U> {
        public final uc7<? super T, ? extends U> j;

        public a(fd7<? super U> fd7Var, uc7<? super T, ? extends U> uc7Var) {
            super(fd7Var);
            this.j = uc7Var;
        }

        @Override // defpackage.x38
        public void d(T t) {
            if (this.h) {
                return;
            }
            if (this.i != 0) {
                this.e.d(null);
                return;
            }
            try {
                U uApply = this.j.apply(t);
                Objects.requireNonNull(uApply, "The mapper function returned a null value.");
                this.e.d(uApply);
            } catch (Throwable th) {
                c(th);
            }
        }

        @Override // defpackage.fd7
        public boolean f(T t) {
            if (this.h) {
                return false;
            }
            try {
                U uApply = this.j.apply(t);
                Objects.requireNonNull(uApply, "The mapper function returned a null value.");
                return this.e.f(uApply);
            } catch (Throwable th) {
                c(th);
                return true;
            }
        }

        @Override // defpackage.jd7
        public int i(int i) {
            return g(i);
        }

        @Override // defpackage.nd7
        public U poll() throws Exception {
            T tPoll = this.g.poll();
            if (tPoll == null) {
                return null;
            }
            U uApply = this.j.apply(tPoll);
            Objects.requireNonNull(uApply, "The mapper function returned a null value.");
            return uApply;
        }
    }

    public static final class b<T, U> extends gi7<T, U> {
        public final uc7<? super T, ? extends U> j;

        public b(x38<? super U> x38Var, uc7<? super T, ? extends U> uc7Var) {
            super(x38Var);
            this.j = uc7Var;
        }

        @Override // defpackage.x38
        public void d(T t) {
            if (this.h) {
                return;
            }
            if (this.i != 0) {
                this.e.d(null);
                return;
            }
            try {
                U uApply = this.j.apply(t);
                Objects.requireNonNull(uApply, "The mapper function returned a null value.");
                this.e.d(uApply);
            } catch (Throwable th) {
                c(th);
            }
        }

        @Override // defpackage.jd7
        public int i(int i) {
            return g(i);
        }

        @Override // defpackage.nd7
        public U poll() throws Exception {
            T tPoll = this.g.poll();
            if (tPoll == null) {
                return null;
            }
            U uApply = this.j.apply(tPoll);
            Objects.requireNonNull(uApply, "The mapper function returned a null value.");
            return uApply;
        }
    }

    public af7(mb7<T> mb7Var, uc7<? super T, ? extends U> uc7Var) {
        super(mb7Var);
        this.g = uc7Var;
    }

    @Override // defpackage.mb7
    public void t(x38<? super U> x38Var) {
        if (x38Var instanceof fd7) {
            this.f.s(new a((fd7) x38Var, this.g));
        } else {
            this.f.s(new b(x38Var, this.g));
        }
    }
}
