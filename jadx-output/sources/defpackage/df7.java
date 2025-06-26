package defpackage;

import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes2.dex */
public final class df7<T> extends he7<T, T> implements tc7<T> {
    public final tc7<? super T> g;

    public static final class a<T> extends AtomicLong implements pb7<T>, y38 {
        public final x38<? super T> e;
        public final tc7<? super T> f;
        public y38 g;
        public boolean h;

        public a(x38<? super T> x38Var, tc7<? super T> tc7Var) {
            this.e = x38Var;
            this.f = tc7Var;
        }

        @Override // defpackage.x38
        public void a() {
            if (this.h) {
                return;
            }
            this.h = true;
            this.e.a();
        }

        @Override // defpackage.x38
        public void b(Throwable th) {
            if (this.h) {
                n56.z1(th);
            } else {
                this.h = true;
                this.e.b(th);
            }
        }

        @Override // defpackage.y38
        public void cancel() {
            this.g.cancel();
        }

        @Override // defpackage.x38
        public void d(T t) {
            if (this.h) {
                return;
            }
            if (get() != 0) {
                this.e.d(t);
                n56.E1(this, 1L);
                return;
            }
            try {
                this.f.accept(t);
            } catch (Throwable th) {
                n56.r2(th);
                cancel();
                b(th);
            }
        }

        @Override // defpackage.pb7, defpackage.x38
        public void e(y38 y38Var) {
            if (pi7.C(this.g, y38Var)) {
                this.g = y38Var;
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

    public df7(mb7<T> mb7Var) {
        super(mb7Var);
        this.g = this;
    }

    @Override // defpackage.tc7
    public void accept(T t) {
    }

    @Override // defpackage.mb7
    public void t(x38<? super T> x38Var) {
        this.f.s(new a(x38Var, this.g));
    }
}
