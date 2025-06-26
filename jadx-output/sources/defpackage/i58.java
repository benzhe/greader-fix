package defpackage;

import defpackage.e58;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.List;

/* loaded from: classes2.dex */
public final class i58<D extends e58> extends h58<D> implements Serializable {
    public final g58<D> e;
    public final a58 f;
    public final z48 g;

    public i58(g58<D> g58Var, a58 a58Var, z48 z48Var) {
        kt7.o(g58Var, "dateTime");
        this.e = g58Var;
        kt7.o(a58Var, "offset");
        this.f = a58Var;
        kt7.o(z48Var, "zone");
        this.g = z48Var;
    }

    public static <R extends e58> h58<R> W(g58<R> g58Var, z48 z48Var, a58 a58Var) {
        kt7.o(g58Var, "localDateTime");
        kt7.o(z48Var, "zone");
        if (z48Var instanceof a58) {
            return new i58(g58Var, (a58) z48Var, z48Var);
        }
        k78 k78VarL = z48Var.L();
        q48 q48VarV = q48.V(g58Var);
        List<a58> listC = k78VarL.c(q48VarV);
        if (listC.size() == 1) {
            a58Var = listC.get(0);
        } else if (listC.size() == 0) {
            i78 i78VarB = k78VarL.b(q48VarV);
            g58Var = g58Var.X(g58Var.e, 0L, 0L, n48.l(i78VarB.g.f - i78VarB.f.f).e, 0L);
            a58Var = i78VarB.g;
        } else if (a58Var == null || !listC.contains(a58Var)) {
            a58Var = listC.get(0);
        }
        kt7.o(a58Var, "offset");
        return new i58(g58Var, a58Var, z48Var);
    }

    public static <R extends e58> i58<R> X(j58 j58Var, o48 o48Var, z48 z48Var) {
        a58 a58VarA = z48Var.L().a(o48Var);
        kt7.o(a58VarA, "offset");
        return new i58<>((g58) j58Var.I(q48.Z(o48Var.e, o48Var.f, a58VarA)), a58VarA, z48Var);
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new w58((byte) 13, this);
    }

    @Override // defpackage.h58
    public a58 L() {
        return this.f;
    }

    @Override // defpackage.h58
    public z48 M() {
        return this.g;
    }

    @Override // defpackage.h58, defpackage.t68
    /* renamed from: O */
    public h58<D> O(long j, b78 b78Var) {
        if (!(b78Var instanceof r68)) {
            return Q().M().w(b78Var.k(this, j));
        }
        return Q().M().w(this.e.O(j, b78Var).l(this));
    }

    @Override // defpackage.h58
    public f58<D> R() {
        return this.e;
    }

    @Override // defpackage.h58, defpackage.t68
    /* renamed from: U */
    public h58<D> i(y68 y68Var, long j) {
        if (!(y68Var instanceof q68)) {
            return Q().M().w(y68Var.l(this, j));
        }
        q68 q68Var = (q68) y68Var;
        int iOrdinal = q68Var.ordinal();
        if (iOrdinal == 28) {
            return I(j - P(), r68.SECONDS);
        }
        if (iOrdinal != 29) {
            return W(this.e.i(y68Var, j), this.g, this.f);
        }
        a58 a58VarQ = a58.Q(q68Var.h.a(j, q68Var));
        return X(Q().M(), o48.O(this.e.P(a58VarQ), r5.f.h), this.g);
    }

    @Override // defpackage.h58
    public h58<D> V(z48 z48Var) {
        return W(this.e, z48Var, this.f);
    }

    @Override // defpackage.h58
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof h58) && compareTo((h58) obj) == 0;
    }

    @Override // defpackage.h58
    public int hashCode() {
        return (this.e.hashCode() ^ this.f.f) ^ Integer.rotateLeft(this.g.hashCode(), 3);
    }

    @Override // defpackage.h58
    public String toString() {
        String str = this.e.toString() + this.f.g;
        if (this.f == this.g) {
            return str;
        }
        return str + '[' + this.g.toString() + ']';
    }

    @Override // defpackage.u68
    public boolean y(y68 y68Var) {
        return (y68Var instanceof q68) || (y68Var != null && y68Var.k(this));
    }
}
