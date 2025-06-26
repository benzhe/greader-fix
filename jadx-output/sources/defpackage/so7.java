package defpackage;

import java.lang.reflect.Method;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public final class so7 extends sp7 {
    public static final int g;
    public static final so7 h = new so7();
    public static volatile Executor pool;

    public static final class a implements ThreadFactory {
        public final /* synthetic */ AtomicInteger e;

        public a(AtomicInteger atomicInteger) {
            this.e = atomicInteger;
        }

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            StringBuilder sbZ = jo.z("CommonPool-worker-");
            sbZ.append(this.e.incrementAndGet());
            Thread thread = new Thread(runnable, sbZ.toString());
            thread.setDaemon(true);
            return thread;
        }
    }

    static {
        String property;
        int iIntValue;
        try {
            property = System.getProperty("kotlinx.coroutines.default.parallelism");
        } catch (Throwable unused) {
            property = null;
        }
        if (property != null) {
            Integer numD = co7.D(property);
            if (numD == null || numD.intValue() < 1) {
                throw new IllegalStateException(jo.n("Expected positive number in kotlinx.coroutines.default.parallelism, but has ", property).toString());
            }
            iIntValue = numD.intValue();
        } else {
            iIntValue = -1;
        }
        g = iIntValue;
    }

    public final ExecutorService D() {
        Class<?> cls;
        ExecutorService executorService;
        Integer num;
        if (System.getSecurityManager() != null) {
            return x();
        }
        ExecutorService executorService2 = null;
        try {
            cls = Class.forName("java.util.concurrent.ForkJoinPool");
        } catch (Throwable unused) {
            cls = null;
        }
        if (cls == null) {
            return x();
        }
        if (g < 0) {
            try {
                Method method = cls.getMethod("commonPool", new Class[0]);
                Object objInvoke = method != null ? method.invoke(null, new Object[0]) : null;
                if (!(objInvoke instanceof ExecutorService)) {
                    objInvoke = null;
                }
                executorService = (ExecutorService) objInvoke;
            } catch (Throwable unused2) {
                executorService = null;
            }
            if (executorService != null) {
                Objects.requireNonNull(h);
                executorService.submit(to7.e);
                try {
                    Object objInvoke2 = cls.getMethod("getPoolSize", new Class[0]).invoke(executorService, new Object[0]);
                    if (!(objInvoke2 instanceof Integer)) {
                        objInvoke2 = null;
                    }
                    num = (Integer) objInvoke2;
                } catch (Throwable unused3) {
                    num = null;
                }
                if (!(num != null && num.intValue() >= 1)) {
                    executorService = null;
                }
                if (executorService != null) {
                    return executorService;
                }
            }
        }
        try {
            Object objNewInstance = cls.getConstructor(Integer.TYPE).newInstance(Integer.valueOf(h.E()));
            if (!(objNewInstance instanceof ExecutorService)) {
                objNewInstance = null;
            }
            executorService2 = (ExecutorService) objNewInstance;
        } catch (Throwable unused4) {
        }
        return executorService2 != null ? executorService2 : x();
    }

    public final int E() {
        Integer numValueOf = Integer.valueOf(g);
        if (!(numValueOf.intValue() > 0)) {
            numValueOf = null;
        }
        if (numValueOf != null) {
            return numValueOf.intValue();
        }
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors() - 1;
        return iAvailableProcessors >= 1 ? iAvailableProcessors : 1;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new IllegalStateException("Close cannot be invoked on CommonPool".toString());
    }

    @Override // defpackage.cp7
    public void t(rk7 rk7Var, Runnable runnable) {
        try {
            Executor executorD = pool;
            if (executorD == null) {
                synchronized (this) {
                    executorD = pool;
                    if (executorD == null) {
                        executorD = D();
                        pool = executorD;
                    }
                }
            }
            executorD.execute(runnable);
        } catch (RejectedExecutionException unused) {
            gp7.m.Z(runnable);
        }
    }

    @Override // defpackage.cp7
    public String toString() {
        return "CommonPool";
    }

    public final ExecutorService x() {
        return Executors.newFixedThreadPool(E(), new a(new AtomicInteger()));
    }
}
