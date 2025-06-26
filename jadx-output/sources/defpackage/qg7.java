package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class qg7<T> extends yf7<T, T> {
    public final vb7<? extends T> f;

    public static final class a<T> extends AtomicReference<ic7> implements tb7<T>, ic7 {
        public final tb7<? super T> e;
        public final vb7<? extends T> f;

        /* renamed from: qg7$a$a, reason: collision with other inner class name */
        public static final class C0031a<T> implements tb7<T> {
            public final tb7<? super T> e;
            public final AtomicReference<ic7> f;

            public C0031a(tb7<? super T> tb7Var, AtomicReference<ic7> atomicReference) {
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

        public a(tb7<? super T> tb7Var, vb7<? extends T> vb7Var) {
            this.e = tb7Var;
            this.f = vb7Var;
        }

        @Override // defpackage.tb7
        public void a() {
            ic7 ic7Var = get();
            if (ic7Var == yc7.DISPOSED || !compareAndSet(ic7Var, null)) {
                return;
            }
            this.f.a(new C0031a(this.e, this));
        }

        @Override // defpackage.tb7
        public void b(Throwable th) {
            this.e.b(th);
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

    public qg7(vb7<T> vb7Var, vb7<? extends T> vb7Var2) {
        super(vb7Var);
        this.f = vb7Var2;
    }

    @Override // defpackage.rb7
    public void m(tb7<? super T> tb7Var) {
        this.e.a(new a(tb7Var, this.f));
    }
}
