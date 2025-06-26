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
import com.google.android.gms.ads.rewarded.ServerSideVerificationOptions;
import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd;
import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAdLoadCallback;
import com.google.android.gms.internal.ads.zzaww;
import java.util.Objects;

/* loaded from: classes.dex */
public final class cp0 extends RewardedInterstitialAd {
    public final String a;
    public final fo0 b;
    public final Context c;
    public final ap0 d;
    public FullScreenContentCallback e;
    public OnAdMetadataChangedListener f;
    public OnPaidEventListener g;

    public cp0(Context context, String str) {
        this.a = str;
        this.c = context.getApplicationContext();
        wr3 wr3Var = os3.j.b;
        eg0 eg0Var = new eg0();
        Objects.requireNonNull(wr3Var);
        this.b = new yr3(wr3Var, context, str, eg0Var).b(context, false);
        this.d = new ap0();
    }

    public final void a(zu3 zu3Var, RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback) {
        try {
            this.b.I5(nr3.a(this.c, zu3Var), new dp0(rewardedInterstitialAdLoadCallback, this));
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd
    public final Bundle getAdMetadata() {
        try {
            return this.b.getAdMetadata();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
            return new Bundle();
        }
    }

    @Override // com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd
    public final String getAdUnitId() {
        return this.a;
    }

    @Override // com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd
    public final FullScreenContentCallback getFullScreenContentCallback() {
        return this.e;
    }

    @Override // com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd
    public final OnAdMetadataChangedListener getOnAdMetadataChangedListener() {
        return this.f;
    }

    @Override // com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd
    public final OnPaidEventListener getOnPaidEventListener() {
        return this.g;
    }

    @Override // com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd
    public final ResponseInfo getResponseInfo() {
        ru3 ru3VarZzkm;
        try {
            ru3VarZzkm = this.b.zzkm();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
            ru3VarZzkm = null;
        }
        return ResponseInfo.zza(ru3VarZzkm);
    }

    @Override // com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd
    public final RewardItem getRewardItem() {
        try {
            bo0 bo0VarC2 = this.b.c2();
            if (bo0VarC2 != null) {
                return new to0(bo0VarC2);
            }
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
        return RewardItem.DEFAULT_REWARD;
    }

    @Override // com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd
    public final void setFullScreenContentCallback(FullScreenContentCallback fullScreenContentCallback) {
        this.e = fullScreenContentCallback;
        this.d.e = fullScreenContentCallback;
    }

    @Override // com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd
    public final void setImmersiveMode(boolean z) {
        try {
            this.b.setImmersiveMode(z);
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd
    public final void setOnAdMetadataChangedListener(OnAdMetadataChangedListener onAdMetadataChangedListener) {
        this.f = onAdMetadataChangedListener;
        try {
            this.b.r4(new d40(onAdMetadataChangedListener));
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd
    public final void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        this.g = onPaidEventListener;
        try {
            this.b.zza(new c40(onPaidEventListener));
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd
    public final void setServerSideVerificationOptions(ServerSideVerificationOptions serverSideVerificationOptions) {
        try {
            this.b.E6(new zzaww(serverSideVerificationOptions));
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd
    public final void show(Activity activity, OnUserEarnedRewardListener onUserEarnedRewardListener) {
        ap0 ap0Var = this.d;
        ap0Var.f = onUserEarnedRewardListener;
        try {
            this.b.J5(ap0Var);
            this.b.zze(new y20(activity));
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }
}
