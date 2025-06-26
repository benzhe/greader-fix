package defpackage;

import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd;
import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAdLoadCallback;

/* loaded from: classes2.dex */
public final class aw6 extends RewardedInterstitialAdLoadCallback {
    public final /* synthetic */ tl7 a;

    public aw6(tl7 tl7Var) {
        this.a = tl7Var;
    }

    @Override // com.google.android.gms.ads.AdLoadCallback
    public void onAdFailedToLoad(LoadAdError loadAdError) {
        im7.e(loadAdError, "adError");
        jy6.a("=> onAdFailedToLoad: " + loadAdError.getMessage());
        this.a.b(null, loadAdError);
    }

    @Override // com.google.android.gms.ads.AdLoadCallback
    public void onAdLoaded(RewardedInterstitialAd rewardedInterstitialAd) {
        RewardedInterstitialAd rewardedInterstitialAd2 = rewardedInterstitialAd;
        im7.e(rewardedInterstitialAd2, "rewardedAd");
        this.a.b(rewardedInterstitialAd2, null);
    }
}
