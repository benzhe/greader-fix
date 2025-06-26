package defpackage;

import java.util.Collection;
import java.util.HashSet;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class l08 {
    public final k08 a = new k08();

    public static final class a extends jm7 implements el7<yj7> {
        public a() {
            super(0);
        }

        @Override // defpackage.el7
        public yj7 invoke() {
            l08.this.a.a();
            return yj7.a;
        }
    }

    public l08() {
    }

    public static final l08 b() throws z08, a18 {
        l08 l08Var = new l08(null);
        n18 n18Var = l08Var.a.a;
        if (n18Var.c != null) {
            throw new IllegalStateException("Try to recreate Root scope definition".toString());
        }
        p18 p18Var = p18.e;
        l18 l18Var = p18.d;
        p18 p18Var2 = new p18(l18Var, true);
        n18Var.a.put(l18Var.a, p18Var2);
        n18Var.c = p18Var2;
        n18 n18Var2 = l08Var.a.a;
        if (n18Var2.d != null) {
            throw new IllegalStateException("Try to recreate Root scope".toString());
        }
        im7.e("-Root-", "scopeId");
        im7.e(l18Var, "qualifier");
        if (n18Var2.b.containsKey("-Root-")) {
            throw new a18("Scope with id '-Root-' is already created");
        }
        p18 p18Var3 = n18Var2.a.get(l18Var.getValue());
        if (p18Var3 == null) {
            StringBuilder sbZ = jo.z("No Scope Definition found for qualifer '");
            sbZ.append(l18Var.getValue());
            sbZ.append('\'');
            throw new z08(sbZ.toString());
        }
        o18 o18Var = new o18("-Root-", p18Var3, n18Var2.e);
        o18Var.c = null;
        o18 o18Var2 = n18Var2.d;
        Collection<? extends o18> collectionR1 = o18Var2 != null ? n56.r1(o18Var2) : hk7.e;
        im7.e(collectionR1, "links");
        m18 m18Var = o18Var.b;
        HashSet<p08<?>> hashSet = o18Var.f.a;
        Objects.requireNonNull(m18Var);
        im7.e(hashSet, "definitions");
        for (p08<?> p08Var : hashSet) {
            if (m18Var.b.b.c(g18.DEBUG)) {
                if (m18Var.c.f.c) {
                    m18Var.b.b.a("- " + p08Var);
                } else {
                    m18Var.b.b.a(m18Var.c + " -> " + p08Var);
                }
            }
            m18Var.a(p08Var, false);
        }
        o18Var.a.addAll(collectionR1);
        n18Var2.b.put("-Root-", o18Var);
        n18Var2.d = o18Var;
        return l08Var;
    }

    public final l08 a() {
        if (this.a.b.c(g18.DEBUG)) {
            double dM = kt7.m(new a());
            this.a.b.a("instances started in " + dM + " ms");
        } else {
            this.a.a();
        }
        return this;
    }

    public l08(gm7 gm7Var) {
    }
}
