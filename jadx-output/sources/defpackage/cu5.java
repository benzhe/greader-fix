package defpackage;

import java.util.Comparator;

/* loaded from: classes.dex */
public final /* synthetic */ class cu5 implements Comparator {
    public final Comparator e;

    public cu5(Comparator comparator) {
        this.e = comparator;
    }

    @Override // java.util.Comparator
    public int compare(Object obj, Object obj2) {
        yt5 yt5Var = (yt5) obj;
        yt5 yt5Var2 = (yt5) obj2;
        int iCompare = this.e.compare(yt5Var, yt5Var2);
        if (iCompare != 0) {
            return iCompare;
        }
        int i = yt5.e;
        return xt5.e.compare(yt5Var, yt5Var2);
    }
}
