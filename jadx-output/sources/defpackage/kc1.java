package defpackage;

import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class kc1 extends xd1<oc1> {
    public final ScheduledExecutorService f;
    public final b20 g;
    public long h;
    public long i;
    public boolean j;
    public ScheduledFuture<?> k;

    public kc1(ScheduledExecutorService scheduledExecutorService, b20 b20Var) {
        super(Collections.emptySet());
        this.h = -1L;
        this.i = -1L;
        this.j = false;
        this.f = scheduledExecutorService;
        this.g = b20Var;
    }

    public final synchronized void G0(int i) {
        if (i <= 0) {
            return;
        }
        long millis = TimeUnit.SECONDS.toMillis(i);
        if (this.j) {
            long j = this.i;
            if (j <= 0 || millis >= j) {
                millis = j;
            }
            this.i = millis;
            return;
        }
        long jB = this.g.b();
        long j2 = this.h;
        if (jB > j2 || j2 - this.g.b() > millis) {
            H0(millis);
        }
    }

    public final synchronized void H0(long j) {
        ScheduledFuture<?> scheduledFuture = this.k;
        if (scheduledFuture != null && !scheduledFuture.isDone()) {
            this.k.cancel(true);
        }
        this.h = this.g.b() + j;
        this.k = this.f.schedule(new lc1(this, null), j, TimeUnit.MILLISECONDS);
    }
}
