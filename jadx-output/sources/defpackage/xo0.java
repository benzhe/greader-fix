package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.rewarded.RewardItem;

/* loaded from: classes.dex */
public final class xo0 implements MediationRewardedAdCallback {
    public final ng0 a;

    public xo0(ng0 ng0Var) {
        this.a = ng0Var;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void onAdClosed() {
        bi.f("#008 Must be called on the main UI thread.");
        is0.zzdz("Adapter called onAdClosed.");
        try {
            this.a.onAdClosed();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    public final void onAdFailedToShow(String str) {
        bi.f("#008 Must be called on the main UI thread.");
        is0.zzdz("Adapter called onAdFailedToShow.");
        String strValueOf = String.valueOf(str);
        is0.zzez(strValueOf.length() != 0 ? "Mediation ad failed to show: ".concat(strValueOf) : new String("Mediation ad failed to show: "));
        try {
            this.a.i2(str);
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void onAdOpened() {
        bi.f("#008 Must be called on the main UI thread.");
        is0.zzdz("Adapter called onAdOpened.");
        try {
            this.a.onAdOpened();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    public final void onUserEarnedReward(RewardItem rewardItem) {
        bi.f("#008 Must be called on the main UI thread.");
        is0.zzdz("Adapter called onUserEarnedReward.");
        try {
            this.a.S(new bp0(rewardItem));
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    public final void onVideoComplete() {
        bi.f("#008 Must be called on the main UI thread.");
        is0.zzdz("Adapter called onVideoComplete.");
        try {
            this.a.Q4();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    public final void onVideoStart() {
        bi.f("#008 Must be called on the main UI thread.");
        is0.zzdz("Adapter called onVideoStart.");
        try {
            this.a.E5();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void reportAdClicked() {
        bi.f("#008 Must be called on the main UI thread.");
        is0.zzdz("Adapter called reportAdClicked.");
        try {
            this.a.onAdClicked();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void reportAdImpression() {
        bi.f("#008 Must be called on the main UI thread.");
        is0.zzdz("Adapter called reportAdImpression.");
        try {
            this.a.onAdImpression();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    public final void onAdFailedToShow(AdError adError) {
        bi.f("#008 Must be called on the main UI thread.");
        is0.zzdz("Adapter called onAdFailedToShow.");
        int code = adError.getCode();
        String message = adError.getMessage();
        String domain = adError.getDomain();
        StringBuilder sb = new StringBuilder(String.valueOf(domain).length() + String.valueOf(message).length() + 87);
        sb.append("Mediation ad failed to show: Error Code = ");
        sb.append(code);
        sb.append(". Error Message = ");
        sb.append(message);
        sb.append(" Error Domain = ");
        sb.append(domain);
        is0.zzez(sb.toString());
        try {
            this.a.Y3(adError.zzdr());
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }
}
