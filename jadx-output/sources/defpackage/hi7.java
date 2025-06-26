package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX WARN: Unexpected interfaces in signature: [java.lang.Object] */
/* loaded from: classes2.dex */
public final class hi7<T> extends AtomicReference<y38> implements pb7<T>, y38, ic7 {
    public final tc7<? super T> e;
    public final tc7<? super Throwable> f;
    public final qc7 g;
    public final tc7<? super y38> h;

    public hi7(tc7<? super T> tc7Var, tc7<? super Throwable> tc7Var2, qc7 qc7Var, tc7<? super y38> tc7Var3) {
        this.e = tc7Var;
        this.f = tc7Var2;
        this.g = qc7Var;
        this.h = tc7Var3;
    }

    @Override // defpackage.x38
    public void a() {
        y38 y38Var = get();
        pi7 pi7Var = pi7.CANCELLED;
        if (y38Var != pi7Var) {
            lazySet(pi7Var);
            try {
                this.g.run();
            } catch (Throwable th) {
                n56.r2(th);
                n56.z1(th);
            }
        }
    }

    @Override // defpackage.x38
    public void b(Throwable th) {
        y38 y38Var = get();
        pi7 pi7Var = pi7.CANCELLED;
        if (y38Var == pi7Var) {
            n56.z1(th);
            return;
        }
        lazySet(pi7Var);
        try {
            this.f.accept(th);
        } catch (Throwable th2) {
            n56.r2(th2);
            n56.z1(new kc7(th, th2));
        }
    }

    public boolean c() {
        return get() == pi7.CANCELLED;
    }

    @Override // defpackage.y38
    public void cancel() {
        pi7.i(this);
    }

    @Override // defpackage.x38
    public void d(T t) {
        if (c()) {
            return;
        }
        try {
            this.e.accept(t);
        } catch (Throwable th) {
            n56.r2(th);
            get().cancel();
            b(th);
        }
    }

    @Override // defpackage.pb7, defpackage.x38
    public void e(y38 y38Var) {
        if (pi7.x(this, y38Var)) {
            try {
                this.h.accept(this);
            } catch (Throwable th) {
                n56.r2(th);
                y38Var.cancel();
                b(th);
            }
        }
    }

    @Override // defpackage.ic7
    public void k() {
        pi7.i(this);
    }

    @Override // defpackage.y38
    public void l(long j) {
        get().l(j);
    }
}
