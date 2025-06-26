package defpackage;

import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class jw2<V> implements Runnable {
    public hw2<V> e;

    public jw2(hw2<V> hw2Var) {
        this.e = hw2Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        aw2<V> aw2Var;
        hw2<V> hw2Var = this.e;
        if (hw2Var == null || (aw2Var = hw2Var.l) == null) {
            return;
        }
        this.e = null;
        if (aw2Var.isDone()) {
            hw2Var.k(aw2Var);
            return;
        }
        try {
            ScheduledFuture<?> scheduledFuture = hw2Var.m;
            hw2Var.m = null;
            String string = "Timed out";
            if (scheduledFuture != null) {
                try {
                    long jAbs = Math.abs(scheduledFuture.getDelay(TimeUnit.MILLISECONDS));
                    if (jAbs > 10) {
                        StringBuilder sb = new StringBuilder(75);
                        sb.append("Timed out");
                        sb.append(" (timeout delayed by ");
                        sb.append(jAbs);
                        sb.append(" ms after scheduled time)");
                        string = sb.toString();
                    }
                } catch (Throwable th) {
                    hw2Var.j(new mw2(string, null));
                    throw th;
                }
            }
            String strValueOf = String.valueOf(string);
            String strValueOf2 = String.valueOf(aw2Var);
            StringBuilder sb2 = new StringBuilder(strValueOf.length() + 2 + strValueOf2.length());
            sb2.append(strValueOf);
            sb2.append(": ");
            sb2.append(strValueOf2);
            hw2Var.j(new mw2(sb2.toString(), null));
        } finally {
            aw2Var.cancel(true);
        }
    }
}
