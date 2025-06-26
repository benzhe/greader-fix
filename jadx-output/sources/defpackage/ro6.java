package defpackage;

import com.android.billingclient.api.Purchase;
import java.util.List;

/* loaded from: classes2.dex */
public final class ro6<T, R> implements uc7<List<? extends Purchase>, Iterable<? extends Purchase>> {
    public static final ro6 e = new ro6();

    @Override // defpackage.uc7
    public Iterable<? extends Purchase> apply(List<? extends Purchase> list) {
        List<? extends Purchase> list2 = list;
        im7.e(list2, "it");
        return list2;
    }
}
