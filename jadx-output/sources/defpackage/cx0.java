package defpackage;

import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.overlay.zzp;

/* loaded from: classes.dex */
public final class cx0 implements zzp {
    public xw0 e;
    public zzp f;

    public cx0(xw0 xw0Var, zzp zzpVar) {
        this.e = xw0Var;
        this.f = zzpVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onPause() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onResume() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onUserLeaveHint() {
        zzp zzpVar = this.f;
        if (zzpVar != null) {
            zzpVar.onUserLeaveHint();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zza(zzl zzlVar) {
        zzp zzpVar = this.f;
        if (zzpVar != null) {
            zzpVar.zza(zzlVar);
        }
        this.e.A0();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzvz() {
        zzp zzpVar = this.f;
        if (zzpVar != null) {
            zzpVar.zzvz();
        }
        this.e.h0();
    }
}
