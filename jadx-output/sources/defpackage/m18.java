package defpackage;

import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes2.dex */
public final class m18 {
    public final HashMap<String, d18<?>> a;
    public final k08 b;
    public final o18 c;

    public m18(k08 k08Var, o18 o18Var) {
        im7.e(k08Var, "_koin");
        im7.e(o18Var, "_scope");
        this.b = k08Var;
        this.c = o18Var;
        this.a = new HashMap<>();
    }

    public final void a(p08<?> p08Var, boolean z) {
        d18<?> e18Var;
        im7.e(p08Var, "definition");
        boolean z2 = p08Var.g.b || z;
        k08 k08Var = this.b;
        int iOrdinal = p08Var.e.ordinal();
        if (iOrdinal == 0) {
            e18Var = new e18<>(k08Var, p08Var);
        } else {
            if (iOrdinal != 1) {
                throw new qj7();
            }
            e18Var = new b18<>(k08Var, p08Var);
        }
        b(kt7.k(p08Var.b, p08Var.c), e18Var, z2);
        Iterator<T> it = p08Var.f.iterator();
        while (it.hasNext()) {
            hn7 hn7Var = (hn7) it.next();
            if (z2) {
                b(kt7.k(hn7Var, p08Var.c), e18Var, z2);
            } else {
                String strK = kt7.k(hn7Var, p08Var.c);
                if (!this.a.containsKey(strK)) {
                    this.a.put(strK, e18Var);
                }
            }
        }
    }

    public final void b(String str, d18<?> d18Var, boolean z) {
        if (!this.a.containsKey(str) || z) {
            this.a.put(str, d18Var);
            return;
        }
        throw new IllegalStateException(("InstanceRegistry already contains index '" + str + '\'').toString());
    }
}
