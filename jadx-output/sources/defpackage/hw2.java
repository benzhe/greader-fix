package defpackage;

import java.util.Objects;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class hw2<V> extends mv2<V> {
    public aw2<V> l;
    public ScheduledFuture<?> m;

    public hw2(aw2<V> aw2Var) {
        Objects.requireNonNull(aw2Var);
        this.l = aw2Var;
    }

    @Override // defpackage.su2
    public final void b() {
        f(this.l);
        ScheduledFuture<?> scheduledFuture = this.m;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.l = null;
        this.m = null;
    }

    @Override // defpackage.su2
    public final String g() {
        aw2<V> aw2Var = this.l;
        ScheduledFuture<?> scheduledFuture = this.m;
        if (aw2Var == null) {
            return null;
        }
        String strValueOf = String.valueOf(aw2Var);
        String strC = jo.c(strValueOf.length() + 14, "inputFuture=[", strValueOf, "]");
        if (scheduledFuture == null) {
            return strC;
        }
        long delay = scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
        if (delay <= 0) {
            return strC;
        }
        String strValueOf2 = String.valueOf(strC);
        StringBuilder sb = new StringBuilder(strValueOf2.length() + 43);
        sb.append(strValueOf2);
        sb.append(", remaining delay=[");
        sb.append(delay);
        sb.append(" ms]");
        return sb.toString();
    }
}
