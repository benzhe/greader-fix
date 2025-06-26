package defpackage;

import java.util.List;

/* loaded from: classes2.dex */
public class j18 {
    public final List<Object> a;

    public j18() {
        hk7 hk7Var = hk7.e;
        im7.e(hk7Var, "values");
        this.a = hk7Var;
    }

    public String toString() {
        StringBuilder sbZ = jo.z("DefinitionParameters");
        sbZ.append(ek7.s(this.a));
        return sbZ.toString();
    }

    public j18(List list, int i) {
        hk7 hk7Var = (i & 1) != 0 ? hk7.e : null;
        im7.e(hk7Var, "values");
        this.a = hk7Var;
    }
}
