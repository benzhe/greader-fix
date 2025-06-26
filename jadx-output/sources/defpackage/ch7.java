package defpackage;

import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public final class ch7<T> extends AtomicInteger implements id7<T>, Runnable {
    public final yb7<? super T> e;
    public final T f;

    public ch7(yb7<? super T> yb7Var, T t) {
        this.e = yb7Var;
        this.f = t;
    }

    @Override // defpackage.nd7
    public void clear() {
        lazySet(3);
    }

    @Override // defpackage.nd7
    public boolean isEmpty() {
        return get() != 1;
    }

    @Override // defpackage.ic7
    public void k() {
        set(3);
    }

    @Override // defpackage.nd7
    public boolean offer(T t) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // defpackage.nd7
    public T poll() throws Exception {
        if (get() != 1) {
            return null;
        }
        lazySet(3);
        return this.f;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (get() == 0 && compareAndSet(0, 2)) {
            this.e.d(this.f);
            if (get() == 2) {
                lazySet(3);
                this.e.a();
            }
        }
    }
}
