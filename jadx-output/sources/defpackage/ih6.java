package defpackage;

import java.util.Deque;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class ih6 extends og4 {
    public static final ThreadLocal<Deque<Runnable>> h = new th6();
    public final ExecutorService e = new ThreadPoolExecutor(0, Runtime.getRuntime().availableProcessors(), 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactory(this) { // from class: sh6
        public final ih6 e;

        {
            this.e = this;
        }

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            ih6 ih6Var = this.e;
            Thread threadNewThread = ih6Var.f.newThread(runnable);
            synchronized (ih6Var.g) {
                ih6Var.g.put(threadNewThread, null);
            }
            return threadNewThread;
        }
    });
    public final ThreadFactory f = Executors.defaultThreadFactory();
    public final WeakHashMap<Thread, Void> g = new WeakHashMap<>();

    public static void a(Runnable runnable) {
        Deque<Runnable> deque = h.get();
        deque.add(runnable);
        if (deque.size() > 1) {
            return;
        }
        do {
            runnable.run();
            deque.removeFirst();
            runnable = deque.peekFirst();
        } while (runnable != null);
    }

    @Override // java.util.concurrent.Executor
    public void execute(final Runnable runnable) {
        boolean zContainsKey;
        synchronized (this.g) {
            zContainsKey = this.g.containsKey(Thread.currentThread());
        }
        if (zContainsKey) {
            a(runnable);
        } else {
            this.e.execute(new Runnable(runnable) { // from class: rh6
                public final Runnable e;

                {
                    this.e = runnable;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    ih6.a(this.e);
                }
            });
        }
    }
}
