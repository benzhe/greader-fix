package com.google.android.gms.ads.rewardedinterstitial;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.rewarded.ServerSideVerificationOptions;
import defpackage.bi;
import defpackage.cp0;

/* loaded from: classes.dex */
public abstract class RewardedInterstitialAd {
    public static void load(Context context, String str, AdRequest adRequest, RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback) {
        bi.j(context, "Context cannot be null.");
        bi.j(str, "AdUnitId cannot be null.");
        bi.j(adRequest, "AdRequest cannot be null.");
        bi.j(rewardedInterstitialAdLoadCallback, "LoadCallback cannot be null.");
        new cp0(context, str).a(adRequest.zzdt(), rewardedInterstitialAdLoadCallback);
    }

    public abstract Bundle getAdMetadata();

    public abstract String getAdUnitId();

    public abstract FullScreenContentCallback getFullScreenContentCallback();

    public abstract OnAdMetadataChangedListener getOnAdMetadataChangedListener();

    public abstract OnPaidEventListener getOnPaidEventListener();

    public abstract ResponseInfo getResponseInfo();

    public abstract RewardItem getRewardItem();

    public abstract void setFullScreenContentCallback(FullScreenContentCallback fullScreenContentCallback);

    public abstract void setImmersiveMode(boolean z);

    public abstract void setOnAdMetadataChangedListener(OnAdMetadataChangedListener onAdMetadataChangedListener);

    public abstract void setOnPaidEventListener(OnPaidEventListener onPaidEventListener);

    public abstract void setServerSideVerificationOptions(ServerSideVerificationOptions serverSideVerificationOptions);

    public abstract void show(Activity activity, OnUserEarnedRewardListener onUserEarnedRewardListener);

    @Deprecated
    public static void load(Context context, String str, PublisherAdRequest publisherAdRequest, RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback) {
        bi.j(context, "Context cannot be null.");
        bi.j(str, "AdUnitId cannot be null.");
        bi.j(publisherAdRequest, "PublisherAdRequest cannot be null.");
        bi.j(rewardedInterstitialAdLoadCallback, "LoadCallback cannot be null.");
        new cp0(context, str).a(publisherAdRequest.zzdt(), rewardedInterstitialAdLoadCallback);
    }

    public static void load(Context context, String str, AdManagerAdRequest adManagerAdRequest, RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback) {
        bi.j(context, "Context cannot be null.");
        bi.j(str, "AdUnitId cannot be null.");
        bi.j(adManagerAdRequest, "AdManagerAdRequest cannot be null.");
        bi.j(rewardedInterstitialAdLoadCallback, "LoadCallback cannot be null.");
        new cp0(context, str).a(adManagerAdRequest.zzdt(), rewardedInterstitialAdLoadCallback);
    }
}
