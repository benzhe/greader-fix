package defpackage;

import com.android.billingclient.api.Purchase;
import java.util.Objects;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class so6<T, R> implements uc7<Purchase, lb7> {
    public final /* synthetic */ uo6 e;

    public so6(uo6 uo6Var) {
        this.e = uo6Var;
    }

    @Override // defpackage.uc7
    public lb7 apply(Purchase purchase) {
        Purchase purchase2 = purchase;
        im7.e(purchase2, "it");
        if (purchase2.c.optBoolean("acknowledged", true)) {
            return hb7.c();
        }
        yn6 yn6Var = this.e.c;
        JSONObject jSONObject = purchase2.c;
        String strOptString = jSONObject.optString("token", jSONObject.optString("purchaseToken"));
        im7.d(strOptString, "it.purchaseToken");
        Objects.requireNonNull(yn6Var);
        im7.e(strOptString, "purchaseToken");
        cn cnVar = new cn();
        cnVar.a = strOptString;
        im7.d(cnVar, "AcknowledgePurchaseParam…en(purchaseToken).build()");
        return yn6Var.b.e(cnVar);
    }
}
