package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.ads.mediation.MediationInterscrollerAd;

/* loaded from: classes.dex */
public final class gh0 implements MediationAdLoadCallback<MediationInterscrollerAd, MediationBannerAdCallback> {
    public final /* synthetic */ ng0 a;
    public final /* synthetic */ Adapter b;
    public final /* synthetic */ hh0 c;

    public gh0(hh0 hh0Var, ng0 ng0Var, Adapter adapter) {
        this.c = hh0Var;
        this.a = ng0Var;
        this.b = adapter;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        onFailure(new AdError(0, str, AdError.UNDEFINED_DOMAIN));
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final MediationBannerAdCallback onSuccess(MediationInterscrollerAd mediationInterscrollerAd) {
        try {
            this.c.m = mediationInterscrollerAd;
            this.a.onAdLoaded();
        } catch (RemoteException e) {
            is0.zzc("", e);
        }
        return new fh0(this.a);
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        try {
            String canonicalName = this.b.getClass().getCanonicalName();
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
