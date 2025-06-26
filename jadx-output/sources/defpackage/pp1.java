package defpackage;

import com.google.android.gms.ads.internal.zzm;
import java.util.concurrent.ScheduledFuture;

/* loaded from: classes.dex */
public final class pp1 implements zzm {
    public final /* synthetic */ mp1 e;

    public pp1(mp1 mp1Var) {
        this.e = mp1Var;
    }

    @Override // com.google.android.gms.ads.internal.zzm
    public final void zzkr() {
        kc1 kc1Var = this.e.g;
        synchronized (kc1Var) {
            if (!kc1Var.j) {
                ScheduledFuture<?> scheduledFuture = kc1Var.k;
                if (scheduledFuture == null || scheduledFuture.isCancelled()) {
                    kc1Var.i = -1L;
                } else {
                    kc1Var.k.cancel(true);
                    kc1Var.i = kc1Var.h - kc1Var.g.b();
                }
                kc1Var.j = true;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.zzm
    public final void zzks() {
        kc1 kc1Var = this.e.g;
        synchronized (kc1Var) {
            if (kc1Var.j) {
                if (kc1Var.i > 0 && kc1Var.k.isCancelled()) {
                    kc1Var.H0(kc1Var.i);
                }
                kc1Var.j = false;
            }
        }
    }
}
