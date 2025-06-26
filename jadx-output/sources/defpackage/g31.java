package defpackage;

import com.google.android.gms.ads.internal.zzr;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class g31 implements an3 {
    public final ScheduledExecutorService a;
    public final b20 b;
    public ScheduledFuture<?> c;
    public long d = -1;
    public long e = -1;
    public Runnable f = null;
    public boolean g = false;

    public g31(ScheduledExecutorService scheduledExecutorService, b20 b20Var) {
        this.a = scheduledExecutorService;
        this.b = b20Var;
        zzr.zzky().d(this);
    }

    @Override // defpackage.an3
    public final void a(boolean z) {
        ScheduledFuture<?> scheduledFuture;
        if (z) {
            synchronized (this) {
                if (this.g) {
                    if (this.e > 0 && (scheduledFuture = this.c) != null && scheduledFuture.isCancelled()) {
                        this.c = this.a.schedule(this.f, this.e, TimeUnit.MILLISECONDS);
                    }
                    this.g = false;
                }
            }
            return;
        }
        synchronized (this) {
            if (!this.g) {
                ScheduledFuture<?> scheduledFuture2 = this.c;
                if (scheduledFuture2 == null || scheduledFuture2.isDone()) {
                    this.e = -1L;
                } else {
                    this.c.cancel(true);
                    this.e = this.d - this.b.b();
                }
                this.g = true;
            }
        }
    }

    public final synchronized void b(int i, Runnable runnable) {
        this.f = runnable;
        long j = i;
        this.d = this.b.b() + j;
        this.c = this.a.schedule(runnable, j, TimeUnit.MILLISECONDS);
    }
}
