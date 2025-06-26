package defpackage;

import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.overlay.zzp;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.internal.ads.zzvh;
import com.google.android.gms.internal.ads.zzvv;
import java.util.Objects;

/* loaded from: classes.dex */
public final class rc1 extends AdMetadataListener implements AppEventListener, zzp, ca1, ra1, va1, xb1, hc1, er3 {
    public final vc1 e = new vc1(this, null);
    public w52 f;
    public q62 g;
    public mg2 h;
    public ej2 i;

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> void t(T t, yc1<T> yc1Var) {
        if (t != 0) {
            ((ej2) t).onAdMetadataChanged();
        }
    }

    @Override // defpackage.ca1
    public final void O(gn0 gn0Var, String str, String str2) {
        w52 w52Var = this.f;
        ej2 ej2Var = this.i;
        if (ej2Var != null) {
            ej2Var.O(gn0Var, str, str2);
        }
    }

    @Override // defpackage.ra1
    public final void d(zzvh zzvhVar) {
        ej2 ej2Var = this.i;
        if (ej2Var != null) {
            ej2Var.d(zzvhVar);
        }
        w52 w52Var = this.f;
        if (w52Var != null) {
            w52Var.d(zzvhVar);
        }
    }

    @Override // defpackage.xb1
    public final void g6() {
        mg2 mg2Var = this.h;
        if (mg2Var != null) {
            mg2Var.g6();
        }
    }

    @Override // defpackage.er3
    public final void onAdClicked() {
        w52 w52Var = this.f;
        if (w52Var != null) {
            w52Var.onAdClicked();
        }
        q62 q62Var = this.g;
        if (q62Var != null) {
            q62Var.onAdClicked();
        }
    }

    @Override // defpackage.ca1
    public final void onAdClosed() {
        w52 w52Var = this.f;
        if (w52Var != null) {
            w52Var.onAdClosed();
        }
        ej2 ej2Var = this.i;
        if (ej2Var != null) {
            ej2Var.onAdClosed();
        }
    }

    @Override // defpackage.va1
    public final void onAdImpression() {
        w52 w52Var = this.f;
        if (w52Var != null) {
            c50.s2(w52Var.e, a62.a);
        }
    }

    @Override // defpackage.ca1
    public final void onAdLeftApplication() {
        w52 w52Var = this.f;
        if (w52Var != null) {
            w52Var.onAdLeftApplication();
        }
        ej2 ej2Var = this.i;
        if (ej2Var == null) {
            return;
        }
        Objects.requireNonNull(ej2Var);
        while (true) {
            ej2 ej2Var2 = ej2Var.m;
            if (ej2Var2 == null) {
                c50.s2(ej2Var.i, ij2.a);
                return;
            }
            ej2Var = ej2Var2;
        }
    }

    @Override // com.google.android.gms.ads.reward.AdMetadataListener
    public final void onAdMetadataChanged() {
        t(this.i, tc1.a);
    }

    @Override // defpackage.ca1
    public final void onAdOpened() {
        w52 w52Var = this.f;
        if (w52Var != null) {
            w52Var.onAdOpened();
        }
        ej2 ej2Var = this.i;
        if (ej2Var != null) {
            ej2Var.onAdOpened();
        }
    }

    @Override // com.google.android.gms.ads.doubleclick.AppEventListener
    public final void onAppEvent(String str, String str2) {
        w52 w52Var = this.f;
        if (w52Var != null) {
            w52Var.onAppEvent(str, str2);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onPause() {
        mg2 mg2Var = this.h;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onResume() {
        mg2 mg2Var = this.h;
    }

    @Override // defpackage.ca1
    public final void onRewardedVideoCompleted() {
        w52 w52Var = this.f;
        ej2 ej2Var = this.i;
        if (ej2Var == null) {
            return;
        }
        Objects.requireNonNull(ej2Var);
        while (true) {
            ej2 ej2Var2 = ej2Var.m;
            if (ej2Var2 == null) {
                c50.s2(ej2Var.i, oj2.a);
                return;
            }
            ej2Var = ej2Var2;
        }
    }

    @Override // defpackage.ca1
    public final void onRewardedVideoStarted() {
        w52 w52Var = this.f;
        ej2 ej2Var = this.i;
        if (ej2Var == null) {
            return;
        }
        Objects.requireNonNull(ej2Var);
        while (true) {
            ej2 ej2Var2 = ej2Var.m;
            if (ej2Var2 == null) {
                c50.s2(ej2Var.i, hj2.a);
                return;
            }
            ej2Var = ej2Var2;
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onUserLeaveHint() {
        mg2 mg2Var = this.h;
        if (mg2Var != null) {
            mg2Var.onUserLeaveHint();
        }
    }

    @Override // defpackage.hc1
    public final void s(zzvv zzvvVar) {
        w52 w52Var = this.f;
        if (w52Var != null) {
            w52Var.s(zzvvVar);
        }
        ej2 ej2Var = this.i;
        if (ej2Var != null) {
            Objects.requireNonNull(ej2Var);
            while (true) {
                ej2 ej2Var2 = ej2Var.m;
                if (ej2Var2 == null) {
                    break;
                } else {
                    ej2Var = ej2Var2;
                }
            }
            c50.s2(ej2Var.l, new rj2(zzvvVar));
        }
        mg2 mg2Var = this.h;
        if (mg2Var == null) {
            return;
        }
        Objects.requireNonNull(mg2Var);
        while (true) {
            mg2 mg2Var2 = mg2Var.l;
            if (mg2Var2 == null) {
                c50.s2(mg2Var.k, new og2(zzvvVar));
                return;
            }
            mg2Var = mg2Var2;
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zza(zzl zzlVar) {
        mg2 mg2Var = this.h;
        if (mg2Var != null) {
            mg2Var.zza(zzlVar);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzvz() {
        mg2 mg2Var = this.h;
        if (mg2Var != null) {
            mg2Var.zzvz();
        }
    }
}
