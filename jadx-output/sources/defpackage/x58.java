package defpackage;

import java.io.Serializable;
import java.util.HashMap;

/* loaded from: classes2.dex */
public final class x58 extends j58 implements Serializable {
    public static final x58 g = new x58();
    public static final HashMap<String, String[]> h;
    public static final HashMap<String, String[]> i;
    public static final HashMap<String, String[]> j;

    static {
        HashMap<String, String[]> map = new HashMap<>();
        h = map;
        HashMap<String, String[]> map2 = new HashMap<>();
        i = map2;
        HashMap<String, String[]> map3 = new HashMap<>();
        j = map3;
        map.put("en", new String[]{"BB", "BE"});
        map.put("th", new String[]{"BB", "BE"});
        map2.put("en", new String[]{"B.B.", "B.E."});
        map2.put("th", new String[]{"พ.ศ.", "ปีก่อนคริสต์กาลที่"});
        map3.put("en", new String[]{"Before Buddhist", "Budhhist Era"});
        map3.put("th", new String[]{"พุทธศักราช", "ปีก่อนคริสต์กาลที่"});
    }

    private Object readResolve() {
        return g;
    }

    @Override // defpackage.j58
    public String C() {
        return "buddhist";
    }

    @Override // defpackage.j58
    public String D() {
        return "ThaiBuddhist";
    }

    @Override // defpackage.j58
    public f58<y58> I(u68 u68Var) {
        return super.I(u68Var);
    }

    @Override // defpackage.j58
    public h58<y58> L(o48 o48Var, z48 z48Var) {
        return i58.X(this, o48Var, z48Var);
    }

    public d78 M(q68 q68Var) {
        switch (q68Var.ordinal()) {
            case 24:
                d78 d78Var = q68.G.h;
                return d78.d(d78Var.e + 6516, d78Var.h + 6516);
            case 25:
                d78 d78Var2 = q68.I.h;
                return d78.e(1L, (-(d78Var2.e + 543)) + 1, d78Var2.h + 543);
            case 26:
                d78 d78Var3 = q68.I.h;
                return d78.d(d78Var3.e + 543, d78Var3.h + 543);
            default:
                return q68Var.h;
        }
    }

    @Override // defpackage.j58
    public e58 k(u68 u68Var) {
        return u68Var instanceof y58 ? (y58) u68Var : new y58(p48.V(u68Var));
    }

    @Override // defpackage.j58
    public k58 x(int i2) {
        return z58.K(i2);
    }
}
