package defpackage;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdCallback;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
import com.google.android.gms.ads.rewarded.ServerSideVerificationOptions;
import com.google.android.gms.internal.ads.zzaww;
import java.util.Objects;

/* loaded from: classes.dex */
public final class qo0 extends RewardedAd {
    public final String b;
    public final fo0 c;
    public final Context d;
    public final ap0 e;
    public final so0 f;
    public OnAdMetadataChangedListener g;
    public OnPaidEventListener h;
    public FullScreenContentCallback i;

    public qo0(Context context, String str) {
        this.d = context.getApplicationContext();
        this.b = str;
        wr3 wr3Var = os3.j.b;
        eg0 eg0Var = new eg0();
        Objects.requireNonNull(wr3Var);
        this.c = new yr3(wr3Var, context, str, eg0Var).b(context, false);
        this.e = new ap0();
        this.f = new so0();
    }

    public final void a(zu3 zu3Var, RewardedAdLoadCallback rewardedAdLoadCallback) {
        try {
            this.c.T4(nr3.a(this.d, zu3Var), new wo0(rewardedAdLoadCallback, this));
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final Bundle getAdMetadata() {
        try {
            return this.c.getAdMetadata();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
            return new Bundle();
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final String getAdUnitId() {
        return this.b;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final FullScreenContentCallback getFullScreenContentCallback() {
        return this.i;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final String getMediationAdapterClassName() {
        try {
            return this.c.getMediationAdapterClassName();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
            return "";
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final OnAdMetadataChangedListener getOnAdMetadataChangedListener() {
        return this.g;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final OnPaidEventListener getOnPaidEventListener() {
        return this.h;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final ResponseInfo getResponseInfo() {
        ru3 ru3VarZzkm;
        try {
            ru3VarZzkm = this.c.zzkm();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
            ru3VarZzkm = null;
        }
        return ResponseInfo.zza(ru3VarZzkm);
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final RewardItem getRewardItem() {
        try {
            bo0 bo0VarC2 = this.c.c2();
            if (bo0VarC2 == null) {
                return null;
            }
            return new to0(bo0VarC2);
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final boolean isLoaded() {
        try {
            return this.c.isLoaded();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void setFullScreenContentCallback(FullScreenContentCallback fullScreenContentCallback) {
        this.i = null;
        this.e.e = null;
        this.f.f = null;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void setImmersiveMode(boolean z) {
        try {
            this.c.setImmersiveMode(z);
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void setOnAdMetadataChangedListener(OnAdMetadataChangedListener onAdMetadataChangedListener) {
        try {
            this.g = onAdMetadataChangedListener;
            this.c.r4(new d40(onAdMetadataChangedListener));
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        try {
            this.h = onPaidEventListener;
            this.c.zza(new c40(onPaidEventListener));
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void setServerSideVerificationOptions(ServerSideVerificationOptions serverSideVerificationOptions) {
        try {
            this.c.E6(new zzaww(serverSideVerificationOptions));
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void show(Activity activity, RewardedAdCallback rewardedAdCallback) {
        so0 so0Var = this.f;
        so0Var.e = rewardedAdCallback;
        try {
            this.c.J5(so0Var);
            this.c.zze(new y20(activity));
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void show(Activity activity, RewardedAdCallback rewardedAdCallback, boolean z) {
        so0 so0Var = this.f;
        so0Var.e = rewardedAdCallback;
        try {
            this.c.J5(so0Var);
            this.c.S6(new y20(activity), z);
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void show(Activity activity, OnUserEarnedRewardListener onUserEarnedRewardListener) {
        this.e.f = onUserEarnedRewardListener;
        if (activity == null) {
            is0.zzez("The activity for show is null, will proceed with show using the context provided when loading the ad.");
        }
        try {
            this.c.J5(this.e);
            this.c.zze(new y20(activity));
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }
}
