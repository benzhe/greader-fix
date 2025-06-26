package defpackage;

import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
public final class tf7<T> extends ac7<T> implements gd7<T> {
    public final mb7<T> e;

    public static final class a<T> implements pb7<T>, ic7 {
        public final cc7<? super T> e;
        public final T f;
        public y38 g;
        public boolean h;
        public T i;

        public a(cc7<? super T> cc7Var, T t) {
            this.e = cc7Var;
            this.f = t;
        }

        @Override // defpackage.x38
        public void a() {
            if (this.h) {
                return;
            }
            this.h = true;
            this.g = pi7.CANCELLED;
            T t = this.i;
            this.i = null;
            if (t == null) {
                t = this.f;
            }
            if (t != null) {
                this.e.onSuccess(t);
            } else {
                this.e.b(new NoSuchElementException());
            }
        }

        @Override // defpackage.x38
        public void b(Throwable th) {
            if (this.h) {
                n56.z1(th);
                return;
            }
            this.h = true;
            this.g = pi7.CANCELLED;
            this.e.b(th);
        }

        @Override // defpackage.x38
        public void d(T t) {
            if (this.h) {
                return;
            }
            if (this.i == null) {
                this.i = t;
                return;
            }
            this.h = true;
            this.g.cancel();
            this.g = pi7.CANCELLED;
            this.e.b(new IllegalArgumentException("Sequence contains more than one element!"));
        }

        @Override // defpackage.pb7, defpackage.x38
        public void e(y38 y38Var) {
            if (pi7.C(this.g, y38Var)) {
                this.g = y38Var;
                this.e.c(this);
                y38Var.l(Long.MAX_VALUE);
            }
        }

        @Override // defpackage.ic7
        public void k() {
            this.g.cancel();
            this.g = pi7.CANCELLED;
        }
    }

    public tf7(mb7<T> mb7Var, T t) {
        this.e = mb7Var;
    }

    @Override // defpackage.gd7
    public mb7<T> c() {
        return new rf7(this.e, null, true);
    }

    @Override // defpackage.ac7
    public void g(cc7<? super T> cc7Var) {
        this.e.s(new a(cc7Var, null));
    }
}
