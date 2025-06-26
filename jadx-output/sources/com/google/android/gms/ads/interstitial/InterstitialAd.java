package com.google.android.gms.ads.interstitial;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import defpackage.bi;
import defpackage.md0;

/* loaded from: classes.dex */
public abstract class InterstitialAd {
    public static void load(Context context, String str, AdRequest adRequest, InterstitialAdLoadCallback interstitialAdLoadCallback) {
        bi.j(context, "Context cannot be null.");
        bi.j(str, "AdUnitId cannot be null.");
        bi.j(adRequest, "AdRequest cannot be null.");
        bi.j(interstitialAdLoadCallback, "LoadCallback cannot be null.");
        new md0(context, str).a(adRequest.zzdt(), interstitialAdLoadCallback);
    }

    public abstract String getAdUnitId();

    public abstract FullScreenContentCallback getFullScreenContentCallback();

    public abstract OnPaidEventListener getOnPaidEventListener();

    public abstract ResponseInfo getResponseInfo();

    public abstract void setFullScreenContentCallback(FullScreenContentCallback fullScreenContentCallback);

    public abstract void setImmersiveMode(boolean z);

    public abstract void setOnPaidEventListener(OnPaidEventListener onPaidEventListener);

    public abstract void show(Activity activity);
}
