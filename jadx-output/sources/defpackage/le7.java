package defpackage;

import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
public final class le7<T> extends he7<T, T> {
    public final long g;
    public final T h;
    public final boolean i;

    public static final class a<T> extends li7<T> implements pb7<T> {
        public final long g;
        public final T h;
        public final boolean i;
        public y38 j;
        public long k;
        public boolean l;

        public a(x38<? super T> x38Var, long j, T t, boolean z) {
            super(x38Var);
            this.g = j;
            this.h = t;
            this.i = z;
        }

        @Override // defpackage.x38
        public void a() {
            if (this.l) {
                return;
            }
            this.l = true;
            T t = this.h;
            if (t != null) {
                g(t);
            } else if (this.i) {
                this.e.b(new NoSuchElementException());
            } else {
                this.e.a();
            }
        }

        @Override // defpackage.x38
        public void b(Throwable th) {
            if (this.l) {
                n56.z1(th);
            } else {
                this.l = true;
                this.e.b(th);
            }
        }

        @Override // defpackage.li7, defpackage.y38
        public void cancel() {
            super.cancel();
            this.j.cancel();
        }

        @Override // defpackage.x38
        public void d(T t) {
            if (this.l) {
                return;
            }
            long j = this.k;
            if (j != this.g) {
                this.k = j + 1;
                return;
            }
            this.l = true;
            this.j.cancel();
            g(t);
        }

        @Override // defpackage.pb7, defpackage.x38
        public void e(y38 y38Var) {
            if (pi7.C(this.j, y38Var)) {
                this.j = y38Var;
                this.e.e(this);
                y38Var.l(Long.MAX_VALUE);
            }
        }
    }

    public le7(mb7<T> mb7Var, long j, T t, boolean z) {
        super(mb7Var);
        this.g = j;
        this.h = null;
        this.i = z;
    }

    @Override // defpackage.mb7
    public void t(x38<? super T> x38Var) {
        this.f.s(new a(x38Var, this.g, this.h, this.i));
    }
}
