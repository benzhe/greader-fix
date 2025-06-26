package defpackage;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class ug7<T, R> extends wb7<R> {
    public final vb7<T> e;
    public final uc7<? super T, ? extends xb7<? extends R>> f;

    public static final class a<T, R> extends AtomicReference<ic7> implements yb7<R>, tb7<T>, ic7 {
        public final yb7<? super R> e;
        public final uc7<? super T, ? extends xb7<? extends R>> f;

        public a(yb7<? super R> yb7Var, uc7<? super T, ? extends xb7<? extends R>> uc7Var) {
            this.e = yb7Var;
            this.f = uc7Var;
        }

        @Override // defpackage.yb7
        public void a() {
            this.e.a();
        }

        @Override // defpackage.yb7
        public void b(Throwable th) {
            this.e.b(th);
        }

        @Override // defpackage.yb7
        public void c(ic7 ic7Var) {
            yc7.t(this, ic7Var);
        }

        @Override // defpackage.yb7
        public void d(R r) {
            this.e.d(r);
        }

        @Override // defpackage.ic7
        public void k() {
            yc7.i(this);
        }

        @Override // defpackage.tb7
        public void onSuccess(T t) {
            try {
                xb7<? extends R> xb7VarApply = this.f.apply(t);
                Objects.requireNonNull(xb7VarApply, "The mapper returned a null Publisher");
                xb7VarApply.e(this);
            } catch (Throwable th) {
                n56.r2(th);
                this.e.b(th);
            }
        }
    }

    public ug7(vb7<T> vb7Var, uc7<? super T, ? extends xb7<? extends R>> uc7Var) {
        this.e = vb7Var;
        this.f = uc7Var;
    }

    @Override // defpackage.wb7
    public void f(yb7<? super R> yb7Var) {
        a aVar = new a(yb7Var, this.f);
        yb7Var.c(aVar);
        this.e.a(aVar);
    }
}
