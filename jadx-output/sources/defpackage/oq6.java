package defpackage;

import android.content.Context;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd;
import com.noinnion.android.greader.ui.item.ItemFragment;

/* loaded from: classes2.dex */
public final class oq6 extends jm7 implements tl7<RewardedInterstitialAd, LoadAdError, yj7> {
    public final /* synthetic */ ItemFragment e;
    public final /* synthetic */ Context f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public oq6(ItemFragment itemFragment, Context context) {
        super(2);
        this.e = itemFragment;
        this.f = context;
    }

    @Override // defpackage.tl7
    public yj7 b(RewardedInterstitialAd rewardedInterstitialAd, LoadAdError loadAdError) {
        RewardedInterstitialAd rewardedInterstitialAd2 = rewardedInterstitialAd;
        if (rewardedInterstitialAd2 != null) {
            this.e.J = rewardedInterstitialAd2;
            rewardedInterstitialAd2.setFullScreenContentCallback(new mq6(this));
            rewardedInterstitialAd2.show(this.e.getActivity(), new nq6(rewardedInterstitialAd2, this));
        }
        return yj7.a;
    }
}
