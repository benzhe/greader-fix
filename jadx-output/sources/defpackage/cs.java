package defpackage;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class cs implements Executor {
    public final Executor e;

    public static class a implements Runnable {
        public final Runnable e;

        public a(Runnable runnable) {
            this.e = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.e.run();
            } catch (Exception e) {
                bi.z("Executor", "Background execution failure.", e);
            }
        }
    }

    public cs(Executor executor) {
        this.e = executor;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.e.execute(new a(runnable));
    }
}
