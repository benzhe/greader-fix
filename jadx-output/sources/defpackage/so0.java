package defpackage;

import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.rewarded.RewardedAdCallback;
import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public final class so0 extends jo0 {
    public RewardedAdCallback e;
    public FullScreenContentCallback f;

    @Override // defpackage.go0
    public final void B1() {
        RewardedAdCallback rewardedAdCallback = this.e;
        if (rewardedAdCallback != null) {
            rewardedAdCallback.onRewardedAdOpened();
        }
        FullScreenContentCallback fullScreenContentCallback = this.f;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdShowedFullScreenContent();
        }
    }

    @Override // defpackage.go0
    public final void F5(zzvh zzvhVar) {
        AdError adErrorN = zzvhVar.n();
        RewardedAdCallback rewardedAdCallback = this.e;
        if (rewardedAdCallback != null) {
            rewardedAdCallback.onRewardedAdFailedToShow(adErrorN);
        }
        FullScreenContentCallback fullScreenContentCallback = this.f;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdFailedToShowFullScreenContent(adErrorN);
        }
    }

    @Override // defpackage.go0
    public final void P0() {
        RewardedAdCallback rewardedAdCallback = this.e;
        if (rewardedAdCallback != null) {
            rewardedAdCallback.onRewardedAdClosed();
        }
        FullScreenContentCallback fullScreenContentCallback = this.f;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdDismissedFullScreenContent();
        }
    }

    @Override // defpackage.go0
    public final void S(bo0 bo0Var) {
        RewardedAdCallback rewardedAdCallback = this.e;
        if (rewardedAdCallback != null) {
            rewardedAdCallback.onUserEarnedReward(new to0(bo0Var));
        }
    }

    @Override // defpackage.go0
    public final void b6(int i) {
        RewardedAdCallback rewardedAdCallback = this.e;
        if (rewardedAdCallback != null) {
            rewardedAdCallback.onRewardedAdFailedToShow(i);
        }
    }

    @Override // defpackage.go0
    public final void onAdImpression() {
        FullScreenContentCallback fullScreenContentCallback = this.f;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdImpression();
        }
    }
}
