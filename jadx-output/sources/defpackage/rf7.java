package defpackage;

import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
public final class rf7<T> extends he7<T, T> {
    public final T g;
    public final boolean h;

    public static final class a<T> extends li7<T> implements pb7<T> {
        public final T g;
        public final boolean h;
        public y38 i;
        public boolean j;

        public a(x38<? super T> x38Var, T t, boolean z) {
            super(x38Var);
            this.g = t;
            this.h = z;
        }

        @Override // defpackage.x38
        public void a() {
            if (this.j) {
                return;
            }
            this.j = true;
            T t = this.f;
            this.f = null;
            if (t == null) {
                t = this.g;
            }
            if (t != null) {
                g(t);
            } else if (this.h) {
                this.e.b(new NoSuchElementException());
            } else {
                this.e.a();
            }
        }

        @Override // defpackage.x38
        public void b(Throwable th) {
            if (this.j) {
                n56.z1(th);
            } else {
                this.j = true;
                this.e.b(th);
            }
        }

        @Override // defpackage.li7, defpackage.y38
        public void cancel() {
            super.cancel();
            this.i.cancel();
        }

        @Override // defpackage.x38
        public void d(T t) {
            if (this.j) {
                return;
            }
            if (this.f == null) {
                this.f = t;
                return;
            }
            this.j = true;
            this.i.cancel();
            this.e.b(new IllegalArgumentException("Sequence contains more than one element!"));
        }

        @Override // defpackage.pb7, defpackage.x38
        public void e(y38 y38Var) {
            if (pi7.C(this.i, y38Var)) {
                this.i = y38Var;
                this.e.e(this);
                y38Var.l(Long.MAX_VALUE);
            }
        }
    }

    public rf7(mb7<T> mb7Var, T t, boolean z) {
        super(mb7Var);
        this.g = null;
        this.h = z;
    }

    @Override // defpackage.mb7
    public void t(x38<? super T> x38Var) {
        this.f.s(new a(x38Var, this.g, this.h));
    }
}
