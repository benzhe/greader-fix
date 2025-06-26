package defpackage;

import java.util.Comparator;

/* loaded from: classes.dex */
public final /* synthetic */ class or5 implements Comparator {
    public static final or5 e = new or5();

    @Override // java.util.Comparator
    public int compare(Object obj, Object obj2) {
        qr5 qr5Var = (qr5) obj;
        qr5 qr5Var2 = (qr5) obj2;
        int iCompareTo = qr5Var.a.compareTo(qr5Var2.a);
        return iCompareTo != 0 ? iCompareTo : vx5.b(qr5Var.b, qr5Var2.b);
    }
}
