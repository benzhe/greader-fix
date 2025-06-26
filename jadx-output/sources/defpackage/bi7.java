package defpackage;

import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* loaded from: classes2.dex */
public final class bi7 extends AtomicReferenceArray<Object> implements Runnable, Callable<Object>, ic7 {
    public static final Object f = new Object();
    public static final Object g = new Object();
    public static final Object h = new Object();
    public static final Object i = new Object();
    public final Runnable e;

    public bi7(Runnable runnable, xc7 xc7Var) {
        super(3);
        this.e = runnable;
        lazySet(0, xc7Var);
    }

    public void a(Future<?> future) {
        Object obj;
        do {
            obj = get(1);
            if (obj == i) {
                return;
            }
            if (obj == g) {
                future.cancel(false);
                return;
            } else if (obj == h) {
                future.cancel(true);
                return;
            }
        } while (!compareAndSet(1, obj, future));
    }

    @Override // java.util.concurrent.Callable
    public Object call() {
        run();
        return null;
    }

    @Override // defpackage.ic7
    public void k() {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        while (true) {
            Object obj5 = get(1);
            if (obj5 == i || obj5 == (obj3 = g) || obj5 == (obj4 = h)) {
                break;
            }
            boolean z = get(2) != Thread.currentThread();
            if (z) {
                obj3 = obj4;
            }
            if (compareAndSet(1, obj5, obj3)) {
                if (obj5 != null) {
                    ((Future) obj5).cancel(z);
                }
            }
        }
        do {
            obj = get(0);
            if (obj == i || obj == (obj2 = f) || obj == null) {
                return;
            }
        } while (!compareAndSet(0, obj, obj2));
        ((xc7) obj).c(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        Object obj;
        Object obj2;
        Object obj3;
        boolean zCompareAndSet;
        Object obj4;
        Object obj5;
        lazySet(2, Thread.currentThread());
        try {
            this.e.run();
        } finally {
            try {
                lazySet(2, null);
                obj4 = get(0);
                if (obj4 != f) {
                    ((xc7) obj4).c(this);
                }
                do {
                    obj5 = get(1);
                    if (obj5 != g) {
                        return;
                    } else {
                        return;
                    }
                } while (!compareAndSet(1, obj5, i));
            } catch (Throwable th) {
                do {
                    if (obj == obj2) {
                        break;
                    } else if (obj == obj3) {
                        break;
                    }
                } while (!zCompareAndSet);
            }
        }
        lazySet(2, null);
        obj4 = get(0);
        if (obj4 != f && compareAndSet(0, obj4, i) && obj4 != null) {
            ((xc7) obj4).c(this);
        }
        do {
            obj5 = get(1);
            if (obj5 != g || obj5 == h) {
                return;
            }
        } while (!compareAndSet(1, obj5, i));
    }
}
