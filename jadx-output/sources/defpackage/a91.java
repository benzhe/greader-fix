package defpackage;

import com.google.android.gms.internal.ads.zzvh;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class a91 implements ca1, ra1, id1, hf1 {
    public final qa1 e;
    public final sk2 f;
    public final ScheduledExecutorService g;
    public final Executor h;
    public iw2<Boolean> i = new iw2<>();
    public ScheduledFuture<?> j;

    public a91(qa1 qa1Var, sk2 sk2Var, ScheduledExecutorService scheduledExecutorService, Executor executor) {
        this.e = qa1Var;
        this.f = sk2Var;
        this.g = scheduledExecutorService;
        this.h = executor;
    }

    @Override // defpackage.ca1
    public final void O(gn0 gn0Var, String str, String str2) {
    }

    @Override // defpackage.hf1
    public final void a() {
    }

    @Override // defpackage.hf1
    public final void b() {
        if (((Boolean) os3.j.f.a(y40.b1)).booleanValue()) {
            sk2 sk2Var = this.f;
            if (sk2Var.S == 2) {
                if (sk2Var.p == 0) {
                    this.e.onAdImpression();
                    return;
                }
                iw2<Boolean> iw2Var = this.i;
                iw2Var.i(new sv2(iw2Var, new c91(this)), this.h);
                this.j = this.g.schedule(new Runnable(this) { // from class: z81
                    public final a91 e;

                    {
                        this.e = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        a91 a91Var = this.e;
                        synchronized (a91Var) {
                            if (a91Var.i.isDone()) {
                                return;
                            }
                            a91Var.i.h(Boolean.TRUE);
                        }
                    }
                }, this.f.p, TimeUnit.MILLISECONDS);
            }
        }
    }

    @Override // defpackage.ra1
    public final synchronized void d(zzvh zzvhVar) {
        if (this.i.isDone()) {
            return;
        }
        ScheduledFuture<?> scheduledFuture = this.j;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        this.i.j(new Exception());
    }

    @Override // defpackage.ca1
    public final void onAdClosed() {
    }

    @Override // defpackage.ca1
    public final void onAdLeftApplication() {
    }

    @Override // defpackage.ca1
    public final void onAdOpened() {
        int i = this.f.S;
        if (i == 0 || i == 1) {
            this.e.onAdImpression();
        }
    }

    @Override // defpackage.ca1
    public final void onRewardedVideoCompleted() {
    }

    @Override // defpackage.ca1
    public final void onRewardedVideoStarted() {
    }

    @Override // defpackage.id1
    public final synchronized void r() {
        if (this.i.isDone()) {
            return;
        }
        ScheduledFuture<?> scheduledFuture = this.j;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        this.i.h(Boolean.TRUE);
    }

    @Override // defpackage.id1
    public final void s() {
    }
}
