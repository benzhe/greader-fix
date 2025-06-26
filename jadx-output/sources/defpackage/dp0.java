package defpackage;

import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAdLoadCallback;
import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public final class dp0 extends mo0 {
    public final RewardedInterstitialAdLoadCallback e;
    public final cp0 f;

    public dp0(RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback, cp0 cp0Var) {
        this.e = rewardedInterstitialAdLoadCallback;
        this.f = cp0Var;
    }

    @Override // defpackage.no0
    public final void H4(int i) {
        RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback = this.e;
        if (rewardedInterstitialAdLoadCallback != null) {
            rewardedInterstitialAdLoadCallback.onRewardedInterstitialAdFailedToLoad(i);
        }
    }

    @Override // defpackage.no0
    public final void J1(zzvh zzvhVar) {
        if (this.e != null) {
            LoadAdError loadAdErrorC = zzvhVar.C();
            this.e.onRewardedInterstitialAdFailedToLoad(loadAdErrorC);
            this.e.onAdFailedToLoad(loadAdErrorC);
        }
    }

    @Override // defpackage.no0
    public final void O0() {
        cp0 cp0Var;
        RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback = this.e;
        if (rewardedInterstitialAdLoadCallback == null || (cp0Var = this.f) == null) {
            return;
        }
        rewardedInterstitialAdLoadCallback.onRewardedInterstitialAdLoaded(cp0Var);
        this.e.onAdLoaded(this.f);
    }
}
