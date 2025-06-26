package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAd;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;

/* loaded from: classes.dex */
public final class ih0 implements MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> {
    public final /* synthetic */ ng0 a;
    public final /* synthetic */ hh0 b;

    public ih0(hh0 hh0Var, ng0 ng0Var) {
        this.b = hh0Var;
        this.a = ng0Var;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        onFailure(new AdError(0, str, AdError.UNDEFINED_DOMAIN));
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final MediationBannerAdCallback onSuccess(MediationBannerAd mediationBannerAd) {
        MediationBannerAd mediationBannerAd2 = mediationBannerAd;
        try {
            this.b.i = mediationBannerAd2.getView();
            this.a.onAdLoaded();
        } catch (RemoteException e) {
            is0.zzc("", e);
        }
        return new fh0(this.a);
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        try {
            String canonicalName = this.b.e.getClass().getCanonicalName();
            int code = adError.getCode();
            String message = adError.getMessage();
            String domain = adError.getDomain();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 87 + String.valueOf(message).length() + String.valueOf(domain).length());
            sb.append(canonicalName);
            sb.append("failed to loaded mediation ad: ErrorCode = ");
            sb.append(code);
            sb.append(". ErrorMessage = ");
            sb.append(message);
            sb.append(". ErrorDomain = ");
            sb.append(domain);
            is0.zzdz(sb.toString());
            this.a.U(adError.zzdr());
            this.a.t2(adError.getCode(), adError.getMessage());
            this.a.onAdFailedToLoad(adError.getCode());
        } catch (RemoteException e) {
            is0.zzc("", e);
        }
    }
}
