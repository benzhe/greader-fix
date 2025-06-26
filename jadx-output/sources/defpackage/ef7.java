package defpackage;

import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes2.dex */
public final class ef7<T> extends he7<T, T> {

    public static final class a<T> extends AtomicLong implements pb7<T>, y38 {
        public final x38<? super T> e;
        public y38 f;
        public boolean g;

        public a(x38<? super T> x38Var) {
            this.e = x38Var;
        }

        @Override // defpackage.x38
        public void a() {
            if (this.g) {
                return;
            }
            this.g = true;
            this.e.a();
        }

        @Override // defpackage.x38
        public void b(Throwable th) {
            if (this.g) {
                n56.z1(th);
            } else {
                this.g = true;
                this.e.b(th);
            }
        }

        @Override // defpackage.y38
        public void cancel() {
            this.f.cancel();
        }

        @Override // defpackage.x38
        public void d(T t) {
            if (this.g) {
                return;
            }
            if (get() != 0) {
                this.e.d(t);
                n56.E1(this, 1L);
            } else {
                this.f.cancel();
                b(new lc7("could not emit value due to lack of requests"));
            }
        }

        @Override // defpackage.pb7, defpackage.x38
        public void e(y38 y38Var) {
            if (pi7.C(this.f, y38Var)) {
                this.f = y38Var;
                this.e.e(this);
                y38Var.l(Long.MAX_VALUE);
            }
        }

        @Override // defpackage.y38
        public void l(long j) {
            if (pi7.y(j)) {
                n56.e(this, j);
            }
        }
    }

    public ef7(mb7<T> mb7Var) {
        super(mb7Var);
    }

    @Override // defpackage.mb7
    public void t(x38<? super T> x38Var) {
        this.f.s(new a(x38Var));
    }
}
