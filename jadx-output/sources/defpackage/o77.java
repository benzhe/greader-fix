package defpackage;

import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public final class o77 implements Runnable {
    public static final Logger f = Logger.getLogger(o77.class.getName());
    public final Runnable e;

    public o77(Runnable runnable) {
        c50.A(runnable, "task");
        this.e = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.e.run();
        } catch (Throwable th) {
            Logger logger = f;
            Level level = Level.SEVERE;
            StringBuilder sbZ = jo.z("Exception while executing runnable ");
            sbZ.append(this.e);
            logger.log(level, sbZ.toString(), th);
            rd5.c(th);
            throw new AssertionError(th);
        }
    }

    public String toString() {
        StringBuilder sbZ = jo.z("LogExceptionRunnable(");
        sbZ.append(this.e);
        sbZ.append(")");
        return sbZ.toString();
    }
}
