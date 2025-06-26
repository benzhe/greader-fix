package defpackage;

import android.view.View;
import com.android.billingclient.api.SkuDetails;
import com.noinnion.android.greader.ui.premium.PremiumActivity;

/* loaded from: classes2.dex */
public final class js6 implements View.OnClickListener {
    public final /* synthetic */ PremiumActivity e;
    public final /* synthetic */ SkuDetails f;

    public js6(PremiumActivity premiumActivity, SkuDetails skuDetails) {
        this.e = premiumActivity;
        this.f = skuDetails;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        PremiumActivity premiumActivity = this.e;
        SkuDetails skuDetails = this.f;
        int i = PremiumActivity.E;
        premiumActivity.C(skuDetails);
    }
}
