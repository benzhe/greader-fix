package defpackage;

import com.android.billingclient.api.Purchase;
import java.util.List;

/* loaded from: classes2.dex */
public final class to6<T, R> implements uc7<List<? extends Purchase>, vb7<? extends Purchase>> {
    public static final to6 e = new to6();

    @Override // defpackage.uc7
    public vb7<? extends Purchase> apply(List<? extends Purchase> list) {
        List<? extends Purchase> list2 = list;
        im7.e(list2, "purchases");
        return list2.isEmpty() ? bg7.e : rb7.i(ek7.f(list2));
    }
}
