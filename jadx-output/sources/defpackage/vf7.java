package defpackage;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class vf7 extends mb7<Long> {
    public final zb7 f;
    public final long g;
    public final TimeUnit h;

    public static final class a extends AtomicReference<ic7> implements y38, Runnable {
        public final x38<? super Long> e;
        public volatile boolean f;

        public a(x38<? super Long> x38Var) {
            this.e = x38Var;
        }

        @Override // defpackage.y38
        public void cancel() {
            yc7.i(this);
        }

        @Override // defpackage.y38
        public void l(long j) {
            if (pi7.y(j)) {
                this.f = true;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            zc7 zc7Var = zc7.INSTANCE;
            if (get() != yc7.DISPOSED) {
                if (!this.f) {
                    lazySet(zc7Var);
                    this.e.b(new lc7("Can't deliver value due to lack of requests"));
                } else {
                    this.e.d(0L);
                    lazySet(zc7Var);
                    this.e.a();
                }
            }
        }
    }

    public vf7(long j, TimeUnit timeUnit, zb7 zb7Var) {
        this.g = j;
        this.h = timeUnit;
        this.f = zb7Var;
    }

    @Override // defpackage.mb7
    public void t(x38<? super Long> x38Var) {
        a aVar = new a(x38Var);
        x38Var.e(aVar);
        ic7 ic7VarC = this.f.c(aVar, this.g, this.h);
        if (aVar.compareAndSet(null, ic7VarC) || aVar.get() != yc7.DISPOSED) {
            return;
        }
        ic7VarC.k();
    }
}
