package defpackage;

import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.billingclient.api.SkuDetails;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.ui.premium.PremiumActivity;

/* compiled from: kotlin-style lambda group */
/* loaded from: classes.dex */
public final class l extends jm7 implements pl7<SkuDetails, yj7> {
    public final /* synthetic */ int e;
    public final /* synthetic */ Object f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(int i, Object obj) {
        super(1);
        this.e = i;
        this.f = obj;
    }

    @Override // defpackage.pl7
    public final yj7 invoke(SkuDetails skuDetails) {
        int i = this.e;
        if (i == 0) {
            SkuDetails skuDetails2 = skuDetails;
            PremiumActivity premiumActivity = (PremiumActivity) this.f;
            im7.d(skuDetails2, "it");
            ho6 ho6Var = premiumActivity.D;
            if (ho6Var == null) {
                im7.k("binding");
                throw null;
            }
            TextView textView = ho6Var.d;
            im7.d(textView, "binding.monthlySubscriptionPrice");
            textView.setText(premiumActivity.getString(R.string.premium_monthly_price, new Object[]{skuDetails2.a()}));
            ho6 ho6Var2 = premiumActivity.D;
            if (ho6Var2 == null) {
                im7.k("binding");
                throw null;
            }
            TextView textView2 = ho6Var2.c;
            im7.d(textView2, "binding.monthlySubscriptionDescription");
            textView2.setText(n56.X0(skuDetails2));
            ho6 ho6Var3 = premiumActivity.D;
            if (ho6Var3 == null) {
                im7.k("binding");
                throw null;
            }
            LinearLayout linearLayout = ho6Var3.b;
            linearLayout.setOnClickListener(new js6(premiumActivity, skuDetails2));
            linearLayout.setVisibility(0);
            return yj7.a;
        }
        if (i != 1) {
            throw null;
        }
        SkuDetails skuDetails3 = skuDetails;
        PremiumActivity premiumActivity2 = (PremiumActivity) this.f;
        im7.d(skuDetails3, "it");
        ho6 ho6Var4 = premiumActivity2.D;
        if (ho6Var4 == null) {
            im7.k("binding");
            throw null;
        }
        TextView textView3 = ho6Var4.v;
        im7.d(textView3, "binding.yearlySubscriptionPrice");
        textView3.setText(premiumActivity2.getString(R.string.premium_yearly_price, new Object[]{skuDetails3.a()}));
        ho6 ho6Var5 = premiumActivity2.D;
        if (ho6Var5 == null) {
            im7.k("binding");
            throw null;
        }
        TextView textView4 = ho6Var5.u;
        im7.d(textView4, "binding.yearlySubscriptionDescription");
        textView4.setText(n56.X0(skuDetails3));
        ho6 ho6Var6 = premiumActivity2.D;
        if (ho6Var6 == null) {
            im7.k("binding");
            throw null;
        }
        LinearLayout linearLayout2 = ho6Var6.t;
        linearLayout2.setOnClickListener(new ls6(premiumActivity2, skuDetails3));
        linearLayout2.setVisibility(0);
        return yj7.a;
    }
}
