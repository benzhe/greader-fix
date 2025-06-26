package defpackage;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.LockSupport;

/* loaded from: classes2.dex */
public final class gp7 extends op7 implements Runnable {
    public static volatile Thread _thread;
    public static volatile int debugStatus;
    public static final long l;
    public static final gp7 m;

    static {
        Long l2;
        gp7 gp7Var = new gp7();
        m = gp7Var;
        gp7Var.F(false);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        try {
            l2 = Long.getLong("kotlinx.coroutines.DefaultExecutor.keepAlive", 1000L);
        } catch (SecurityException unused) {
            l2 = 1000L;
        }
        l = timeUnit.toNanos(l2.longValue());
    }

    @Override // defpackage.pp7
    public Thread Q() {
        Thread thread = _thread;
        if (thread == null) {
            synchronized (this) {
                thread = _thread;
                if (thread == null) {
                    thread = new Thread(this, "kotlinx.coroutines.DefaultExecutor");
                    _thread = thread;
                    thread.setDaemon(true);
                    thread.start();
                }
            }
        }
        return thread;
    }

    public final synchronized void k0() {
        if (m0()) {
            debugStatus = 3;
            h0();
            notifyAll();
        }
    }

    public final boolean m0() {
        int i = debugStatus;
        return i == 2 || i == 3;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z;
        boolean zD0;
        iq7 iq7Var = iq7.b;
        iq7.a.set(this);
        try {
            synchronized (this) {
                if (m0()) {
                    z = false;
                } else {
                    z = true;
                    debugStatus = 1;
                    notifyAll();
                }
            }
            if (!z) {
                if (zD0) {
                    return;
                } else {
                    return;
                }
            }
            long j = Long.MAX_VALUE;
            while (true) {
                Thread.interrupted();
                long jG0 = g0();
                if (jG0 == Long.MAX_VALUE) {
                    long jNanoTime = System.nanoTime();
                    if (j == Long.MAX_VALUE) {
                        j = l + jNanoTime;
                    }
                    long j2 = j - jNanoTime;
                    if (j2 <= 0) {
                        _thread = null;
                        k0();
                        if (d0()) {
                            return;
                        }
                        Q();
                        return;
                    }
                    if (jG0 > j2) {
                        jG0 = j2;
                    }
                } else {
                    j = Long.MAX_VALUE;
                }
                if (jG0 > 0) {
                    if (m0()) {
                        _thread = null;
                        k0();
                        if (d0()) {
                            return;
                        }
                        Q();
                        return;
                    }
                    LockSupport.parkNanos(this, jG0);
                }
            }
        } finally {
            _thread = null;
            k0();
            if (!d0()) {
                Q();
            }
        }
    }
}
