package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdCallback;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;

/* loaded from: classes.dex */
public final class ij0 implements MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> {
    public final /* synthetic */ oi0 a;
    public final /* synthetic */ ng0 b;

    public ij0(oi0 oi0Var, ng0 ng0Var) {
        this.a = oi0Var;
        this.b = ng0Var;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        onFailure(new AdError(0, str, AdError.UNDEFINED_DOMAIN));
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final MediationNativeAdCallback onSuccess(UnifiedNativeAdMapper unifiedNativeAdMapper) {
        UnifiedNativeAdMapper unifiedNativeAdMapper2 = unifiedNativeAdMapper;
        if (unifiedNativeAdMapper2 != null) {
            try {
                this.a.T5(new ji0(unifiedNativeAdMapper2));
            } catch (RemoteException e) {
                is0.zzc("", e);
            }
            return new jj0(this.b);
        }
        is0.zzez("Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad.");
        try {
            this.a.j("Adapter returned null.");
        } catch (RemoteException e2) {
            is0.zzc("", e2);
        }
        return null;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        try {
            this.a.l(adError.zzdr());
        } catch (RemoteException e) {
            is0.zzc("", e);
        }
    }
}
