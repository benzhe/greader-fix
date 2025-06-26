package defpackage;

import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.ui.premium.PremiumActivity;

/* loaded from: classes2.dex */
public final class qs6 extends jm7 implements el7<yj7> {
    public final /* synthetic */ PremiumActivity e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qs6(PremiumActivity premiumActivity) {
        super(0);
        this.e = premiumActivity;
    }

    @Override // defpackage.el7
    public yj7 invoke() {
        n56.W1(this.e, R.string.premium_promo_code_not_found);
        return yj7.a;
    }
}
