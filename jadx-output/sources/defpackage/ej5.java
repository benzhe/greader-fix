package defpackage;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes.dex */
public class ej5 implements ThreadFactory {
    public final /* synthetic */ String e;
    public final /* synthetic */ AtomicLong f;

    public class a extends sh5 {
        public final /* synthetic */ Runnable e;

        public a(ej5 ej5Var, Runnable runnable) {
            this.e = runnable;
        }

        @Override // defpackage.sh5
        public void a() {
            this.e.run();
        }
    }

    public ej5(String str, AtomicLong atomicLong) {
        this.e = str;
        this.f = atomicLong;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread threadNewThread = Executors.defaultThreadFactory().newThread(new a(this, runnable));
        threadNewThread.setName(this.e + this.f.getAndIncrement());
        return threadNewThread;
    }
}
