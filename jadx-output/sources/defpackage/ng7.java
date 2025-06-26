package defpackage;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class ng7<T> extends yf7<T, T> {
    public final uc7<? super Throwable, ? extends vb7<? extends T>> f;

    public static final class a<T> extends AtomicReference<ic7> implements tb7<T>, ic7 {
        public final tb7<? super T> e;
        public final uc7<? super Throwable, ? extends vb7<? extends T>> f;
        public final boolean g;

        /* renamed from: ng7$a$a, reason: collision with other inner class name */
        public static final class C0025a<T> implements tb7<T> {
            public final tb7<? super T> e;
            public final AtomicReference<ic7> f;

            public C0025a(tb7<? super T> tb7Var, AtomicReference<ic7> atomicReference) {
                this.e = tb7Var;
                this.f = atomicReference;
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
                yc7.w(this.f, ic7Var);
            }

            @Override // defpackage.tb7
            public void onSuccess(T t) {
                this.e.onSuccess(t);
            }
        }

        public a(tb7<? super T> tb7Var, uc7<? super Throwable, ? extends vb7<? extends T>> uc7Var, boolean z) {
            this.e = tb7Var;
            this.f = uc7Var;
            this.g = z;
        }

        @Override // defpackage.tb7
        public void a() {
            this.e.a();
        }

        @Override // defpackage.tb7
        public void b(Throwable th) {
            if (!this.g && !(th instanceof Exception)) {
                this.e.b(th);
                return;
            }
            try {
                vb7<? extends T> vb7VarApply = this.f.apply(th);
                Objects.requireNonNull(vb7VarApply, "The resumeFunction returned a null MaybeSource");
                vb7<? extends T> vb7Var = vb7VarApply;
                yc7.t(this, null);
                vb7Var.a(new C0025a(this.e, this));
            } catch (Throwable th2) {
                n56.r2(th2);
                this.e.b(new kc7(th, th2));
            }
        }

        @Override // defpackage.tb7
        public void c(ic7 ic7Var) {
            if (yc7.w(this, ic7Var)) {
                this.e.c(this);
            }
        }

        @Override // defpackage.ic7
        public void k() {
            yc7.i(this);
        }

        @Override // defpackage.tb7
        public void onSuccess(T t) {
            this.e.onSuccess(t);
        }
    }

    public ng7(vb7<T> vb7Var, uc7<? super Throwable, ? extends vb7<? extends T>> uc7Var, boolean z) {
        super(vb7Var);
        this.f = uc7Var;
    }

    @Override // defpackage.rb7
    public void m(tb7<? super T> tb7Var) {
        this.e.a(new a(tb7Var, this.f, true));
    }
}
