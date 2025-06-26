package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.ads.mediation.MediationInterscrollerAd;

/* loaded from: classes.dex */
public final class gj0 implements MediationAdLoadCallback<MediationInterscrollerAd, MediationBannerAdCallback> {
    public final /* synthetic */ ii0 a;
    public final /* synthetic */ ng0 b;

    public gj0(ii0 ii0Var, ng0 ng0Var) {
        this.a = ii0Var;
        this.b = ng0Var;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        onFailure(new AdError(0, str, AdError.UNDEFINED_DOMAIN));
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final MediationBannerAdCallback onSuccess(MediationInterscrollerAd mediationInterscrollerAd) {
        MediationInterscrollerAd mediationInterscrollerAd2 = mediationInterscrollerAd;
        if (mediationInterscrollerAd2 != null) {
            try {
                this.a.N6(new mh0(mediationInterscrollerAd2));
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
