package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class ph7<T> extends ac7<T> {
    public final ec7<T> e;
    public final zb7 f;

    public static final class a<T> extends AtomicReference<ic7> implements cc7<T>, ic7, Runnable {
        public final cc7<? super T> e;
        public final zb7 f;
        public T g;
        public Throwable h;

        public a(cc7<? super T> cc7Var, zb7 zb7Var) {
            this.e = cc7Var;
            this.f = zb7Var;
        }

        @Override // defpackage.cc7
        public void b(Throwable th) {
            this.h = th;
            yc7.t(this, this.f.b(this));
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
            this.g = t;
            yc7.t(this, this.f.b(this));
        }

        @Override // java.lang.Runnable
        public void run() {
            Throwable th = this.h;
            if (th != null) {
                this.e.b(th);
            } else {
                this.e.onSuccess(this.g);
            }
        }
    }

    public ph7(ec7<T> ec7Var, zb7 zb7Var) {
        this.e = ec7Var;
        this.f = zb7Var;
    }

    @Override // defpackage.ac7
    public void g(cc7<? super T> cc7Var) {
        this.e.a(new a(cc7Var, this.f));
    }
}
