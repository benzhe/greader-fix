package defpackage;

import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public abstract class e58 extends o68 implements t68, v68, Comparable<e58> {
    public f58<?> K(r48 r48Var) {
        return new g58(this, r48Var);
    }

    @Override // java.lang.Comparable
    /* renamed from: L */
    public int compareTo(e58 e58Var) {
        int iD = kt7.d(Q(), e58Var.Q());
        return iD == 0 ? M().compareTo(e58Var.M()) : iD;
    }

    public abstract j58 M();

    public k58 N() {
        return M().x(k(q68.J));
    }

    @Override // defpackage.o68, defpackage.t68
    /* renamed from: O, reason: merged with bridge method [inline-methods] */
    public e58 N(long j, b78 b78Var) {
        return M().l(super.N(j, b78Var));
    }

    @Override // defpackage.t68
    /* renamed from: P, reason: merged with bridge method [inline-methods] */
    public abstract e58 I(long j, b78 b78Var);

    public long Q() {
        return D(q68.C);
    }

    @Override // defpackage.t68
    /* renamed from: R */
    public e58 x(v68 v68Var) {
        return M().l(v68Var.l(this));
    }

    @Override // defpackage.t68
    /* renamed from: S */
    public abstract e58 i(y68 y68Var, long j);

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof e58) && compareTo((e58) obj) == 0;
    }

    public int hashCode() {
        long jQ = Q();
        return M().hashCode() ^ ((int) (jQ ^ (jQ >>> 32)));
    }

    @Override // defpackage.v68
    public t68 l(t68 t68Var) {
        return t68Var.i(q68.C, Q());
    }

    public String toString() {
        long jD = D(q68.H);
        long jD2 = D(q68.F);
        long jD3 = D(q68.A);
        StringBuilder sb = new StringBuilder(30);
        sb.append(M().toString());
        sb.append(StringUtils.SPACE);
        sb.append(N());
        sb.append(StringUtils.SPACE);
        sb.append(jD);
        sb.append(jD2 < 10 ? "-0" : "-");
        sb.append(jD2);
        sb.append(jD3 >= 10 ? "-" : "-0");
        sb.append(jD3);
        return sb.toString();
    }

    @Override // defpackage.p68, defpackage.u68
    public <R> R w(a78<R> a78Var) {
        if (a78Var == z68.b) {
            return (R) M();
        }
        if (a78Var == z68.c) {
            return (R) r68.DAYS;
        }
        if (a78Var == z68.f) {
            return (R) p48.e0(Q());
        }
        if (a78Var == z68.g || a78Var == z68.d || a78Var == z68.a || a78Var == z68.e) {
            return null;
        }
        return (R) super.w(a78Var);
    }

    @Override // defpackage.u68
    public boolean y(y68 y68Var) {
        return y68Var instanceof q68 ? y68Var.i() : y68Var != null && y68Var.k(this);
    }
}
