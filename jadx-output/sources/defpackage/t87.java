package defpackage;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public class t87 implements Executor {
    public static final Logger g = Logger.getLogger(t87.class.getName());
    public boolean e;
    public ArrayDeque<Runnable> f;

    public final void a() {
        while (true) {
            Runnable runnablePoll = this.f.poll();
            if (runnablePoll == null) {
                return;
            }
            try {
                runnablePoll.run();
            } catch (Throwable th) {
                g.log(Level.SEVERE, "Exception while executing runnable " + runnablePoll, th);
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        c50.A(runnable, "'task' must not be null.");
        if (this.e) {
            if (this.f == null) {
                this.f = new ArrayDeque<>(4);
            }
            this.f.add(runnable);
            return;
        }
        this.e = true;
        try {
            runnable.run();
        } catch (Throwable th) {
            try {
                g.log(Level.SEVERE, "Exception while executing runnable " + runnable, th);
                if (this.f != null) {
                }
            } finally {
                if (this.f != null) {
                    a();
                }
                this.e = false;
            }
        }
    }
}
