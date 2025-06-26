package defpackage;

import java.io.Serializable;

/* loaded from: classes2.dex */
public final class t58 extends j58 implements Serializable {
    public static final t58 g = new t58();

    private Object readResolve() {
        return g;
    }

    @Override // defpackage.j58
    public String C() {
        return "roc";
    }

    @Override // defpackage.j58
    public String D() {
        return "Minguo";
    }

    @Override // defpackage.j58
    public f58<u58> I(u68 u68Var) {
        return super.I(u68Var);
    }

    @Override // defpackage.j58
    public h58<u58> L(o48 o48Var, z48 z48Var) {
        return i58.X(this, o48Var, z48Var);
    }

    public d78 M(q68 q68Var) {
        switch (q68Var.ordinal()) {
            case 24:
                d78 d78Var = q68.G.h;
                return d78.d(d78Var.e - 22932, d78Var.h - 22932);
            case 25:
                d78 d78Var2 = q68.I.h;
                return d78.e(1L, d78Var2.h - 1911, (-d78Var2.e) + 1 + 1911);
            case 26:
                d78 d78Var3 = q68.I.h;
                return d78.d(d78Var3.e - 1911, d78Var3.h - 1911);
            default:
                return q68Var.h;
        }
    }

    @Override // defpackage.j58
    public e58 k(u68 u68Var) {
        return u68Var instanceof u58 ? (u58) u68Var : new u58(p48.V(u68Var));
    }

    @Override // defpackage.j58
    public k58 x(int i) {
        return v58.K(i);
    }
}
