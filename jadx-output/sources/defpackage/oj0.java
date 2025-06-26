package defpackage;

import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzo;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzaqt;

/* loaded from: classes.dex */
public final class oj0 implements Runnable {
    public final /* synthetic */ AdOverlayInfoParcel e;
    public final /* synthetic */ zzaqt f;

    public oj0(zzaqt zzaqtVar, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.f = zzaqtVar;
        this.e = adOverlayInfoParcel;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzr.zzku();
        zzo.zza(this.f.a, this.e, true);
    }
}
