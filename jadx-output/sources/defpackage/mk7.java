package defpackage;

import java.util.Comparator;

/* loaded from: classes2.dex */
public final class mk7 implements Comparator<Comparable<? super Object>> {
    public static final mk7 e = new mk7();

    @Override // java.util.Comparator
    public int compare(Comparable<? super Object> comparable, Comparable<? super Object> comparable2) {
        Comparable<? super Object> comparable3 = comparable;
        Comparable<? super Object> comparable4 = comparable2;
        im7.e(comparable3, "a");
        im7.e(comparable4, "b");
        return comparable4.compareTo(comparable3);
    }

    @Override // java.util.Comparator
    public final Comparator<Comparable<? super Object>> reversed() {
        return lk7.e;
    }
}
