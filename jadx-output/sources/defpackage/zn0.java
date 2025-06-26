package defpackage;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.reward.RewardItem;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener;
import com.google.android.gms.internal.ads.zzavy;

/* loaded from: classes.dex */
public final class zn0 implements MediationRewardedVideoAdListener {
    public final vn0 a;

    public zn0(vn0 vn0Var) {
        this.a = vn0Var;
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onAdClicked(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        bi.f("#008 Must be called on the main UI thread.");
        is0.zzdz("Adapter called onAdClicked.");
        try {
            this.a.S4(new y20(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onAdClosed(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        bi.f("#008 Must be called on the main UI thread.");
        is0.zzdz("Adapter called onAdClosed.");
        try {
            this.a.U3(new y20(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onAdFailedToLoad(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter, int i) {
        bi.f("#008 Must be called on the main UI thread.");
        is0.zzdz("Adapter called onAdFailedToLoad.");
        try {
            this.a.h2(new y20(mediationRewardedVideoAdAdapter), i);
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onAdLeftApplication(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        bi.f("#008 Must be called on the main UI thread.");
        is0.zzdz("Adapter called onAdLeftApplication.");
        try {
            this.a.p2(new y20(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onAdLoaded(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        bi.f("#008 Must be called on the main UI thread.");
        is0.zzdz("Adapter called onAdLoaded.");
        try {
            this.a.K1(new y20(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onAdOpened(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        bi.f("#008 Must be called on the main UI thread.");
        is0.zzdz("Adapter called onAdOpened.");
        try {
            this.a.M5(new y20(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onInitializationFailed(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter, int i) {
        bi.f("#008 Must be called on the main UI thread.");
        is0.zzdz("Adapter called onInitializationFailed.");
        try {
            this.a.i1(new y20(mediationRewardedVideoAdAdapter), i);
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onInitializationSucceeded(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        bi.f("#008 Must be called on the main UI thread.");
        is0.zzdz("Adapter called onInitializationSucceeded.");
        try {
            this.a.J0(new y20(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onRewarded(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter, RewardItem rewardItem) {
        bi.f("#008 Must be called on the main UI thread.");
        is0.zzdz("Adapter called onRewarded.");
        try {
            if (rewardItem != null) {
                this.a.I0(new y20(mediationRewardedVideoAdAdapter), new zzavy(rewardItem.getType(), rewardItem.getAmount()));
            } else {
                this.a.I0(new y20(mediationRewardedVideoAdAdapter), new zzavy("", 1));
            }
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onVideoCompleted(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        bi.f("#008 Must be called on the main UI thread.");
        is0.zzdz("Adapter called onVideoCompleted.");
        try {
            this.a.T2(new y20(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onVideoStarted(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        bi.f("#008 Must be called on the main UI thread.");
        is0.zzdz("Adapter called onVideoStarted.");
        try {
            this.a.u6(new y20(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void zzb(Bundle bundle) {
        bi.f("#008 Must be called on the main UI thread.");
        is0.zzdz("Adapter called onAdMetadataChanged.");
        try {
            this.a.zzb(bundle);
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }
}
