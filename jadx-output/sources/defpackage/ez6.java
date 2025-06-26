package defpackage;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public class ez6 implements ThreadFactory {
    public static final AtomicInteger i = new AtomicInteger(1);
    public final String g;
    public final int h;
    public final AtomicInteger f = new AtomicInteger(1);
    public final ThreadGroup e = Thread.currentThread().getThreadGroup();

    public ez6(int i2, String str) {
        this.h = i2;
        StringBuilder sbZ = jo.z(str);
        sbZ.append(i.getAndIncrement());
        sbZ.append("-thread-");
        this.g = sbZ.toString();
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(this.e, runnable, this.g + this.f.getAndIncrement(), 0L);
        if (thread.isDaemon()) {
            thread.setDaemon(false);
        }
        thread.setPriority(this.h);
        return thread;
    }
}
