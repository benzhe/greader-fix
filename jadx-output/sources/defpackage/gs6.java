package defpackage;

import android.content.Context;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.noinnion.android.greader.reader.R;

/* loaded from: classes2.dex */
public final class gs6 implements OnUserEarnedRewardListener {
    public final /* synthetic */ hs6 a;

    public gs6(hs6 hs6Var) {
        this.a = hs6Var;
    }

    @Override // com.google.android.gms.ads.OnUserEarnedRewardListener
    public final void onUserEarnedReward(RewardItem rewardItem) {
        im7.e(rewardItem, "rewardItem");
        to0 to0Var = (to0) rewardItem;
        long amount = to0Var.getAmount();
        n48 n48Var = n48.g;
        n48 n48VarI = n48.i(kt7.r(amount, 86400), 0);
        im7.d(n48VarI, "Duration.ofDays(rewardItem.amount.toLong())");
        long j = n48VarI.e;
        Context applicationContext = this.a.e.getApplicationContext();
        int i = cn6.b;
        iw6.U(applicationContext, "premium_rewarded_expiry_time", System.currentTimeMillis() + (j * 1000));
        t75 t75Var = new t75(this.a.e);
        t75Var.m(R.string.premium_rewarded_ad_title);
        t75Var.a.g = this.a.e.getString(R.string.premium_rewarded_ad_granted_days, new Object[]{Integer.valueOf(to0Var.getAmount())});
        t75Var.k(this.a.e.getText(android.R.string.ok), c.g);
        t75Var.a().show();
    }
}
