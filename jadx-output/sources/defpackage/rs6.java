package defpackage;

import com.android.billingclient.api.SkuDetails;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.ui.premium.PremiumActivity;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class rs6 extends jm7 implements pl7<po6, yj7> {
    public final /* synthetic */ PremiumActivity e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rs6(PremiumActivity premiumActivity) {
        super(1);
        this.e = premiumActivity;
    }

    @Override // defpackage.pl7
    public yj7 invoke(po6 po6Var) {
        po6 po6Var2 = po6Var;
        if (po6Var2.d || !po6Var2.c) {
            PremiumActivity premiumActivity = this.e;
            im7.d(po6Var2, "it");
            int i = PremiumActivity.E;
            uo6 uo6VarB = premiumActivity.B();
            String str = po6Var2.b;
            Objects.requireNonNull(uo6VarB);
            im7.e(str, "sku");
            rb7<SkuDetails> rb7VarK = uo6VarB.c.a(str).n(ej7.b).k(fc7.a());
            im7.d(rb7VarK, "billingUseCase.fetchSubs…dSchedulers.mainThread())");
            n56.j(bj7.e(rb7VarK, new ds6(premiumActivity), new es6(premiumActivity), new fs6(premiumActivity, po6Var2)), premiumActivity);
        } else {
            n56.W1(this.e, R.string.premium_promo_code_redeemed);
        }
        return yj7.a;
    }
}
