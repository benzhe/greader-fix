package defpackage;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class pq0 implements ThreadFactory {
    public final AtomicInteger e = new AtomicInteger(1);

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, jo.M(42, "AdWorker(SCION_TASK_EXECUTOR) #", this.e.getAndIncrement()));
    }
}
