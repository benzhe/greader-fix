package defpackage;

import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.overlay.zzp;
import com.google.android.gms.internal.ads.zzaqt;

/* loaded from: classes.dex */
public final class mj0 implements zzp {
    public final /* synthetic */ zzaqt e;

    public mj0(zzaqt zzaqtVar) {
        this.e = zzaqtVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onPause() {
        is0.zzdz("AdMobCustomTabsAdapter overlay is paused.");
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onResume() {
        is0.zzdz("AdMobCustomTabsAdapter overlay is resumed.");
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onUserLeaveHint() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zza(zzl zzlVar) {
        is0.zzdz("AdMobCustomTabsAdapter overlay is closed.");
        zzaqt zzaqtVar = this.e;
        zzaqtVar.b.onAdClosed(zzaqtVar);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzvz() {
        is0.zzdz("Opening AdMobCustomTabsAdapter overlay.");
        zzaqt zzaqtVar = this.e;
        zzaqtVar.b.onAdOpened(zzaqtVar);
    }
}
