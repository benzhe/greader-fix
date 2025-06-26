package defpackage;

import android.os.RemoteException;
import com.google.ads.AdRequest;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationBannerListener;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationInterstitialListener;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.NetworkExtras;

/* loaded from: classes.dex */
public final class wh0<NETWORK_EXTRAS extends NetworkExtras, SERVER_PARAMETERS extends MediationServerParameters> implements MediationBannerListener, MediationInterstitialListener {
    public final ng0 a;

    public wh0(ng0 ng0Var) {
        this.a = ng0Var;
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onClick(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        is0.zzdz("Adapter called onClick.");
        zr0 zr0Var = os3.j.a;
        if (!zr0.f()) {
            is0.zze("#008 Must be called on the main UI thread.", null);
            zr0.b.post(new vh0(this));
        } else {
            try {
                this.a.onAdClicked();
            } catch (RemoteException e) {
                is0.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onDismissScreen(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        is0.zzdz("Adapter called onDismissScreen.");
        zr0 zr0Var = os3.j.a;
        if (!zr0.f()) {
            is0.zzez("#008 Must be called on the main UI thread.");
            zr0.b.post(new ai0(this));
        } else {
            try {
                this.a.onAdClosed();
            } catch (RemoteException e) {
                is0.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onFailedToReceiveAd(MediationBannerAdapter<?, ?> mediationBannerAdapter, AdRequest.ErrorCode errorCode) {
        String strValueOf = String.valueOf(errorCode);
        StringBuilder sb = new StringBuilder(strValueOf.length() + 47);
        sb.append("Adapter called onFailedToReceiveAd with error. ");
        sb.append(strValueOf);
        is0.zzdz(sb.toString());
        zr0 zr0Var = os3.j.a;
        if (!zr0.f()) {
            is0.zze("#008 Must be called on the main UI thread.", null);
            zr0.b.post(new zh0(this, errorCode));
        } else {
            try {
                this.a.onAdFailedToLoad(c50.Z0(errorCode));
            } catch (RemoteException e) {
                is0.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onLeaveApplication(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        is0.zzdz("Adapter called onLeaveApplication.");
        zr0 zr0Var = os3.j.a;
        if (!zr0.f()) {
            is0.zze("#008 Must be called on the main UI thread.", null);
            zr0.b.post(new ci0(this));
        } else {
            try {
                this.a.onAdLeftApplication();
            } catch (RemoteException e) {
                is0.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onPresentScreen(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        is0.zzdz("Adapter called onPresentScreen.");
        zr0 zr0Var = os3.j.a;
        if (!zr0.f()) {
            is0.zze("#008 Must be called on the main UI thread.", null);
            zr0.b.post(new bi0(this));
        } else {
            try {
                this.a.onAdOpened();
            } catch (RemoteException e) {
                is0.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onReceivedAd(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        is0.zzdz("Adapter called onReceivedAd.");
        zr0 zr0Var = os3.j.a;
        if (!zr0.f()) {
            is0.zze("#008 Must be called on the main UI thread.", null);
            zr0.b.post(new ei0(this));
        } else {
            try {
                this.a.onAdLoaded();
            } catch (RemoteException e) {
                is0.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialListener
    public final void onDismissScreen(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        is0.zzdz("Adapter called onDismissScreen.");
        zr0 zr0Var = os3.j.a;
        if (!zr0.f()) {
            is0.zze("#008 Must be called on the main UI thread.", null);
            zr0.b.post(new di0(this));
        } else {
            try {
                this.a.onAdClosed();
            } catch (RemoteException e) {
                is0.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialListener
    public final void onFailedToReceiveAd(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter, AdRequest.ErrorCode errorCode) {
        String strValueOf = String.valueOf(errorCode);
        StringBuilder sb = new StringBuilder(strValueOf.length() + 47);
        sb.append("Adapter called onFailedToReceiveAd with error ");
        sb.append(strValueOf);
        sb.append(".");
        is0.zzdz(sb.toString());
        zr0 zr0Var = os3.j.a;
        if (!zr0.f()) {
            is0.zze("#008 Must be called on the main UI thread.", null);
            zr0.b.post(new gi0(this, errorCode));
        } else {
            try {
                this.a.onAdFailedToLoad(c50.Z0(errorCode));
            } catch (RemoteException e) {
                is0.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialListener
    public final void onLeaveApplication(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        is0.zzdz("Adapter called onLeaveApplication.");
        zr0 zr0Var = os3.j.a;
        if (!zr0.f()) {
            is0.zze("#008 Must be called on the main UI thread.", null);
            zr0.b.post(new fi0(this));
        } else {
            try {
                this.a.onAdLeftApplication();
            } catch (RemoteException e) {
                is0.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialListener
    public final void onPresentScreen(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        is0.zzdz("Adapter called onPresentScreen.");
        zr0 zr0Var = os3.j.a;
        if (!zr0.f()) {
            is0.zze("#008 Must be called on the main UI thread.", null);
            zr0.b.post(new yh0(this));
        } else {
            try {
                this.a.onAdOpened();
            } catch (RemoteException e) {
                is0.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialListener
    public final void onReceivedAd(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        is0.zzdz("Adapter called onReceivedAd.");
        zr0 zr0Var = os3.j.a;
        if (!zr0.f()) {
            is0.zze("#008 Must be called on the main UI thread.", null);
            zr0.b.post(new xh0(this));
        } else {
            try {
                this.a.onAdLoaded();
            } catch (RemoteException e) {
                is0.zze("#007 Could not call remote method.", e);
            }
        }
    }
}
