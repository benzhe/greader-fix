package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class rh7<T> extends ac7<T> {
    public final ec7<? extends T> e;
    public final zb7 f;

    public static final class a<T> extends AtomicReference<ic7> implements cc7<T>, ic7, Runnable {
        public final cc7<? super T> e;
        public final cd7 f = new cd7();
        public final ec7<? extends T> g;

        public a(cc7<? super T> cc7Var, ec7<? extends T> ec7Var) {
            this.e = cc7Var;
            this.g = ec7Var;
        }

        @Override // defpackage.cc7
        public void b(Throwable th) {
            this.e.b(th);
        }

        @Override // defpackage.cc7
        public void c(ic7 ic7Var) {
            yc7.w(this, ic7Var);
        }

        @Override // defpackage.ic7
        public void k() {
            yc7.i(this);
            yc7.i(this.f);
        }

        @Override // defpackage.cc7
        public void onSuccess(T t) {
            this.e.onSuccess(t);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.g.a(this);
        }
    }

    public rh7(ec7<? extends T> ec7Var, zb7 zb7Var) {
        this.e = ec7Var;
        this.f = zb7Var;
    }

    @Override // defpackage.ac7
    public void g(cc7<? super T> cc7Var) {
        a aVar = new a(cc7Var, this.e);
        cc7Var.c(aVar);
        yc7.t(aVar.f, this.f.b(aVar));
    }
}
