package defpackage;

import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class ms0 {
    public static final zv2 a;
    public static final zv2 b;
    public static final zv2 c;
    public static final ScheduledExecutorService d;
    public static final zv2 e;
    public static final zv2 f;

    static {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        a = a(new ThreadPoolExecutor(2, Integer.MAX_VALUE, 10L, timeUnit, new SynchronousQueue(), new os0("Default")));
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(5, 5, 10L, timeUnit, new LinkedBlockingQueue(), new os0("Loader"));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        b = a(threadPoolExecutor);
        ThreadPoolExecutor threadPoolExecutor2 = new ThreadPoolExecutor(1, 1, 10L, timeUnit, new LinkedBlockingQueue(), new os0("Activeview"));
        threadPoolExecutor2.allowCoreThreadTimeOut(true);
        c = a(threadPoolExecutor2);
        d = new ps0(new os0("Schedule"));
        e = a(new rs0());
        f = a(lv2.INSTANCE);
    }

    public static zv2 a(Executor executor) {
        return new qs0(executor, null);
    }
}
