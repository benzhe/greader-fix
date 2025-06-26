package defpackage;

import java.util.concurrent.Future;

/* loaded from: classes.dex */
public final class fo implements Runnable {
    public final /* synthetic */ Future e;
    public final /* synthetic */ Runnable f;

    public fo(Future future, Runnable runnable) {
        this.e = future;
        this.f = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.e.isDone() || this.e.isCancelled()) {
            return;
        }
        this.e.cancel(true);
        pr4.b("BillingClient", "Async task is taking too long, cancel it!");
        Runnable runnable = this.f;
        if (runnable != null) {
            runnable.run();
        }
    }
}
