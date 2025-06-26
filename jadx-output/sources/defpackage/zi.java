package defpackage;

import java.util.Comparator;

/* loaded from: classes.dex */
public class zi implements Comparator<int[]> {
    public zi(aj ajVar) {
    }

    @Override // java.util.Comparator
    public int compare(int[] iArr, int[] iArr2) {
        return iArr[0] - iArr2[0];
    }
}
