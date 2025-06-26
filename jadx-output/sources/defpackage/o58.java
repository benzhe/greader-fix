package defpackage;

import java.io.Serializable;

/* loaded from: classes2.dex */
public final class o58 extends j58 implements Serializable {
    public static final o58 g = new o58();

    private Object readResolve() {
        return g;
    }

    @Override // defpackage.j58
    public String C() {
        return "iso8601";
    }

    @Override // defpackage.j58
    public String D() {
        return "ISO";
    }

    @Override // defpackage.j58
    public f58 I(u68 u68Var) {
        return q48.V(u68Var);
    }

    @Override // defpackage.j58
    public h58 L(o48 o48Var, z48 z48Var) {
        kt7.o(o48Var, "instant");
        kt7.o(z48Var, "zone");
        return c58.W(o48Var.e, o48Var.f, z48Var);
    }

    public boolean M(long j) {
        return (3 & j) == 0 && (j % 100 != 0 || j % 400 == 0);
    }

    @Override // defpackage.j58
    public e58 k(u68 u68Var) {
        return p48.V(u68Var);
    }

    @Override // defpackage.j58
    public k58 x(int i) {
        if (i == 0) {
            return p58.BCE;
        }
        if (i == 1) {
            return p58.CE;
        }
        throw new l48(jo.g("Invalid era: ", i));
    }
}
