package defpackage;

import java.util.Map;

/* loaded from: classes.dex */
public final class ei1 implements k61<l61> {
    public final Map<String, jz1<l61>> a;
    public final Map<String, jz1<kj1>> b;
    public final Map<String, w12<kj1>> c;
    public final mb3<k61<j41>> d;
    public final dk1 e;

    public ei1(Map<String, jz1<l61>> map, Map<String, jz1<kj1>> map2, Map<String, w12<kj1>> map3, mb3<k61<j41>> mb3Var, dk1 dk1Var) {
        this.a = map;
        this.b = map2;
        this.c = map3;
        this.d = mb3Var;
        this.e = dk1Var;
    }

    @Override // defpackage.k61
    public final jz1<l61> a(int i, String str) {
        jz1<j41> jz1VarA;
        jz1<l61> jz1Var = this.a.get(str);
        if (jz1Var != null) {
            return jz1Var;
        }
        if (i == 1) {
            if (this.e.d == null || (jz1VarA = this.d.get().a(i, str)) == null) {
                return null;
            }
            return new iz1(jz1VarA, n61.a);
        }
        if (i != 4) {
            return null;
        }
        w12<kj1> w12Var = this.c.get(str);
        if (w12Var != null) {
            return new iz1(w12Var, o61.a);
        }
        jz1<kj1> jz1Var2 = this.b.get(str);
        if (jz1Var2 != null) {
            return new iz1(jz1Var2, n61.a);
        }
        return null;
    }
}
