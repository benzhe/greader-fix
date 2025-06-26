package defpackage;

import defpackage.k78;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class u48 extends o68 implements t68, v68, Comparable<u48>, Serializable {
    public static final /* synthetic */ int g = 0;
    public final q48 e;
    public final a58 f;

    static {
        q48 q48Var = q48.g;
        a58 a58Var = a58.l;
        Objects.requireNonNull(q48Var);
        new u48(q48Var, a58Var);
        q48 q48Var2 = q48.h;
        a58 a58Var2 = a58.k;
        Objects.requireNonNull(q48Var2);
        new u48(q48Var2, a58Var2);
    }

    public u48(q48 q48Var, a58 a58Var) {
        kt7.o(q48Var, "dateTime");
        this.e = q48Var;
        kt7.o(a58Var, "offset");
        this.f = a58Var;
    }

    public static u48 N(o48 o48Var, z48 z48Var) {
        kt7.o(o48Var, "instant");
        kt7.o(z48Var, "zone");
        a58 a58Var = ((k78.a) z48Var.L()).e;
        return new u48(q48.Z(o48Var.e, o48Var.f, a58Var), a58Var);
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new w48((byte) 69, this);
    }

    @Override // defpackage.o68, defpackage.t68
    public t68 C(long j, b78 b78Var) {
        return j == Long.MIN_VALUE ? I(Long.MAX_VALUE, b78Var).I(1L, b78Var) : I(-j, b78Var);
    }

    @Override // defpackage.u68
    public long D(y68 y68Var) {
        if (!(y68Var instanceof q68)) {
            return y68Var.x(this);
        }
        int iOrdinal = ((q68) y68Var).ordinal();
        return iOrdinal != 28 ? iOrdinal != 29 ? this.e.D(y68Var) : this.f.f : P();
    }

    public int K() {
        return this.e.f.h;
    }

    public boolean L(u48 u48Var) {
        long jP = P();
        long jP2 = u48Var.P();
        return jP > jP2 || (jP == jP2 && this.e.f.h > u48Var.e.f.h);
    }

    public boolean M(u48 u48Var) {
        long jP = P();
        long jP2 = u48Var.P();
        return jP < jP2 || (jP == jP2 && this.e.f.h < u48Var.e.f.h);
    }

    @Override // defpackage.t68
    /* renamed from: O, reason: merged with bridge method [inline-methods] */
    public u48 I(long j, b78 b78Var) {
        return b78Var instanceof r68 ? Q(this.e.P(j, b78Var), this.f) : (u48) b78Var.k(this, j);
    }

    public long P() {
        return this.e.P(this.f);
    }

    public final u48 Q(q48 q48Var, a58 a58Var) {
        return (this.e == q48Var && this.f.equals(a58Var)) ? this : new u48(q48Var, a58Var);
    }

    @Override // java.lang.Comparable
    public int compareTo(u48 u48Var) {
        u48 u48Var2 = u48Var;
        if (this.f.equals(u48Var2.f)) {
            return this.e.compareTo(u48Var2.e);
        }
        int iD = kt7.d(P(), u48Var2.P());
        if (iD != 0) {
            return iD;
        }
        q48 q48Var = this.e;
        int i = q48Var.f.h;
        q48 q48Var2 = u48Var2.e;
        int i2 = i - q48Var2.f.h;
        return i2 == 0 ? q48Var.compareTo(q48Var2) : i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u48)) {
            return false;
        }
        u48 u48Var = (u48) obj;
        return this.e.equals(u48Var.e) && this.f.equals(u48Var.f);
    }

    public int hashCode() {
        return this.e.hashCode() ^ this.f.f;
    }

    @Override // defpackage.t68
    public t68 i(y68 y68Var, long j) {
        if (!(y68Var instanceof q68)) {
            return (u48) y68Var.l(this, j);
        }
        q68 q68Var = (q68) y68Var;
        int iOrdinal = q68Var.ordinal();
        return iOrdinal != 28 ? iOrdinal != 29 ? Q(this.e.i(y68Var, j), this.f) : Q(this.e, a58.Q(q68Var.h.a(j, q68Var))) : N(o48.O(j, K()), this.f);
    }

    @Override // defpackage.p68, defpackage.u68
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

    @Override // defpackage.v68
    public t68 l(t68 t68Var) {
        return t68Var.i(q68.C, this.e.e.Q()).i(q68.j, this.e.f.V()).i(q68.L, this.f.f);
    }

    @Override // defpackage.p68, defpackage.u68
    public d78 t(y68 y68Var) {
        return y68Var instanceof q68 ? (y68Var == q68.K || y68Var == q68.L) ? y68Var.w() : this.e.t(y68Var) : y68Var.t(this);
    }

    public String toString() {
        return this.e.toString() + this.f.g;
    }

    @Override // defpackage.p68, defpackage.u68
    public <R> R w(a78<R> a78Var) {
        if (a78Var == z68.b) {
            return (R) o58.g;
        }
        if (a78Var == z68.c) {
            return (R) r68.NANOS;
        }
        if (a78Var == z68.e || a78Var == z68.d) {
            return (R) this.f;
        }
        if (a78Var == z68.f) {
            return (R) this.e.e;
        }
        if (a78Var == z68.g) {
            return (R) this.e.f;
        }
        if (a78Var == z68.a) {
            return null;
        }
        return (R) super.w(a78Var);
    }

    @Override // defpackage.t68
    public t68 x(v68 v68Var) {
        return ((v68Var instanceof p48) || (v68Var instanceof r48) || (v68Var instanceof q48)) ? Q(this.e.x(v68Var), this.f) : v68Var instanceof o48 ? N((o48) v68Var, this.f) : v68Var instanceof a58 ? Q(this.e, (a58) v68Var) : v68Var instanceof u48 ? (u48) v68Var : (u48) v68Var.l(this);
    }

    @Override // defpackage.u68
    public boolean y(y68 y68Var) {
        return (y68Var instanceof q68) || (y68Var != null && y68Var.k(this));
    }
}
