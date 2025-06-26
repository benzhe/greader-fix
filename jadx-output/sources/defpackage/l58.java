package defpackage;

import java.io.Serializable;
import java.util.HashMap;

/* loaded from: classes2.dex */
public final class l58 extends j58 implements Serializable {
    public static final l58 g = new l58();
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
        map.put("en", new String[]{"BH", "HE"});
        map2.put("en", new String[]{"B.H.", "H.E."});
        map3.put("en", new String[]{"Before Hijrah", "Hijrah Era"});
    }

    private Object readResolve() {
        return g;
    }

    @Override // defpackage.j58
    public String C() {
        return "islamic-umalqura";
    }

    @Override // defpackage.j58
    public String D() {
        return "Hijrah-umalqura";
    }

    @Override // defpackage.j58
    public f58<m58> I(u68 u68Var) {
        return super.I(u68Var);
    }

    @Override // defpackage.j58
    public h58<m58> L(o48 o48Var, z48 z48Var) {
        return i58.X(this, o48Var, z48Var);
    }

    @Override // defpackage.j58
    public e58 k(u68 u68Var) {
        return u68Var instanceof m58 ? (m58) u68Var : new m58(u68Var.D(q68.C));
    }

    @Override // defpackage.j58
    public k58 x(int i2) {
        if (i2 == 0) {
            return n58.BEFORE_AH;
        }
        if (i2 == 1) {
            return n58.AH;
        }
        throw new l48("invalid Hijrah era");
    }
}
