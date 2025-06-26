package defpackage;

import java.util.Comparator;

/* loaded from: classes.dex */
public final class rn3 implements Comparator<gn3> {
    @Override // java.util.Comparator
    public final int compare(gn3 gn3Var, gn3 gn3Var2) {
        gn3 gn3Var3 = gn3Var;
        gn3 gn3Var4 = gn3Var2;
        float f = gn3Var3.b;
        float f2 = gn3Var4.b;
        if (f < f2) {
            return -1;
        }
        if (f > f2) {
            return 1;
        }
        float f3 = gn3Var3.a;
        float f4 = gn3Var4.a;
        if (f3 < f4) {
            return -1;
        }
        if (f3 > f4) {
            return 1;
        }
        float f5 = (gn3Var3.c - f3) * (gn3Var3.d - f);
        float f6 = (gn3Var4.c - f4) * (gn3Var4.d - f2);
        if (f5 > f6) {
            return -1;
        }
        return f5 < f6 ? 1 : 0;
    }
}
