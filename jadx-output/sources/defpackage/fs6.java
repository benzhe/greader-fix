package defpackage;

import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.billingclient.api.SkuDetails;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.ui.premium.PremiumActivity;

/* loaded from: classes2.dex */
public final class fs6 extends jm7 implements pl7<SkuDetails, yj7> {
    public final /* synthetic */ PremiumActivity e;
    public final /* synthetic */ po6 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fs6(PremiumActivity premiumActivity, po6 po6Var) {
        super(1);
        this.e = premiumActivity;
        this.f = po6Var;
    }

    @Override // defpackage.pl7
    public yj7 invoke(SkuDetails skuDetails) {
        SkuDetails skuDetails2 = skuDetails;
        PremiumActivity premiumActivity = this.e;
        im7.d(skuDetails2, "it");
        po6 po6Var = this.f;
        premiumActivity.B = po6Var;
        ho6 ho6Var = premiumActivity.D;
        if (ho6Var == null) {
            im7.k("binding");
            throw null;
        }
        TextView textView = ho6Var.k;
        im7.d(textView, "binding.promoSubscriptionPrice");
        textView.setText(premiumActivity.getString(R.string.premium_yearly_price, new Object[]{skuDetails2.a()}));
        ho6 ho6Var2 = premiumActivity.D;
        if (ho6Var2 == null) {
            im7.k("binding");
            throw null;
        }
        TextView textView2 = ho6Var2.j;
        im7.d(textView2, "binding.promoSubscriptionDescription");
        textView2.setText(n56.X0(skuDetails2));
        ho6 ho6Var3 = premiumActivity.D;
        if (ho6Var3 == null) {
            im7.k("binding");
            throw null;
        }
        LinearLayout linearLayout = ho6Var3.i;
        linearLayout.setOnClickListener(new ks6(premiumActivity, skuDetails2, po6Var));
        linearLayout.setVisibility(0);
        return yj7.a;
    }
}
