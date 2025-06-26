package defpackage;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class ih7<T, R> extends ac7<R> {
    public final ec7<? extends T> e;
    public final uc7<? super T, ? extends ec7<? extends R>> f;

    public static final class a<T, R> extends AtomicReference<ic7> implements cc7<T>, ic7 {
        public final cc7<? super R> e;
        public final uc7<? super T, ? extends ec7<? extends R>> f;

        /* renamed from: ih7$a$a, reason: collision with other inner class name */
        public static final class C0016a<R> implements cc7<R> {
            public final AtomicReference<ic7> e;
            public final cc7<? super R> f;

            public C0016a(AtomicReference<ic7> atomicReference, cc7<? super R> cc7Var) {
                this.e = atomicReference;
                this.f = cc7Var;
            }

            @Override // defpackage.cc7
            public void b(Throwable th) {
                this.f.b(th);
            }

            @Override // defpackage.cc7
            public void c(ic7 ic7Var) {
                yc7.t(this.e, ic7Var);
            }

            @Override // defpackage.cc7
            public void onSuccess(R r) {
                this.f.onSuccess(r);
            }
        }

        public a(cc7<? super R> cc7Var, uc7<? super T, ? extends ec7<? extends R>> uc7Var) {
            this.e = cc7Var;
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
                ec7<? extends R> ec7VarApply = this.f.apply(t);
                Objects.requireNonNull(ec7VarApply, "The single returned by the mapper is null");
                ec7<? extends R> ec7Var = ec7VarApply;
                if (a()) {
                    return;
                }
                ec7Var.a(new C0016a(this, this.e));
            } catch (Throwable th) {
                n56.r2(th);
                this.e.b(th);
            }
        }
    }

    public ih7(ec7<? extends T> ec7Var, uc7<? super T, ? extends ec7<? extends R>> uc7Var) {
        this.f = uc7Var;
        this.e = ec7Var;
    }

    @Override // defpackage.ac7
    public void g(cc7<? super R> cc7Var) {
        this.e.a(new a(cc7Var, this.f));
    }
}
