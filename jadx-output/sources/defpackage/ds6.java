package defpackage;

import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.ui.premium.PremiumActivity;

/* loaded from: classes2.dex */
public final class ds6 extends jm7 implements pl7<Throwable, yj7> {
    public final /* synthetic */ PremiumActivity e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ds6(PremiumActivity premiumActivity) {
        super(1);
        this.e = premiumActivity;
    }

    @Override // defpackage.pl7
    public yj7 invoke(Throwable th) {
        Throwable th2 = th;
        im7.e(th2, "it");
        th2.printStackTrace();
        n56.W1(this.e, R.string.error_general);
        return yj7.a;
    }
}
