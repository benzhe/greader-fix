package defpackage;

import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public final class ni7<T> extends AtomicInteger implements kd7<T> {
    public final T e;
    public final x38<? super T> f;

    public ni7(x38<? super T> x38Var, T t) {
        this.f = x38Var;
        this.e = t;
    }

    @Override // defpackage.y38
    public void cancel() {
        lazySet(2);
    }

    @Override // defpackage.nd7
    public void clear() {
        lazySet(1);
    }

    @Override // defpackage.jd7
    public int i(int i) {
        return i & 1;
    }

    @Override // defpackage.nd7
    public boolean isEmpty() {
        return get() != 0;
    }

    @Override // defpackage.y38
    public void l(long j) {
        if (pi7.y(j) && compareAndSet(0, 1)) {
            x38<? super T> x38Var = this.f;
            x38Var.d(this.e);
            if (get() != 2) {
                x38Var.a();
            }
        }
    }

    @Override // defpackage.nd7
    public boolean offer(T t) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // defpackage.nd7
    public T poll() {
        if (get() != 0) {
            return null;
        }
        lazySet(1);
        return this.e;
    }
}
