package defpackage;

/* loaded from: classes2.dex */
public final class x68 implements v68 {
    public final int e;
    public final int f;

    public x68(int i, m48 m48Var, w68 w68Var) {
        kt7.o(m48Var, "dayOfWeek");
        this.e = i;
        this.f = m48Var.K();
    }

    @Override // defpackage.v68
    public t68 l(t68 t68Var) {
        int iK = t68Var.k(q68.x);
        int i = this.e;
        if (i < 2 && iK == this.f) {
            return t68Var;
        }
        if ((i & 1) == 0) {
            return t68Var.I(iK - this.f >= 0 ? 7 - r0 : -r0, r68.DAYS);
        }
        return t68Var.C(this.f - iK >= 0 ? 7 - r1 : -r1, r68.DAYS);
    }
}
