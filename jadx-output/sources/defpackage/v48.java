package defpackage;

import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class v48 extends p68 implements t68, v68, Comparable<v48>, Serializable {
    public static final /* synthetic */ int g = 0;
    public final r48 e;
    public final a58 f;

    static {
        r48 r48Var = r48.i;
        a58 a58Var = a58.l;
        Objects.requireNonNull(r48Var);
        new v48(r48Var, a58Var);
        r48 r48Var2 = r48.j;
        a58 a58Var2 = a58.k;
        Objects.requireNonNull(r48Var2);
        new v48(r48Var2, a58Var2);
    }

    public v48(r48 r48Var, a58 a58Var) {
        kt7.o(r48Var, "time");
        this.e = r48Var;
        kt7.o(a58Var, "offset");
        this.f = a58Var;
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new w48((byte) 66, this);
    }

    @Override // defpackage.t68
    /* renamed from: C */
    public t68 N(long j, b78 b78Var) {
        return j == Long.MIN_VALUE ? O(Long.MAX_VALUE, b78Var).O(1L, b78Var) : O(-j, b78Var);
    }

    @Override // defpackage.u68
    public long D(y68 y68Var) {
        return y68Var instanceof q68 ? y68Var == q68.L ? this.f.f : this.e.D(y68Var) : y68Var.x(this);
    }

    @Override // defpackage.t68
    /* renamed from: K, reason: merged with bridge method [inline-methods] */
    public v48 O(long j, b78 b78Var) {
        return b78Var instanceof r68 ? L(this.e.I(j, b78Var), this.f) : (v48) b78Var.k(this, j);
    }

    public final v48 L(r48 r48Var, a58 a58Var) {
        return (this.e == r48Var && this.f.equals(a58Var)) ? this : new v48(r48Var, a58Var);
    }

    @Override // java.lang.Comparable
    public int compareTo(v48 v48Var) {
        v48 v48Var2 = v48Var;
        if (this.f.equals(v48Var2.f)) {
            return this.e.compareTo(v48Var2.e);
        }
        int iD = kt7.d(this.e.V() - (this.f.f * 1000000000), v48Var2.e.V() - (v48Var2.f.f * 1000000000));
        return iD == 0 ? this.e.compareTo(v48Var2.e) : iD;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v48)) {
            return false;
        }
        v48 v48Var = (v48) obj;
        return this.e.equals(v48Var.e) && this.f.equals(v48Var.f);
    }

    public int hashCode() {
        return this.e.hashCode() ^ this.f.f;
    }

    @Override // defpackage.t68
    public t68 i(y68 y68Var, long j) {
        if (!(y68Var instanceof q68)) {
            return (v48) y68Var.l(this, j);
        }
        if (y68Var != q68.L) {
            return L(this.e.i(y68Var, j), this.f);
        }
        q68 q68Var = (q68) y68Var;
        return L(this.e, a58.Q(q68Var.h.a(j, q68Var)));
    }

    @Override // defpackage.p68, defpackage.u68
    public int k(y68 y68Var) {
        return super.k(y68Var);
    }

    @Override // defpackage.v68
    public t68 l(t68 t68Var) {
        return t68Var.i(q68.j, this.e.V()).i(q68.L, this.f.f);
    }

    @Override // defpackage.p68, defpackage.u68
    public d78 t(y68 y68Var) {
        return y68Var instanceof q68 ? y68Var == q68.L ? y68Var.w() : this.e.t(y68Var) : y68Var.t(this);
    }

    public String toString() {
        return this.e.toString() + this.f.g;
    }

    @Override // defpackage.p68, defpackage.u68
    public <R> R w(a78<R> a78Var) {
        if (a78Var == z68.c) {
            return (R) r68.NANOS;
        }
        if (a78Var == z68.e || a78Var == z68.d) {
            return (R) this.f;
        }
        if (a78Var == z68.g) {
            return (R) this.e;
        }
        if (a78Var == z68.b || a78Var == z68.f || a78Var == z68.a) {
            return null;
        }
        return (R) super.w(a78Var);
    }

    @Override // defpackage.t68
    public t68 x(v68 v68Var) {
        return v68Var instanceof r48 ? L((r48) v68Var, this.f) : v68Var instanceof a58 ? L(this.e, (a58) v68Var) : v68Var instanceof v48 ? (v48) v68Var : (v48) v68Var.l(this);
    }

    @Override // defpackage.u68
    public boolean y(y68 y68Var) {
        return y68Var instanceof q68 ? y68Var.y() || y68Var == q68.L : y68Var != null && y68Var.k(this);
    }
}
