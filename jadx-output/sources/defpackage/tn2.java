package defpackage;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class tn2 implements ThreadFactory {
    public final AtomicInteger e = new AtomicInteger(1);

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, jo.M(25, "AdWorker(NG) #", this.e.getAndIncrement()));
    }
}
