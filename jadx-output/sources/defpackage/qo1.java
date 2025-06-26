package defpackage;

import android.os.Bundle;
import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.overlay.zzp;
import com.google.android.gms.ads.internal.overlay.zzx;

/* loaded from: classes.dex */
public final class qo1 implements zzp, zzx, ra0, ta0, er3 {
    public er3 e;
    public ra0 f;
    public zzp g;
    public ta0 h;
    public zzx i;

    public qo1(no1 no1Var) {
    }

    @Override // defpackage.ra0
    public final synchronized void d(String str, Bundle bundle) {
        ra0 ra0Var = this.f;
        if (ra0Var != null) {
            ra0Var.d(str, bundle);
        }
    }

    @Override // defpackage.er3
    public final synchronized void onAdClicked() {
        er3 er3Var = this.e;
        if (er3Var != null) {
            er3Var.onAdClicked();
        }
    }

    @Override // defpackage.ta0
    public final synchronized void onAppEvent(String str, String str2) {
        ta0 ta0Var = this.h;
        if (ta0Var != null) {
            ta0Var.onAppEvent(str, str2);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final synchronized void onPause() {
        zzp zzpVar = this.g;
        if (zzpVar != null) {
            zzpVar.onPause();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final synchronized void onResume() {
        zzp zzpVar = this.g;
        if (zzpVar != null) {
            zzpVar.onResume();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final synchronized void onUserLeaveHint() {
        zzp zzpVar = this.g;
        if (zzpVar != null) {
            zzpVar.onUserLeaveHint();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final synchronized void zza(zzl zzlVar) {
        zzp zzpVar = this.g;
        if (zzpVar != null) {
            zzpVar.zza(zzlVar);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final synchronized void zzvz() {
        zzp zzpVar = this.g;
        if (zzpVar != null) {
            zzpVar.zzvz();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzx
    public final synchronized void zzws() {
        zzx zzxVar = this.i;
        if (zzxVar != null) {
            zzxVar.zzws();
        }
    }
}
