package defpackage;

import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
public final class ne7<T> extends ac7<T> implements gd7<T> {
    public final mb7<T> e;
    public final long f;

    public static final class a<T> implements pb7<T>, ic7 {
        public final cc7<? super T> e;
        public final long f;
        public final T g;
        public y38 h;
        public long i;
        public boolean j;

        public a(cc7<? super T> cc7Var, long j, T t) {
            this.e = cc7Var;
            this.f = j;
            this.g = t;
        }

        @Override // defpackage.x38
        public void a() {
            this.h = pi7.CANCELLED;
            if (this.j) {
                return;
            }
            this.j = true;
            T t = this.g;
            if (t != null) {
                this.e.onSuccess(t);
            } else {
                this.e.b(new NoSuchElementException());
            }
        }

        @Override // defpackage.x38
        public void b(Throwable th) {
            if (this.j) {
                n56.z1(th);
                return;
            }
            this.j = true;
            this.h = pi7.CANCELLED;
            this.e.b(th);
        }

        @Override // defpackage.x38
        public void d(T t) {
            if (this.j) {
                return;
            }
            long j = this.i;
            if (j != this.f) {
                this.i = j + 1;
                return;
            }
            this.j = true;
            this.h.cancel();
            this.h = pi7.CANCELLED;
            this.e.onSuccess(t);
        }

        @Override // defpackage.pb7, defpackage.x38
        public void e(y38 y38Var) {
            if (pi7.C(this.h, y38Var)) {
                this.h = y38Var;
                this.e.c(this);
                y38Var.l(Long.MAX_VALUE);
            }
        }

        @Override // defpackage.ic7
        public void k() {
            this.h.cancel();
            this.h = pi7.CANCELLED;
        }
    }

    public ne7(mb7<T> mb7Var, long j, T t) {
        this.e = mb7Var;
        this.f = j;
    }

    @Override // defpackage.gd7
    public mb7<T> c() {
        return new le7(this.e, this.f, null, true);
    }

    @Override // defpackage.ac7
    public void g(cc7<? super T> cc7Var) {
        this.e.s(new a(cc7Var, this.f, null));
    }
}
