package defpackage;

import android.util.SparseArray;
import java.util.EnumMap;

/* loaded from: classes.dex */
public final class iv {
    public static SparseArray<wq> a = new SparseArray<>();
    public static EnumMap<wq, Integer> b;

    static {
        EnumMap<wq, Integer> enumMap = new EnumMap<>(wq.class);
        b = enumMap;
        enumMap.put((EnumMap<wq, Integer>) wq.DEFAULT, (wq) 0);
        b.put((EnumMap<wq, Integer>) wq.VERY_LOW, (wq) 1);
        b.put((EnumMap<wq, Integer>) wq.HIGHEST, (wq) 2);
        for (K k : b.keySet()) {
            a.append(b.get(k).intValue(), k);
        }
    }

    public static int a(wq wqVar) {
        Integer num = b.get(wqVar);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("PriorityMapping is missing known Priority value " + wqVar);
    }

    public static wq b(int i) {
        wq wqVar = a.get(i);
        if (wqVar != null) {
            return wqVar;
        }
        throw new IllegalArgumentException(jo.g("Unknown Priority for value ", i));
    }
}
