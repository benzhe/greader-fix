package defpackage;

import android.content.Context;
import android.view.ViewGroup;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.ui.item.ItemFragment;

/* loaded from: classes2.dex */
public final class nq6 implements OnUserEarnedRewardListener {
    public final /* synthetic */ RewardedInterstitialAd a;
    public final /* synthetic */ oq6 b;

    public nq6(RewardedInterstitialAd rewardedInterstitialAd, oq6 oq6Var) {
        this.a = rewardedInterstitialAd;
        this.b = oq6Var;
    }

    @Override // com.google.android.gms.ads.OnUserEarnedRewardListener
    public final void onUserEarnedReward(RewardItem rewardItem) {
        im7.e(rewardItem, "it");
        RewardItem rewardItem2 = this.a.getRewardItem();
        im7.d(rewardItem2, "rewardItem");
        long amount = rewardItem2.getAmount();
        n48 n48Var = n48.g;
        n48 n48VarI = n48.i(kt7.r(amount, 86400), 0);
        im7.d(n48VarI, "Duration.ofDays(rewardItem.amount.toLong())");
        long j = n48VarI.e;
        Context context = this.b.f;
        int i = cn6.b;
        iw6.U(context, "premium_rewarded_expiry_time", System.currentTimeMillis() + (j * 1000));
        FragmentActivity activity = this.b.e.getActivity();
        if (activity != null) {
            ViewGroup viewGroup = this.b.e.G;
            if (viewGroup != null) {
                viewGroup.removeAllViews();
                viewGroup.setVisibility(8);
            }
            t75 t75Var = new t75(activity);
            t75Var.m(R.string.premium_rewarded_ad_title);
            ItemFragment itemFragment = this.b.e;
            RewardItem rewardItem3 = this.a.getRewardItem();
            im7.d(rewardItem3, "rewardItem");
            t75Var.a.g = itemFragment.getString(R.string.premium_rewarded_ad_granted_days, Integer.valueOf(rewardItem3.getAmount()));
            t75Var.k(this.b.e.getText(android.R.string.ok), c.f);
            t75Var.a().show();
        }
    }
}
