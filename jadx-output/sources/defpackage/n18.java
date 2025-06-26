package defpackage;

import java.util.HashMap;

/* loaded from: classes2.dex */
public final class n18 {
    public final HashMap<String, p18> a;
    public final HashMap<String, o18> b;
    public p18 c;
    public o18 d;
    public final k08 e;

    public n18(k08 k08Var) {
        im7.e(k08Var, "_koin");
        this.e = k08Var;
        this.a = new HashMap<>();
        this.b = new HashMap<>();
    }

    public final o18 a() {
        o18 o18Var = this.d;
        if (o18Var != null) {
            return o18Var;
        }
        throw new IllegalStateException("No root scope".toString());
    }
}
