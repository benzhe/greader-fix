package defpackage;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class lh7<T, R> extends rb7<R> {
    public final ec7<? extends T> e;
    public final uc7<? super T, ? extends vb7<? extends R>> f;

    public static final class a<R> implements tb7<R> {
        public final AtomicReference<ic7> e;
        public final tb7<? super R> f;

        public a(AtomicReference<ic7> atomicReference, tb7<? super R> tb7Var) {
            this.e = atomicReference;
            this.f = tb7Var;
        }

        @Override // defpackage.tb7
        public void a() {
            this.f.a();
        }

        @Override // defpackage.tb7
        public void b(Throwable th) {
            this.f.b(th);
        }

        @Override // defpackage.tb7
        public void c(ic7 ic7Var) {
            yc7.t(this.e, ic7Var);
        }

        @Override // defpackage.tb7
        public void onSuccess(R r) {
            this.f.onSuccess(r);
        }
    }

    public static final class b<T, R> extends AtomicReference<ic7> implements cc7<T>, ic7 {
        public final tb7<? super R> e;
        public final uc7<? super T, ? extends vb7<? extends R>> f;

        public b(tb7<? super R> tb7Var, uc7<? super T, ? extends vb7<? extends R>> uc7Var) {
            this.e = tb7Var;
            this.f = uc7Var;
        }

        public boolean a() {
            return yc7.l(get());
        }

        @Override // defpackage.cc7
        public void b(Throwable th) {
            this.e.b(th);
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
            try {
                vb7<? extends R> vb7VarApply = this.f.apply(t);
                Objects.requireNonNull(vb7VarApply, "The mapper returned a null MaybeSource");
                vb7<? extends R> vb7Var = vb7VarApply;
                if (a()) {
                    return;
                }
                vb7Var.a(new a(this, this.e));
            } catch (Throwable th) {
                n56.r2(th);
                this.e.b(th);
            }
        }
    }

    public lh7(ec7<? extends T> ec7Var, uc7<? super T, ? extends vb7<? extends R>> uc7Var) {
        this.f = uc7Var;
        this.e = ec7Var;
    }

    @Override // defpackage.rb7
    public void m(tb7<? super R> tb7Var) {
        this.e.a(new b(tb7Var, this.f));
    }
}
