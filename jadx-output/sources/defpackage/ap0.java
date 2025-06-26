package defpackage;

import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public final class ap0 extends jo0 {
    public FullScreenContentCallback e;
    public OnUserEarnedRewardListener f;

    @Override // defpackage.go0
    public final void B1() {
        FullScreenContentCallback fullScreenContentCallback = this.e;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdShowedFullScreenContent();
        }
    }

    @Override // defpackage.go0
    public final void F5(zzvh zzvhVar) {
        FullScreenContentCallback fullScreenContentCallback = this.e;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdFailedToShowFullScreenContent(zzvhVar.n());
        }
    }

    @Override // defpackage.go0
    public final void P0() {
        FullScreenContentCallback fullScreenContentCallback = this.e;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdDismissedFullScreenContent();
        }
    }

    @Override // defpackage.go0
    public final void S(bo0 bo0Var) {
        OnUserEarnedRewardListener onUserEarnedRewardListener = this.f;
        if (onUserEarnedRewardListener != null) {
            onUserEarnedRewardListener.onUserEarnedReward(new to0(bo0Var));
        }
    }

    @Override // defpackage.go0
    public final void b6(int i) {
    }

    @Override // defpackage.go0
    public final void onAdImpression() {
        FullScreenContentCallback fullScreenContentCallback = this.e;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdImpression();
        }
    }
}
