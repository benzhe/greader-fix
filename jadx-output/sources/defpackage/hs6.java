package defpackage;

import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.ui.premium.PremiumActivity;

/* loaded from: classes2.dex */
public final class hs6 extends jm7 implements tl7<RewardedAd, LoadAdError, yj7> {
    public final /* synthetic */ PremiumActivity e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hs6(PremiumActivity premiumActivity) {
        super(2);
        this.e = premiumActivity;
    }

    @Override // defpackage.tl7
    public yj7 b(RewardedAd rewardedAd, LoadAdError loadAdError) {
        RewardedAd rewardedAd2 = rewardedAd;
        LoadAdError loadAdError2 = loadAdError;
        ho6 ho6Var = this.e.D;
        if (ho6Var == null) {
            im7.k("binding");
            throw null;
        }
        LinearProgressIndicator linearProgressIndicator = ho6Var.o;
        im7.d(linearProgressIndicator, "binding.rewardedAdLoading");
        im7.e(linearProgressIndicator, "$this$gone");
        linearProgressIndicator.setVisibility(8);
        if (loadAdError2 != null) {
            jy6.a("=> load rewarded error: " + loadAdError2);
            n56.W1(this.e, R.string.premium_rewarded_ad_error);
        } else if (rewardedAd2 != null) {
            PremiumActivity premiumActivity = this.e;
            premiumActivity.C = rewardedAd2;
            rewardedAd2.show(premiumActivity, new gs6(this));
        }
        return yj7.a;
    }
}
