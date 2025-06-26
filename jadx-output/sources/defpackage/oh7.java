package defpackage;

import java.util.Objects;

/* loaded from: classes2.dex */
public final class oh7<T, R> extends ac7<R> {
    public final ec7<? extends T> e;
    public final uc7<? super T, ? extends R> f;

    public static final class a<T, R> implements cc7<T> {
        public final cc7<? super R> e;
        public final uc7<? super T, ? extends R> f;

        public a(cc7<? super R> cc7Var, uc7<? super T, ? extends R> uc7Var) {
            this.e = cc7Var;
            this.f = uc7Var;
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
                R rApply = this.f.apply(t);
                Objects.requireNonNull(rApply, "The mapper function returned a null value.");
                this.e.onSuccess(rApply);
            } catch (Throwable th) {
                n56.r2(th);
                b(th);
            }
        }
    }

    public oh7(ec7<? extends T> ec7Var, uc7<? super T, ? extends R> uc7Var) {
        this.e = ec7Var;
        this.f = uc7Var;
    }

    @Override // defpackage.ac7
    public void g(cc7<? super R> cc7Var) {
        this.e.a(new a(cc7Var, this.f));
    }
}
