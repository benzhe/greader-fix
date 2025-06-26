package defpackage;

import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.List;

/* loaded from: classes2.dex */
public final class c58 extends h58<p48> implements t68, Serializable {
    public final q48 e;
    public final a58 f;
    public final z48 g;

    public c58(q48 q48Var, a58 a58Var, z48 z48Var) {
        this.e = q48Var;
        this.f = a58Var;
        this.g = z48Var;
    }

    public static c58 W(long j, int i, z48 z48Var) {
        a58 a58VarA = z48Var.L().a(o48.O(j, i));
        return new c58(q48.Z(j, i, a58VarA), a58VarA, z48Var);
    }

    public static c58 Y(q48 q48Var, z48 z48Var, a58 a58Var) {
        kt7.o(q48Var, "localDateTime");
        kt7.o(z48Var, "zone");
        if (z48Var instanceof a58) {
            return new c58(q48Var, (a58) z48Var, z48Var);
        }
        k78 k78VarL = z48Var.L();
        List<a58> listC = k78VarL.c(q48Var);
        if (listC.size() == 1) {
            a58Var = listC.get(0);
        } else if (listC.size() == 0) {
            i78 i78VarB = k78VarL.b(q48Var);
            q48Var = q48Var.d0(n48.l(i78VarB.g.f - i78VarB.f.f).e);
            a58Var = i78VarB.g;
        } else if (a58Var == null || !listC.contains(a58Var)) {
            a58 a58Var2 = listC.get(0);
            kt7.o(a58Var2, "offset");
            a58Var = a58Var2;
        }
        return new c58(q48Var, a58Var, z48Var);
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new w48((byte) 6, this);
    }

    @Override // defpackage.h58, defpackage.u68
    public long D(y68 y68Var) {
        if (!(y68Var instanceof q68)) {
            return y68Var.x(this);
        }
        int iOrdinal = ((q68) y68Var).ordinal();
        return iOrdinal != 28 ? iOrdinal != 29 ? this.e.D(y68Var) : this.f.f : P();
    }

    @Override // defpackage.h58
    public a58 L() {
        return this.f;
    }

    @Override // defpackage.h58
    public z48 M() {
        return this.g;
    }

    @Override // defpackage.h58
    public e58 Q() {
        return this.e.e;
    }

    @Override // defpackage.h58
    public f58 R() {
        return this.e;
    }

    @Override // defpackage.h58
    public r48 S() {
        return this.e.f;
    }

    @Override // defpackage.h58
    public h58 V(z48 z48Var) {
        kt7.o(z48Var, "zone");
        return this.g.equals(z48Var) ? this : Y(this.e, z48Var, this.f);
    }

    @Override // defpackage.h58
    /* renamed from: X, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public c58 N(long j, b78 b78Var) {
        return j == Long.MIN_VALUE ? I(Long.MAX_VALUE, b78Var).I(1L, b78Var) : I(-j, b78Var);
    }

    @Override // defpackage.h58
    /* renamed from: Z, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public c58 I(long j, b78 b78Var) {
        if (!(b78Var instanceof r68)) {
            return (c58) b78Var.k(this, j);
        }
        if (b78Var.i()) {
            return a0(this.e.P(j, b78Var));
        }
        q48 q48VarP = this.e.P(j, b78Var);
        a58 a58Var = this.f;
        z48 z48Var = this.g;
        kt7.o(q48VarP, "localDateTime");
        kt7.o(a58Var, "offset");
        kt7.o(z48Var, "zone");
        return W(q48VarP.P(a58Var), q48VarP.f.h, z48Var);
    }

    public final c58 a0(q48 q48Var) {
        return Y(q48Var, this.g, this.f);
    }

    public final c58 b0(a58 a58Var) {
        return (a58Var.equals(this.f) || !this.g.L().f(this.e, a58Var)) ? this : new c58(this.e, a58Var, this.g);
    }

    @Override // defpackage.h58, defpackage.t68
    /* renamed from: c0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public c58 x(v68 v68Var) {
        if (v68Var instanceof p48) {
            return Y(q48.Y((p48) v68Var, this.e.f), this.g, this.f);
        }
        if (v68Var instanceof r48) {
            return Y(q48.Y(this.e.e, (r48) v68Var), this.g, this.f);
        }
        if (v68Var instanceof q48) {
            return a0((q48) v68Var);
        }
        if (!(v68Var instanceof o48)) {
            return v68Var instanceof a58 ? b0((a58) v68Var) : (c58) v68Var.l(this);
        }
        o48 o48Var = (o48) v68Var;
        return W(o48Var.e, o48Var.f, this.g);
    }

    @Override // defpackage.h58, defpackage.t68
    /* renamed from: d0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public c58 i(y68 y68Var, long j) {
        if (!(y68Var instanceof q68)) {
            return (c58) y68Var.l(this, j);
        }
        q68 q68Var = (q68) y68Var;
        int iOrdinal = q68Var.ordinal();
        return iOrdinal != 28 ? iOrdinal != 29 ? a0(this.e.i(y68Var, j)) : b0(a58.Q(q68Var.h.a(j, q68Var))) : W(j, this.e.f.h, this.g);
    }

    @Override // defpackage.h58
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c58)) {
            return false;
        }
        c58 c58Var = (c58) obj;
        return this.e.equals(c58Var.e) && this.f.equals(c58Var.f) && this.g.equals(c58Var.g);
    }

    @Override // defpackage.h58
    public int hashCode() {
        return (this.e.hashCode() ^ this.f.f) ^ Integer.rotateLeft(this.g.hashCode(), 3);
    }

    @Override // defpackage.h58, defpackage.p68, defpackage.u68
    public int k(y68 y68Var) {
        if (!(y68Var instanceof q68)) {
            return super.k(y68Var);
        }
        int iOrdinal = ((q68) y68Var).ordinal();
        if (iOrdinal != 28) {
            return iOrdinal != 29 ? this.e.k(y68Var) : this.f.f;
        }
        throw new l48(jo.p("Field too large for an int: ", y68Var));
    }

    @Override // defpackage.h58, defpackage.p68, defpackage.u68
    public d78 t(y68 y68Var) {
        return y68Var instanceof q68 ? (y68Var == q68.K || y68Var == q68.L) ? y68Var.w() : this.e.t(y68Var) : y68Var.t(this);
    }

    @Override // defpackage.h58
    public String toString() {
        String str = this.e.toString() + this.f.g;
        if (this.f == this.g) {
            return str;
        }
        return str + '[' + this.g.toString() + ']';
    }

    @Override // defpackage.h58, defpackage.p68, defpackage.u68
    public <R> R w(a78<R> a78Var) {
        return a78Var == z68.f ? (R) this.e.e : (R) super.w(a78Var);
    }

    @Override // defpackage.u68
    public boolean y(y68 y68Var) {
        return (y68Var instanceof q68) || (y68Var != null && y68Var.k(this));
    }
}
