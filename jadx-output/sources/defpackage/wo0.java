package defpackage;

import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public final class wo0 extends mo0 {
    public final RewardedAdLoadCallback e;
    public final RewardedAd f;

    public wo0(RewardedAdLoadCallback rewardedAdLoadCallback, RewardedAd rewardedAd) {
        this.e = rewardedAdLoadCallback;
        this.f = rewardedAd;
    }

    @Override // defpackage.no0
    public final void H4(int i) {
        RewardedAdLoadCallback rewardedAdLoadCallback = this.e;
        if (rewardedAdLoadCallback != null) {
            rewardedAdLoadCallback.onRewardedAdFailedToLoad(i);
        }
    }

    @Override // defpackage.no0
    public final void J1(zzvh zzvhVar) {
        if (this.e != null) {
            LoadAdError loadAdErrorC = zzvhVar.C();
            this.e.onRewardedAdFailedToLoad(loadAdErrorC);
            this.e.onAdFailedToLoad(loadAdErrorC);
        }
    }

    @Override // defpackage.no0
    public final void O0() {
        RewardedAdLoadCallback rewardedAdLoadCallback = this.e;
        if (rewardedAdLoadCallback != null) {
            rewardedAdLoadCallback.onRewardedAdLoaded();
            this.e.onAdLoaded(this.f);
        }
    }
}
