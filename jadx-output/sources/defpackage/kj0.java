package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;

/* loaded from: classes.dex */
public final class kj0 implements MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> {
    public final /* synthetic */ ti0 a;
    public final /* synthetic */ ng0 b;
    public final /* synthetic */ ej0 c;

    public kj0(ej0 ej0Var, ti0 ti0Var, ng0 ng0Var) {
        this.c = ej0Var;
        this.a = ti0Var;
        this.b = ng0Var;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        onFailure(new AdError(0, str, AdError.UNDEFINED_DOMAIN));
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final MediationRewardedAdCallback onSuccess(MediationRewardedAd mediationRewardedAd) {
        MediationRewardedAd mediationRewardedAd2 = mediationRewardedAd;
        if (mediationRewardedAd2 == null) {
            is0.zzez("Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad.");
            try {
                this.a.j("Adapter returned null.");
            } catch (RemoteException e) {
                is0.zzc("", e);
            }
            return null;
        }
        try {
            this.c.h = mediationRewardedAd2;
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
