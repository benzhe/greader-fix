package defpackage;

import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.Semaphore;

/* loaded from: classes.dex */
public class tx5 implements Executor {
    public final Executor e;
    public final Semaphore f;

    public tx5(int i, Executor executor) {
        this.f = new Semaphore(i);
        this.e = executor;
    }

    @Override // java.util.concurrent.Executor
    public void execute(final Runnable runnable) {
        if (!this.f.tryAcquire()) {
            runnable.run();
            return;
        }
        try {
            this.e.execute(new Runnable(this, runnable) { // from class: sx5
                public final tx5 e;
                public final Runnable f;

                {
                    this.e = this;
                    this.f = runnable;
                }

                @Override // java.lang.Runnable
                public void run() {
                    tx5 tx5Var = this.e;
                    this.f.run();
                    tx5Var.f.release();
                }
            });
        } catch (RejectedExecutionException unused) {
            runnable.run();
        }
    }
}
