package defpackage;

import java.util.concurrent.Delayed;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class fw2<V> extends qv2<V> implements aw2<V>, ScheduledFuture<V> {
    public final ScheduledFuture<?> f;

    public fw2(aw2<V> aw2Var, ScheduledFuture<?> scheduledFuture) {
        super(aw2Var);
        this.f = scheduledFuture;
    }

    @Override // defpackage.ov2, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        boolean zCancel = super.cancel(z);
        if (zCancel) {
            this.f.cancel(z);
        }
        return zCancel;
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Delayed delayed) {
        return this.f.compareTo(delayed);
    }

    @Override // java.util.concurrent.Delayed
    public final long getDelay(TimeUnit timeUnit) {
        return this.f.getDelay(timeUnit);
    }
}
