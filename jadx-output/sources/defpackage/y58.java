package defpackage;

import java.io.Serializable;
import org.apache.commons.text.lookup.StringLookupFactory;

/* loaded from: classes2.dex */
public final class y58 extends d58<y58> implements Serializable {
    public final p48 e;

    public y58(p48 p48Var) {
        kt7.o(p48Var, StringLookupFactory.KEY_DATE);
        this.e = p48Var;
    }

    private Object writeReplace() {
        return new w58((byte) 7, this);
    }

    @Override // defpackage.e58, defpackage.o68, defpackage.t68
    /* renamed from: C */
    public t68 N(long j, b78 b78Var) {
        return (y58) super.N(j, b78Var);
    }

    @Override // defpackage.u68
    public long D(y68 y68Var) {
        if (!(y68Var instanceof q68)) {
            return y68Var.x(this);
        }
        switch (((q68) y68Var).ordinal()) {
            case 24:
                return X();
            case 25:
                int iY = Y();
                if (iY < 1) {
                    iY = 1 - iY;
                }
                return iY;
            case 26:
                return Y();
            case 27:
                return Y() < 1 ? 0 : 1;
            default:
                return this.e.D(y68Var);
        }
    }

    @Override // defpackage.d58, defpackage.e58, defpackage.t68
    /* renamed from: I */
    public t68 O(long j, b78 b78Var) {
        return (y58) super.I(j, b78Var);
    }

    @Override // defpackage.d58, defpackage.e58
    public final f58<y58> K(r48 r48Var) {
        return new g58(this, r48Var);
    }

    @Override // defpackage.e58
    public j58 M() {
        return x58.g;
    }

    @Override // defpackage.e58
    public k58 N() {
        return (z58) super.N();
    }

    @Override // defpackage.e58
    /* renamed from: O */
    public e58 N(long j, b78 b78Var) {
        return (y58) super.N(j, b78Var);
    }

    @Override // defpackage.d58, defpackage.e58
    /* renamed from: P */
    public e58 O(long j, b78 b78Var) {
        return (y58) super.I(j, b78Var);
    }

    @Override // defpackage.e58
    public long Q() {
        return this.e.Q();
    }

    @Override // defpackage.e58
    /* renamed from: R */
    public e58 x(v68 v68Var) {
        return (y58) x58.g.l(v68Var.l(this));
    }

    @Override // defpackage.d58
    /* renamed from: T */
    public d58 I(long j, b78 b78Var) {
        return (y58) super.I(j, b78Var);
    }

    @Override // defpackage.d58
    public d58 U(long j) {
        return Z(this.e.g0(j));
    }

    @Override // defpackage.d58
    public d58 V(long j) {
        return Z(this.e.h0(j));
    }

    @Override // defpackage.d58
    public d58 W(long j) {
        return Z(this.e.j0(j));
    }

    public final long X() {
        return ((Y() * 12) + this.e.f) - 1;
    }

    public final int Y() {
        return this.e.e + 543;
    }

    public final y58 Z(p48 p48Var) {
        return p48Var.equals(this.e) ? this : new y58(p48Var);
    }

    @Override // defpackage.e58, defpackage.t68
    /* renamed from: a0, reason: merged with bridge method [inline-methods] */
    public y58 i(y68 y68Var, long j) {
        if (!(y68Var instanceof q68)) {
            return (y58) y68Var.l(this, j);
        }
        q68 q68Var = (q68) y68Var;
        if (D(q68Var) == j) {
            return this;
        }
        switch (q68Var.ordinal()) {
            case 24:
                x58.g.M(q68Var).b(j, q68Var);
                return Z(this.e.h0(j - X()));
            case 25:
            case 26:
            case 27:
                int iA = x58.g.M(q68Var).a(j, q68Var);
                switch (q68Var.ordinal()) {
                    case 25:
                        p48 p48Var = this.e;
                        if (Y() < 1) {
                            iA = 1 - iA;
                        }
                        return Z(p48Var.o0(iA - 543));
                    case 26:
                        return Z(this.e.o0(iA - 543));
                    case 27:
                        return Z(this.e.o0((1 - Y()) - 543));
                }
        }
        return Z(this.e.S(y68Var, j));
    }

    @Override // defpackage.e58
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof y58) {
            return this.e.equals(((y58) obj).e);
        }
        return false;
    }

    @Override // defpackage.e58
    public int hashCode() {
        x58 x58Var = x58.g;
        return 146118545 ^ this.e.hashCode();
    }

    @Override // defpackage.p68, defpackage.u68
    public d78 t(y68 y68Var) {
        if (!(y68Var instanceof q68)) {
            return y68Var.t(this);
        }
        if (!y(y68Var)) {
            throw new c78(jo.p("Unsupported field: ", y68Var));
        }
        q68 q68Var = (q68) y68Var;
        int iOrdinal = q68Var.ordinal();
        if (iOrdinal == 18 || iOrdinal == 19 || iOrdinal == 21) {
            return this.e.t(y68Var);
        }
        if (iOrdinal != 25) {
            return x58.g.M(q68Var);
        }
        d78 d78Var = q68.I.h;
        return d78.d(1L, Y() <= 0 ? (-(d78Var.e + 543)) + 1 : 543 + d78Var.h);
    }

    @Override // defpackage.e58, defpackage.t68
    public t68 x(v68 v68Var) {
        return (y58) x58.g.l(v68Var.l(this));
    }
}
