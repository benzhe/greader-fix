package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;

/* loaded from: classes.dex */
public final class nh0 implements MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> {
    public final /* synthetic */ ng0 a;
    public final /* synthetic */ hh0 b;

    public nh0(hh0 hh0Var, ng0 ng0Var) {
        this.b = hh0Var;
        this.a = ng0Var;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        try {
            String canonicalName = this.b.e.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 31 + String.valueOf(str).length());
            sb.append(canonicalName);
            sb.append("failed to loaded mediation ad: ");
            sb.append(str);
            is0.zzdz(sb.toString());
            this.a.t2(0, str);
            this.a.onAdFailedToLoad(0);
        } catch (RemoteException e) {
            is0.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final MediationRewardedAdCallback onSuccess(MediationRewardedAd mediationRewardedAd) {
        try {
            this.b.l = mediationRewardedAd;
            this.a.onAdLoaded();
        } catch (RemoteException e) {
            is0.zzc("", e);
        }
        return new xo0(this.a);
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        try {
            String canonicalName = this.b.e.getClass().getCanonicalName();
            int code = adError.getCode();
            String message = adError.getMessage();
            String domain = adError.getDomain();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 85 + String.valueOf(message).length() + String.valueOf(domain).length());
            sb.append(canonicalName);
            sb.append("failed to load mediation ad: ErrorCode = ");
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
