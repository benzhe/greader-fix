package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.rtb.SignalCallbacks;

/* loaded from: classes.dex */
public final class hj0 implements SignalCallbacks {
    public final /* synthetic */ aj0 a;

    public hj0(aj0 aj0Var) {
        this.a = aj0Var;
    }

    @Override // com.google.android.gms.ads.mediation.rtb.SignalCallbacks
    public final void onFailure(String str) {
        try {
            this.a.onFailure(str);
        } catch (RemoteException e) {
            is0.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.rtb.SignalCallbacks
    public final void onSuccess(String str) {
        try {
            this.a.p5(str);
        } catch (RemoteException e) {
            is0.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.rtb.SignalCallbacks
    public final void onFailure(AdError adError) {
        try {
            this.a.H6(adError.zzdr());
        } catch (RemoteException e) {
            is0.zzc("", e);
        }
    }
}
