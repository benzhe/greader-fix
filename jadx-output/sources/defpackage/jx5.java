package defpackage;

import java.util.concurrent.Executor;
import java.util.concurrent.Semaphore;

/* loaded from: classes.dex */
public class jx5 implements Executor {
    public Semaphore e = new Semaphore(0);
    public int f = 0;

    @Override // java.util.concurrent.Executor
    public void execute(final Runnable runnable) {
        this.f++;
        nx5.c.execute(new Runnable(this, runnable) { // from class: ix5
            public final jx5 e;
            public final Runnable f;

            {
                this.e = this;
                this.f = runnable;
            }

            @Override // java.lang.Runnable
            public void run() {
                jx5 jx5Var = this.e;
                this.f.run();
                jx5Var.e.release();
            }
        });
    }
}
