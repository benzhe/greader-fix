package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;

/* loaded from: classes.dex */
public final class fj0 implements MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> {
    public final /* synthetic */ ni0 a;
    public final /* synthetic */ ng0 b;
    public final /* synthetic */ ej0 c;

    public fj0(ej0 ej0Var, ni0 ni0Var, ng0 ng0Var) {
        this.c = ej0Var;
        this.a = ni0Var;
        this.b = ng0Var;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        onFailure(new AdError(0, str, AdError.UNDEFINED_DOMAIN));
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final MediationInterstitialAdCallback onSuccess(MediationInterstitialAd mediationInterstitialAd) {
        MediationInterstitialAd mediationInterstitialAd2 = mediationInterstitialAd;
        if (mediationInterstitialAd2 == null) {
            is0.zzez("Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad.");
            try {
                this.a.j("Adapter returned null.");
            } catch (RemoteException e) {
                is0.zzc("", e);
            }
            return null;
        }
        try {
            this.c.g = mediationInterstitialAd2;
            this.a.h0();
        } catch (RemoteException e2) {
            is0.zzc("", e2);
        }
        return new jj0(this.b);
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
