package defpackage;

import com.android.billingclient.api.Purchase;
import defpackage.dd7;
import java.util.List;

/* loaded from: classes.dex */
public final class hq<T, R> implements uc7<en, ec7<? extends List<? extends Purchase>>> {
    public final /* synthetic */ gq e;
    public final /* synthetic */ String f;

    public hq(gq gqVar, String str) {
        this.e = gqVar;
        this.f = str;
    }

    @Override // defpackage.uc7
    public ec7<? extends List<? extends Purchase>> apply(en enVar) {
        en enVar2 = enVar;
        im7.e(enVar2, "it");
        Purchase.a aVarE = enVar2.e(this.f);
        im7.d(aVarE, "it.queryPurchases(type)");
        if (!gq.f(this.e, aVarE.b.a)) {
            in inVar = aVarE.b;
            im7.d(inVar, "purchasesResult.billingResult");
            return new hh7(new dd7.g(mq.a(inVar)));
        }
        Object obj = aVarE.a;
        if (obj == null) {
            obj = hk7.e;
        }
        return new nh7(obj);
    }
}
