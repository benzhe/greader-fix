package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class mg7<T> extends yf7<T, T> {
    public final zb7 f;

    public static final class a<T> extends AtomicReference<ic7> implements tb7<T>, ic7, Runnable {
        public final tb7<? super T> e;
        public final zb7 f;
        public T g;
        public Throwable h;

        public a(tb7<? super T> tb7Var, zb7 zb7Var) {
            this.e = tb7Var;
            this.f = zb7Var;
        }

        @Override // defpackage.tb7
        public void a() {
            yc7.t(this, this.f.b(this));
        }

        @Override // defpackage.tb7
        public void b(Throwable th) {
            this.h = th;
            yc7.t(this, this.f.b(this));
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
            this.g = t;
            yc7.t(this, this.f.b(this));
        }

        @Override // java.lang.Runnable
        public void run() {
            Throwable th = this.h;
            if (th != null) {
                this.h = null;
                this.e.b(th);
                return;
            }
            T t = this.g;
            if (t == null) {
                this.e.a();
            } else {
                this.g = null;
                this.e.onSuccess(t);
            }
        }
    }

    public mg7(vb7<T> vb7Var, zb7 zb7Var) {
        super(vb7Var);
        this.f = zb7Var;
    }

    @Override // defpackage.rb7
    public void m(tb7<? super T> tb7Var) {
        this.e.a(new a(tb7Var, this.f));
    }
}
