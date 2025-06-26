package defpackage;

import defpackage.e58;

/* loaded from: classes2.dex */
public abstract class f58<D extends e58> extends o68 implements t68, v68, Comparable<f58<?>> {
    public abstract h58<D> K(z48 z48Var);

    @Override // java.lang.Comparable
    /* renamed from: L, reason: merged with bridge method [inline-methods] */
    public int compareTo(f58<?> f58Var) {
        int iL = Q().compareTo(f58Var.Q());
        if (iL != 0) {
            return iL;
        }
        int iK = R().compareTo(f58Var.R());
        return iK == 0 ? M().compareTo(f58Var.M()) : iK;
    }

    public j58 M() {
        return Q().M();
    }

    @Override // defpackage.o68, defpackage.t68
    /* renamed from: N, reason: merged with bridge method [inline-methods] */
    public f58<D> N(long j, b78 b78Var) {
        return Q().M().t(super.N(j, b78Var));
    }

    @Override // defpackage.t68
    /* renamed from: O, reason: merged with bridge method [inline-methods] */
    public abstract f58<D> I(long j, b78 b78Var);

    public long P(a58 a58Var) {
        kt7.o(a58Var, "offset");
        return ((Q().Q() * 86400) + R().W()) - a58Var.f;
    }

    public abstract D Q();

    public abstract r48 R();

    @Override // defpackage.t68
    /* renamed from: S, reason: merged with bridge method [inline-methods] */
    public f58<D> x(v68 v68Var) {
        return Q().M().t(v68Var.l(this));
    }

    @Override // defpackage.t68
    /* renamed from: T, reason: merged with bridge method [inline-methods] */
    public abstract f58<D> i(y68 y68Var, long j);

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof f58) && compareTo((f58) obj) == 0;
    }

    public int hashCode() {
        return Q().hashCode() ^ R().hashCode();
    }

    @Override // defpackage.v68
    public t68 l(t68 t68Var) {
        return t68Var.i(q68.C, Q().Q()).i(q68.j, R().V());
    }

    public String toString() {
        return Q().toString() + 'T' + R().toString();
    }

    @Override // defpackage.p68, defpackage.u68
    public <R> R w(a78<R> a78Var) {
        if (a78Var == z68.b) {
            return (R) M();
        }
        if (a78Var == z68.c) {
            return (R) r68.NANOS;
        }
        if (a78Var == z68.f) {
            return (R) p48.e0(Q().Q());
        }
        if (a78Var == z68.g) {
            return (R) R();
        }
        if (a78Var == z68.d || a78Var == z68.a || a78Var == z68.e) {
            return null;
        }
        return (R) super.w(a78Var);
    }
}
