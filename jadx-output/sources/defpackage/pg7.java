package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class pg7<T> extends yf7<T, T> {
    public final zb7 f;

    public static final class a<T> extends AtomicReference<ic7> implements tb7<T>, ic7 {
        public final cd7 e = new cd7();
        public final tb7<? super T> f;

        public a(tb7<? super T> tb7Var) {
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
            yc7.w(this, ic7Var);
        }

        @Override // defpackage.ic7
        public void k() {
            yc7.i(this);
            yc7.i(this.e);
        }

        @Override // defpackage.tb7
        public void onSuccess(T t) {
            this.f.onSuccess(t);
        }
    }

    public static final class b<T> implements Runnable {
        public final tb7<? super T> e;
        public final vb7<T> f;

        public b(tb7<? super T> tb7Var, vb7<T> vb7Var) {
            this.e = tb7Var;
            this.f = vb7Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f.a(this.e);
        }
    }

    public pg7(vb7<T> vb7Var, zb7 zb7Var) {
        super(vb7Var);
        this.f = zb7Var;
    }

    @Override // defpackage.rb7
    public void m(tb7<? super T> tb7Var) {
        a aVar = new a(tb7Var);
        tb7Var.c(aVar);
        yc7.t(aVar.e, this.f.b(new b(aVar, this.e)));
    }
}
