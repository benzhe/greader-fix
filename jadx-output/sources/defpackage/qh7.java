package defpackage;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class qh7<T> extends ac7<T> {
    public final ec7<? extends T> e;
    public final uc7<? super Throwable, ? extends ec7<? extends T>> f;

    public static final class a<T> extends AtomicReference<ic7> implements cc7<T>, ic7 {
        public final cc7<? super T> e;
        public final uc7<? super Throwable, ? extends ec7<? extends T>> f;

        public a(cc7<? super T> cc7Var, uc7<? super Throwable, ? extends ec7<? extends T>> uc7Var) {
            this.e = cc7Var;
            this.f = uc7Var;
        }

        @Override // defpackage.cc7
        public void b(Throwable th) {
            try {
                ec7<? extends T> ec7VarApply = this.f.apply(th);
                Objects.requireNonNull(ec7VarApply, "The nextFunction returned a null SingleSource.");
                ec7VarApply.a(new ud7(this, this.e));
            } catch (Throwable th2) {
                n56.r2(th2);
                this.e.b(new kc7(th, th2));
            }
        }

        @Override // defpackage.cc7
        public void c(ic7 ic7Var) {
            if (yc7.w(this, ic7Var)) {
                this.e.c(this);
            }
        }

        @Override // defpackage.ic7
        public void k() {
            yc7.i(this);
        }

        @Override // defpackage.cc7
        public void onSuccess(T t) {
            this.e.onSuccess(t);
        }
    }

    public qh7(ec7<? extends T> ec7Var, uc7<? super Throwable, ? extends ec7<? extends T>> uc7Var) {
        this.e = ec7Var;
        this.f = uc7Var;
    }

    @Override // defpackage.ac7
    public void g(cc7<? super T> cc7Var) {
        this.e.a(new a(cc7Var, this.f));
    }
}
