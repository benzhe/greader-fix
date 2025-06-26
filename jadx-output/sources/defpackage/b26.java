package defpackage;

import java.util.Comparator;

/* loaded from: classes.dex */
public class b26 implements Comparator<d26> {
    public b26(c26 c26Var) {
    }

    @Override // java.util.Comparator
    public int compare(d26 d26Var, d26 d26Var2) {
        d26 d26Var3 = d26Var;
        d26 d26Var4 = d26Var2;
        if (d26Var3.a() > d26Var4.a()) {
            return -1;
        }
        return d26Var3.a() < d26Var4.a() ? 1 : 0;
    }
}
