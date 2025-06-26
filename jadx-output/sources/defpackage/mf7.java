package defpackage;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class mf7<T, U> extends AtomicInteger implements pb7<Object>, y38 {
    public final w38<T> e;
    public final AtomicReference<y38> f = new AtomicReference<>();
    public final AtomicLong g = new AtomicLong();
    public nf7<T, U> h;

    public mf7(w38<T> w38Var) {
        this.e = w38Var;
    }

    @Override // defpackage.x38
    public void a() {
        this.h.cancel();
        this.h.m.a();
    }

    @Override // defpackage.x38
    public void b(Throwable th) {
        this.h.cancel();
        this.h.m.b(th);
    }

    @Override // defpackage.y38
    public void cancel() {
        pi7.i(this.f);
    }

    @Override // defpackage.x38
    public void d(Object obj) {
        if (getAndIncrement() == 0) {
            while (this.f.get() != pi7.CANCELLED) {
                this.e.i(this.h);
                if (decrementAndGet() == 0) {
                    return;
                }
            }
        }
    }

    @Override // defpackage.pb7, defpackage.x38
    public void e(y38 y38Var) {
        pi7.t(this.f, this.g, y38Var);
    }

    @Override // defpackage.y38
    public void l(long j) {
        pi7.k(this.f, this.g, j);
    }
}
