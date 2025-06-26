package defpackage;

import defpackage.e58;

/* loaded from: classes2.dex */
public abstract class h58<D extends e58> extends o68 implements t68, Comparable<h58<?>> {
    @Override // defpackage.u68
    public long D(y68 y68Var) {
        if (!(y68Var instanceof q68)) {
            return y68Var.x(this);
        }
        int iOrdinal = ((q68) y68Var).ordinal();
        return iOrdinal != 28 ? iOrdinal != 29 ? R().D(y68Var) : L().f : P();
    }

    @Override // java.lang.Comparable
    /* renamed from: K, reason: merged with bridge method [inline-methods] */
    public int compareTo(h58<?> h58Var) {
        int iD = kt7.d(P(), h58Var.P());
        if (iD != 0) {
            return iD;
        }
        int i = S().h - h58Var.S().h;
        if (i != 0) {
            return i;
        }
        int iCompareTo = R().compareTo(h58Var.R());
        if (iCompareTo != 0) {
            return iCompareTo;
        }
        int iCompareTo2 = M().K().compareTo(h58Var.M().K());
        return iCompareTo2 == 0 ? Q().M().compareTo(h58Var.Q().M()) : iCompareTo2;
    }

    public abstract a58 L();

    public abstract z48 M();

    @Override // defpackage.o68, defpackage.t68
    public h58<D> N(long j, b78 b78Var) {
        return Q().M().w(super.N(j, b78Var));
    }

    @Override // defpackage.t68
    /* renamed from: O, reason: merged with bridge method [inline-methods] */
    public abstract h58<D> O(long j, b78 b78Var);

    public long P() {
        return ((Q().Q() * 86400) + S().W()) - L().f;
    }

    public D Q() {
        return (D) R().Q();
    }

    public abstract f58<D> R();

    public r48 S() {
        return R().R();
    }

    @Override // defpackage.t68
    /* renamed from: T */
    public h58<D> x(v68 v68Var) {
        return Q().M().w(v68Var.l(this));
    }

    @Override // defpackage.t68
    /* renamed from: U */
    public abstract h58<D> i(y68 y68Var, long j);

    public abstract h58<D> V(z48 z48Var);

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof h58) && compareTo((h58) obj) == 0;
    }

    public int hashCode() {
        return (R().hashCode() ^ L().f) ^ Integer.rotateLeft(M().hashCode(), 3);
    }

    @Override // defpackage.p68, defpackage.u68
    public int k(y68 y68Var) {
        if (!(y68Var instanceof q68)) {
            return super.k(y68Var);
        }
        int iOrdinal = ((q68) y68Var).ordinal();
        if (iOrdinal != 28) {
            return iOrdinal != 29 ? R().k(y68Var) : L().f;
        }
        throw new c78(jo.p("Field too large for an int: ", y68Var));
    }

    @Override // defpackage.p68, defpackage.u68
    public d78 t(y68 y68Var) {
        return y68Var instanceof q68 ? (y68Var == q68.K || y68Var == q68.L) ? y68Var.w() : R().t(y68Var) : y68Var.t(this);
    }

    public String toString() {
        String str = R().toString() + L().g;
        if (L() == M()) {
            return str;
        }
        return str + '[' + M().toString() + ']';
    }

    @Override // defpackage.p68, defpackage.u68
    public <R> R w(a78<R> a78Var) {
        return (a78Var == z68.a || a78Var == z68.d) ? (R) M() : a78Var == z68.b ? (R) Q().M() : a78Var == z68.c ? (R) r68.NANOS : a78Var == z68.e ? (R) L() : a78Var == z68.f ? (R) p48.e0(Q().Q()) : a78Var == z68.g ? (R) S() : (R) super.w(a78Var);
    }
}
