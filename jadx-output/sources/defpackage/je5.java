package defpackage;

import java.lang.Thread;
import java.util.Locale;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes.dex */
public final class je5 implements ThreadFactory {
    public final /* synthetic */ ThreadFactory e;
    public final /* synthetic */ String f;
    public final /* synthetic */ AtomicLong g;
    public final /* synthetic */ Boolean h;

    public je5(ThreadFactory threadFactory, String str, AtomicLong atomicLong, Boolean bool, Integer num, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.e = threadFactory;
        this.f = str;
        this.g = atomicLong;
        this.h = bool;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread threadNewThread = this.e.newThread(runnable);
        String str = this.f;
        if (str != null) {
            threadNewThread.setName(String.format(Locale.ROOT, str, Long.valueOf(this.g.getAndIncrement())));
        }
        Boolean bool = this.h;
        if (bool != null) {
            threadNewThread.setDaemon(bool.booleanValue());
        }
        return threadNewThread;
    }
}
