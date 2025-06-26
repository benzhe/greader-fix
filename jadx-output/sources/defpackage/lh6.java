package defpackage;

import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public class lh6 {
    public boolean b;
    public final Object a = new Object();
    public final Queue<a> c = new ArrayDeque();
    public final AtomicReference<Thread> d = new AtomicReference<>();

    public static class a {
        public final Executor a;
        public final Runnable b;

        public a(Executor executor, Runnable runnable, yh6 yh6Var) {
            this.a = executor;
            this.b = runnable;
        }
    }

    public void a(Executor executor, Runnable runnable) {
        synchronized (this.a) {
            if (this.b) {
                this.c.add(new a(executor, runnable, null));
                return;
            }
            this.b = true;
            try {
                executor.execute(new zh6(this, runnable));
            } catch (RejectedExecutionException unused) {
                b();
            }
        }
    }

    public final void b() {
        synchronized (this.a) {
            if (this.c.isEmpty()) {
                this.b = false;
            } else {
                a aVarRemove = this.c.remove();
                c(aVarRemove.a, aVarRemove.b);
            }
        }
    }

    public final void c(Executor executor, Runnable runnable) {
        try {
            executor.execute(new zh6(this, runnable));
        } catch (RejectedExecutionException unused) {
            b();
        }
    }
}
