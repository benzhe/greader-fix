package defpackage;

import java.util.Objects;

/* loaded from: classes2.dex */
public final class lg7<T, R> extends yf7<T, R> {
    public final uc7<? super T, ? extends R> f;

    public static final class a<T, R> implements tb7<T>, ic7 {
        public final tb7<? super R> e;
        public final uc7<? super T, ? extends R> f;
        public ic7 g;

        public a(tb7<? super R> tb7Var, uc7<? super T, ? extends R> uc7Var) {
            this.e = tb7Var;
            this.f = uc7Var;
        }

        @Override // defpackage.tb7
        public void a() {
            this.e.a();
        }

        @Override // defpackage.tb7
        public void b(Throwable th) {
            this.e.b(th);
        }

        @Override // defpackage.tb7
        public void c(ic7 ic7Var) {
            if (yc7.x(this.g, ic7Var)) {
                this.g = ic7Var;
                this.e.c(this);
            }
        }

        @Override // defpackage.ic7
        public void k() {
            ic7 ic7Var = this.g;
            this.g = yc7.DISPOSED;
            ic7Var.k();
        }

        @Override // defpackage.tb7
        public void onSuccess(T t) {
            try {
                R rApply = this.f.apply(t);
                Objects.requireNonNull(rApply, "The mapper returned a null item");
                this.e.onSuccess(rApply);
            } catch (Throwable th) {
                n56.r2(th);
                this.e.b(th);
            }
        }
    }

    public lg7(vb7<T> vb7Var, uc7<? super T, ? extends R> uc7Var) {
        super(vb7Var);
        this.f = uc7Var;
    }

    @Override // defpackage.rb7
    public void m(tb7<? super R> tb7Var) {
        this.e.a(new a(tb7Var, this.f));
    }
}
