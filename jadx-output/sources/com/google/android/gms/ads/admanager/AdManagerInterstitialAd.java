package com.google.android.gms.ads.admanager;

import android.content.Context;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import defpackage.bi;
import defpackage.md0;

/* loaded from: classes.dex */
public abstract class AdManagerInterstitialAd extends InterstitialAd {
    public static void load(Context context, String str, AdManagerAdRequest adManagerAdRequest, AdManagerInterstitialAdLoadCallback adManagerInterstitialAdLoadCallback) {
        bi.j(context, "Context cannot be null.");
        bi.j(str, "AdUnitId cannot be null.");
        bi.j(adManagerAdRequest, "AdManagerAdRequest cannot be null.");
        bi.j(adManagerInterstitialAdLoadCallback, "LoadCallback cannot be null.");
        new md0(context, str).a(adManagerAdRequest.zzdt(), adManagerInterstitialAdLoadCallback);
    }

    public abstract AppEventListener getAppEventListener();

    public abstract void setAppEventListener(AppEventListener appEventListener);
}
