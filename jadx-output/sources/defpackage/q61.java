package defpackage;

import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class q61 {
    public final Executor a;
    public final ScheduledExecutorService b;
    public final aw2<l61> c;
    public volatile boolean d = true;

    public q61(Executor executor, ScheduledExecutorService scheduledExecutorService, aw2<l61> aw2Var) {
        this.a = executor;
        this.b = scheduledExecutorService;
        this.c = aw2Var;
    }

    public static void a(final q61 q61Var) {
        Objects.requireNonNull(q61Var);
        ms0.e.execute(new Runnable(q61Var) { // from class: u61
            public final q61 e;

            {
                this.e = q61Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.e.d = false;
            }
        });
    }
}
