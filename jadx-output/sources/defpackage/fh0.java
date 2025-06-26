package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdCallback;

/* loaded from: classes.dex */
public final class fh0 implements MediationBannerAdCallback, MediationInterstitialAdCallback, MediationNativeAdCallback {
    public final ng0 a;

    public fh0(ng0 ng0Var) {
        this.a = ng0Var;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void onAdClosed() {
        bi.f("#008 Must be called on the main UI thread.");
        is0.zzdz("Adapter called onAdOpened.");
        try {
            this.a.onAdOpened();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdCallback
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

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdCallback, com.google.android.gms.ads.mediation.MediationInterstitialAdCallback, com.google.android.gms.ads.mediation.MediationNativeAdCallback
    public final void onAdLeftApplication() {
        bi.f("#008 Must be called on the main UI thread.");
        is0.zzdz("Adapter called onAdLeftApplication.");
        try {
            this.a.onAdLeftApplication();
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

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdCallback
    public final void onVideoComplete() {
        bi.f("#008 Must be called on the main UI thread.");
        is0.zzdz("Adapter called onVideoComplete.");
        try {
            this.a.Q4();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdCallback
    public final void onVideoMute() {
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdCallback
    public final void onVideoPause() {
        bi.f("#008 Must be called on the main UI thread.");
        is0.zzdz("Adapter called onVideoPause.");
        try {
            this.a.onVideoPause();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdCallback
    public final void onVideoPlay() {
        bi.f("#008 Must be called on the main UI thread.");
        is0.zzdz("Adapter called onVideoPlay.");
        try {
            this.a.onVideoPlay();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdCallback
    public final void onVideoUnmute() {
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

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdCallback
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
