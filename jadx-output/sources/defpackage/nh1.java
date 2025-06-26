package defpackage;

import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.overlay.zzp;

/* loaded from: classes.dex */
public final class nh1 implements zzp {
    public final wb1 e;
    public final of1 f;

    public nh1(wb1 wb1Var, of1 of1Var) {
        this.e = wb1Var;
        this.f = of1Var;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onPause() {
        this.e.onPause();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onResume() {
        this.e.onResume();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onUserLeaveHint() {
        this.e.onUserLeaveHint();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zza(zzl zzlVar) {
        this.e.zza(zzlVar);
        this.f.D0(qf1.a);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzvz() {
        this.e.zzvz();
        this.f.D0(nf1.a);
    }
}
