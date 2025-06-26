package defpackage;

import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;

/* loaded from: classes2.dex */
public final class zv6 extends RewardedAdLoadCallback {
    public final /* synthetic */ tl7 a;

    public zv6(tl7 tl7Var) {
        this.a = tl7Var;
    }

    @Override // com.google.android.gms.ads.AdLoadCallback
    public void onAdFailedToLoad(LoadAdError loadAdError) {
        im7.e(loadAdError, "adError");
        jy6.a("=> onAdFailedToLoad: " + loadAdError.getMessage());
        this.a.b(null, loadAdError);
    }

    @Override // com.google.android.gms.ads.AdLoadCallback
    public void onAdLoaded(RewardedAd rewardedAd) {
        RewardedAd rewardedAd2 = rewardedAd;
        im7.e(rewardedAd2, "rewardedAd");
        this.a.b(rewardedAd2, null);
    }
}
