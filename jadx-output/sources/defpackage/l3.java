package defpackage;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class l3 extends m3 {
    public final Object a = new Object();
    public final ExecutorService b = Executors.newFixedThreadPool(4, new a(this));
    public volatile Handler c;

    public class a implements ThreadFactory {
        public final AtomicInteger e = new AtomicInteger(0);

        public a(l3 l3Var) {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName(String.format("arch_disk_io_%d", Integer.valueOf(this.e.getAndIncrement())));
            return thread;
        }
    }

    @Override // defpackage.m3
    public void a(Runnable runnable) {
        this.b.execute(runnable);
    }

    @Override // defpackage.m3
    public boolean b() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    @Override // defpackage.m3
    public void c(Runnable runnable) {
        if (this.c == null) {
            synchronized (this.a) {
                if (this.c == null) {
                    this.c = new Handler(Looper.getMainLooper());
                }
            }
        }
        this.c.post(runnable);
    }
}
