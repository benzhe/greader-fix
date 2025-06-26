package defpackage;

import android.content.Context;
import com.android.billingclient.api.Purchase;
import java.util.List;

/* loaded from: classes2.dex */
public final class qo6<T, R> implements uc7<List<? extends Purchase>, List<? extends Purchase>> {
    public final /* synthetic */ uo6 e;

    public qo6(uo6 uo6Var) {
        this.e = uo6Var;
    }

    @Override // defpackage.uc7
    public List<? extends Purchase> apply(List<? extends Purchase> list) {
        List<? extends Purchase> list2 = list;
        im7.e(list2, "purchases");
        if (!list2.isEmpty()) {
            Context context = this.e.b;
            int i = cn6.b;
            iw6.S(context, "pro_version_access", true);
        } else {
            Context context2 = this.e.b;
            int i2 = cn6.b;
            iw6.S(context2, "pro_version_access", false);
        }
        return list2;
    }
}
