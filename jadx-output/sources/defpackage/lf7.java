package defpackage;

import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public final class lf7<T> extends he7<T, T> {
    public final long g;

    public static final class a<T> extends AtomicInteger implements pb7<T> {
        public final x38<? super T> e;
        public final oi7 f;
        public final w38<? extends T> g;
        public long h;
        public long i;

        public a(x38<? super T> x38Var, long j, oi7 oi7Var, w38<? extends T> w38Var) {
            this.e = x38Var;
            this.f = oi7Var;
            this.g = w38Var;
            this.h = j;
        }

        @Override // defpackage.x38
        public void a() {
            long j = this.h;
            if (j != Long.MAX_VALUE) {
                this.h = j - 1;
            }
            if (j != 0) {
                c();
            } else {
                this.e.a();
            }
        }

        @Override // defpackage.x38
        public void b(Throwable th) {
            this.e.b(th);
        }

        public void c() {
            if (getAndIncrement() == 0) {
                int iAddAndGet = 1;
                while (!this.f.k) {
                    long j = this.i;
                    if (j != 0) {
                        this.i = 0L;
                        this.f.h(j);
                    }
                    this.g.i(this);
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                }
            }
        }

        @Override // defpackage.x38
        public void d(T t) {
            this.i++;
            this.e.d(t);
        }

        @Override // defpackage.pb7, defpackage.x38
        public void e(y38 y38Var) {
            this.f.i(y38Var);
        }
    }

    public lf7(mb7<T> mb7Var, long j) {
        super(mb7Var);
        this.g = j;
    }

    @Override // defpackage.mb7
    public void t(x38<? super T> x38Var) {
        oi7 oi7Var = new oi7(false);
        x38Var.e(oi7Var);
        long j = this.g;
        new a(x38Var, j != Long.MAX_VALUE ? j - 1 : Long.MAX_VALUE, oi7Var, this.f).c();
    }
}
