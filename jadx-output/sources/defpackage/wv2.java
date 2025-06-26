package defpackage;

import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.LockSupport;

/* loaded from: classes.dex */
public abstract class wv2<T> extends AtomicReference<Runnable> implements Runnable {
    public static final Runnable e = new xv2(null);
    public static final Runnable f = new xv2(null);
    public static final Runnable g = new xv2(null);

    public final void a() {
        Runnable runnable = get();
        if ((runnable instanceof Thread) && compareAndSet(runnable, f)) {
            try {
                ((Thread) runnable).interrupt();
            } finally {
                if (getAndSet(e) == g) {
                    LockSupport.unpark((Thread) runnable);
                }
            }
        }
    }

    public abstract boolean b();

    public abstract void c(T t, Throwable th);

    public abstract T d() throws Exception;

    public abstract String e();

    @Override // java.lang.Runnable
    public final void run() {
        T tD;
        Thread threadCurrentThread = Thread.currentThread();
        if (compareAndSet(null, threadCurrentThread)) {
            boolean z = !b();
            if (z) {
                try {
                    tD = d();
                } catch (Throwable th) {
                    if (!compareAndSet(threadCurrentThread, e)) {
                        Runnable runnable = get();
                        boolean z2 = false;
                        int i = 0;
                        while (true) {
                            Runnable runnable2 = f;
                            if (runnable != runnable2 && runnable != g) {
                                break;
                            }
                            i++;
                            if (i > 1000) {
                                Runnable runnable3 = g;
                                if (runnable == runnable3 || compareAndSet(runnable2, runnable3)) {
                                    z2 = Thread.interrupted() || z2;
                                    LockSupport.park(this);
                                }
                            } else {
                                Thread.yield();
                            }
                            runnable = get();
                        }
                        if (z2) {
                            threadCurrentThread.interrupt();
                        }
                    }
                    if (z) {
                        c(null, th);
                        return;
                    }
                    return;
                }
            } else {
                tD = null;
            }
            if (!compareAndSet(threadCurrentThread, e)) {
                Runnable runnable4 = get();
                boolean z3 = false;
                int i2 = 0;
                while (true) {
                    Runnable runnable5 = f;
                    if (runnable4 != runnable5 && runnable4 != g) {
                        break;
                    }
                    i2++;
                    if (i2 > 1000) {
                        Runnable runnable6 = g;
                        if (runnable4 == runnable6 || compareAndSet(runnable5, runnable6)) {
                            z3 = Thread.interrupted() || z3;
                            LockSupport.park(this);
                        }
                    } else {
                        Thread.yield();
                    }
                    runnable4 = get();
                }
                if (z3) {
                    threadCurrentThread.interrupt();
                }
            }
            if (z) {
                c(tD, null);
            }
        }
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        String strC;
        Runnable runnable = get();
        if (runnable == e) {
            strC = "running=[DONE]";
        } else if (runnable == f) {
            strC = "running=[INTERRUPTED]";
        } else if (runnable instanceof Thread) {
            String name = ((Thread) runnable).getName();
            strC = jo.c(jo.x(name, 21), "running=[RUNNING ON ", name, "]");
        } else {
            strC = "running=[NOT STARTED YET]";
        }
        String strE = e();
        return jo.c(jo.x(strE, jo.x(strC, 2)), strC, ", ", strE);
    }
}
