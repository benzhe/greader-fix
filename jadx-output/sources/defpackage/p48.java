package defpackage;

import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public final class p48 extends e58 implements t68, v68, Serializable {
    public static final p48 h = c0(-999999999, 1, 1);
    public static final p48 i = c0(999999999, 12, 31);
    public final int e;
    public final short f;
    public final short g;

    public p48(int i2, int i3, int i4) {
        this.e = i2;
        this.f = (short) i3;
        this.g = (short) i4;
    }

    public static p48 U(int i2, s48 s48Var, int i3) {
        if (i3 <= 28 || i3 <= s48Var.M(o58.g.M(i2))) {
            return new p48(i2, s48Var.L(), i3);
        }
        if (i3 == 29) {
            throw new l48(jo.h("Invalid date 'February 29' as '", i2, "' is not a leap year"));
        }
        StringBuilder sbZ = jo.z("Invalid date '");
        sbZ.append(s48Var.name());
        sbZ.append(StringUtils.SPACE);
        sbZ.append(i3);
        sbZ.append("'");
        throw new l48(sbZ.toString());
    }

    public static p48 V(u68 u68Var) {
        p48 p48Var = (p48) u68Var.w(z68.f);
        if (p48Var != null) {
            return p48Var;
        }
        throw new l48(jo.u(u68Var, jo.D("Unable to obtain LocalDate from TemporalAccessor: ", u68Var, ", type ")));
    }

    public static p48 c0(int i2, int i3, int i4) {
        q68 q68Var = q68.I;
        q68Var.h.b(i2, q68Var);
        q68 q68Var2 = q68.F;
        q68Var2.h.b(i3, q68Var2);
        q68 q68Var3 = q68.A;
        q68Var3.h.b(i4, q68Var3);
        return U(i2, s48.O(i3), i4);
    }

    public static p48 d0(int i2, s48 s48Var, int i3) {
        q68 q68Var = q68.I;
        q68Var.h.b(i2, q68Var);
        kt7.o(s48Var, "month");
        q68 q68Var2 = q68.A;
        q68Var2.h.b(i3, q68Var2);
        return U(i2, s48Var, i3);
    }

    public static p48 e0(long j) {
        long j2;
        q68 q68Var = q68.C;
        q68Var.h.b(j, q68Var);
        long j3 = (j + 719528) - 60;
        if (j3 < 0) {
            long j4 = ((j3 + 1) / 146097) - 1;
            j2 = j4 * 400;
            j3 += (-j4) * 146097;
        } else {
            j2 = 0;
        }
        long j5 = ((j3 * 400) + 591) / 146097;
        long j6 = j3 - ((j5 / 400) + (((j5 / 4) + (j5 * 365)) - (j5 / 100)));
        if (j6 < 0) {
            j5--;
            j6 = j3 - ((j5 / 400) + (((j5 / 4) + (365 * j5)) - (j5 / 100)));
        }
        int i2 = (int) j6;
        int i3 = ((i2 * 5) + 2) / 153;
        return new p48(q68.I.C(j5 + j2 + (i3 / 10)), ((i3 + 2) % 12) + 1, (i2 - (((i3 * 306) + 5) / 10)) + 1);
    }

    public static p48 k0(int i2, int i3, int i4) {
        if (i3 == 2) {
            i4 = Math.min(i4, o58.g.M((long) i2) ? 29 : 28);
        } else if (i3 == 4 || i3 == 6 || i3 == 9 || i3 == 11) {
            i4 = Math.min(i4, 30);
        }
        return c0(i2, i3, i4);
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new w48((byte) 3, this);
    }

    @Override // defpackage.u68
    public long D(y68 y68Var) {
        return y68Var instanceof q68 ? y68Var == q68.C ? Q() : y68Var == q68.G ? (this.e * 12) + (this.f - 1) : W(y68Var) : y68Var.x(this);
    }

    @Override // defpackage.e58
    public f58 K(r48 r48Var) {
        return q48.Y(this, r48Var);
    }

    @Override // defpackage.e58, java.lang.Comparable
    /* renamed from: L, reason: merged with bridge method [inline-methods] */
    public int compareTo(e58 e58Var) {
        return e58Var instanceof p48 ? T((p48) e58Var) : super.compareTo(e58Var);
    }

    @Override // defpackage.e58
    public j58 M() {
        return o58.g;
    }

    @Override // defpackage.e58
    public k58 N() {
        return super.N();
    }

    @Override // defpackage.e58
    public long Q() {
        long j;
        long j2 = this.e;
        long j3 = this.f;
        long j4 = (365 * j2) + 0;
        if (j2 >= 0) {
            j = ((j2 + 399) / 400) + (((3 + j2) / 4) - ((99 + j2) / 100)) + j4;
        } else {
            j = j4 - ((j2 / (-400)) + ((j2 / (-4)) - (j2 / (-100))));
        }
        long j5 = (((367 * j3) - 362) / 12) + j + (this.g - 1);
        if (j3 > 2) {
            j5--;
            if (!a0()) {
                j5--;
            }
        }
        return j5 - 719528;
    }

    public int T(p48 p48Var) {
        int i2 = this.e - p48Var.e;
        if (i2 != 0) {
            return i2;
        }
        int i3 = this.f - p48Var.f;
        return i3 == 0 ? this.g - p48Var.g : i3;
    }

    public final int W(y68 y68Var) {
        switch (((q68) y68Var).ordinal()) {
            case 15:
                return X().K();
            case 16:
                return ((this.g - 1) % 7) + 1;
            case 17:
                return ((Y() - 1) % 7) + 1;
            case 18:
                return this.g;
            case 19:
                return Y();
            case 20:
                throw new l48(jo.p("Field too large for an int: ", y68Var));
            case 21:
                return ((this.g - 1) / 7) + 1;
            case 22:
                return ((Y() - 1) / 7) + 1;
            case 23:
                return this.f;
            case 24:
                throw new l48(jo.p("Field too large for an int: ", y68Var));
            case 25:
                int i2 = this.e;
                return i2 >= 1 ? i2 : 1 - i2;
            case 26:
                return this.e;
            case 27:
                return this.e >= 1 ? 1 : 0;
            default:
                throw new c78(jo.p("Unsupported field: ", y68Var));
        }
    }

    public m48 X() {
        return m48.L(kt7.h(Q() + 3, 7) + 1);
    }

    public int Y() {
        return (s48.O(this.f).K(a0()) + this.g) - 1;
    }

    public boolean Z(e58 e58Var) {
        return e58Var instanceof p48 ? T((p48) e58Var) < 0 : Q() < e58Var.Q();
    }

    public boolean a0() {
        return o58.g.M(this.e);
    }

    @Override // defpackage.e58
    /* renamed from: b0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public p48 N(long j, b78 b78Var) {
        return j == Long.MIN_VALUE ? I(Long.MAX_VALUE, b78Var).I(1L, b78Var) : I(-j, b78Var);
    }

    @Override // defpackage.e58
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof p48) && T((p48) obj) == 0;
    }

    @Override // defpackage.e58
    /* renamed from: f0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public p48 O(long j, b78 b78Var) {
        if (!(b78Var instanceof r68)) {
            return (p48) b78Var.k(this, j);
        }
        switch (((r68) b78Var).ordinal()) {
            case 7:
                return g0(j);
            case 8:
                return i0(j);
            case 9:
                return h0(j);
            case 10:
                return j0(j);
            case 11:
                return j0(kt7.r(j, 10));
            case 12:
                return j0(kt7.r(j, 100));
            case 13:
                return j0(kt7.r(j, 1000));
            case 14:
                q68 q68Var = q68.J;
                return S(q68Var, kt7.q(D(q68Var), j));
            default:
                throw new c78("Unsupported unit: " + b78Var);
        }
    }

    public p48 g0(long j) {
        return j == 0 ? this : e0(kt7.q(Q(), j));
    }

    public p48 h0(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (this.e * 12) + (this.f - 1) + j;
        return k0(q68.I.C(kt7.f(j2, 12L)), kt7.h(j2, 12) + 1, this.g);
    }

    @Override // defpackage.e58
    public int hashCode() {
        int i2 = this.e;
        return (((i2 << 11) + (this.f << 6)) + this.g) ^ (i2 & (-2048));
    }

    public p48 i0(long j) {
        return g0(kt7.r(j, 7));
    }

    public p48 j0(long j) {
        return j == 0 ? this : k0(q68.I.C(this.e + j), this.f, this.g);
    }

    @Override // defpackage.p68, defpackage.u68
    public int k(y68 y68Var) {
        return y68Var instanceof q68 ? W(y68Var) : t(y68Var).a(D(y68Var), y68Var);
    }

    @Override // defpackage.e58, defpackage.v68
    public t68 l(t68 t68Var) {
        return super.l(t68Var);
    }

    @Override // defpackage.e58, defpackage.t68
    /* renamed from: l0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public p48 x(v68 v68Var) {
        return v68Var instanceof p48 ? (p48) v68Var : (p48) v68Var.l(this);
    }

    @Override // defpackage.e58, defpackage.t68
    /* renamed from: m0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public p48 i(y68 y68Var, long j) {
        if (!(y68Var instanceof q68)) {
            return (p48) y68Var.l(this, j);
        }
        q68 q68Var = (q68) y68Var;
        q68Var.h.b(j, q68Var);
        switch (q68Var.ordinal()) {
            case 15:
                return g0(j - X().K());
            case 16:
                return g0(j - D(q68.y));
            case 17:
                return g0(j - D(q68.z));
            case 18:
                int i2 = (int) j;
                return this.g == i2 ? this : c0(this.e, this.f, i2);
            case 19:
                return n0((int) j);
            case 20:
                return e0(j);
            case 21:
                return i0(j - D(q68.D));
            case 22:
                return i0(j - D(q68.E));
            case 23:
                int i3 = (int) j;
                if (this.f == i3) {
                    return this;
                }
                q68 q68Var2 = q68.F;
                q68Var2.h.b(i3, q68Var2);
                return k0(this.e, i3, this.g);
            case 24:
                return h0(j - D(q68.G));
            case 25:
                if (this.e < 1) {
                    j = 1 - j;
                }
                return o0((int) j);
            case 26:
                return o0((int) j);
            case 27:
                return D(q68.J) == j ? this : o0(1 - this.e);
            default:
                throw new c78(jo.p("Unsupported field: ", y68Var));
        }
    }

    public p48 n0(int i2) {
        if (Y() == i2) {
            return this;
        }
        int i3 = this.e;
        q68 q68Var = q68.I;
        long j = i3;
        q68Var.h.b(j, q68Var);
        q68 q68Var2 = q68.B;
        q68Var2.h.b(i2, q68Var2);
        boolean zM = o58.g.M(j);
        if (i2 == 366 && !zM) {
            throw new l48(jo.h("Invalid date 'DayOfYear 366' as '", i3, "' is not a leap year"));
        }
        s48 s48VarO = s48.O(((i2 - 1) / 31) + 1);
        if (i2 > (s48VarO.M(zM) + s48VarO.K(zM)) - 1) {
            s48VarO = s48.q[((((int) 1) + 12) + s48VarO.ordinal()) % 12];
        }
        return U(i3, s48VarO, (i2 - s48VarO.K(zM)) + 1);
    }

    public p48 o0(int i2) {
        if (this.e == i2) {
            return this;
        }
        q68 q68Var = q68.I;
        q68Var.h.b(i2, q68Var);
        return k0(i2, this.f, this.g);
    }

    @Override // defpackage.p68, defpackage.u68
    public d78 t(y68 y68Var) {
        if (!(y68Var instanceof q68)) {
            return y68Var.t(this);
        }
        q68 q68Var = (q68) y68Var;
        if (!q68Var.i()) {
            throw new c78(jo.p("Unsupported field: ", y68Var));
        }
        int iOrdinal = q68Var.ordinal();
        if (iOrdinal == 18) {
            short s = this.f;
            return d78.d(1L, s != 2 ? (s == 4 || s == 6 || s == 9 || s == 11) ? 30 : 31 : a0() ? 29 : 28);
        }
        if (iOrdinal == 19) {
            return d78.d(1L, a0() ? 366 : 365);
        }
        if (iOrdinal == 21) {
            return d78.d(1L, (s48.O(this.f) != s48.FEBRUARY || a0()) ? 5L : 4L);
        }
        if (iOrdinal != 25) {
            return y68Var.w();
        }
        return d78.d(1L, this.e <= 0 ? 1000000000L : 999999999L);
    }

    @Override // defpackage.e58
    public String toString() {
        int i2 = this.e;
        short s = this.f;
        short s2 = this.g;
        int iAbs = Math.abs(i2);
        StringBuilder sb = new StringBuilder(10);
        if (iAbs >= 1000) {
            if (i2 > 9999) {
                sb.append('+');
            }
            sb.append(i2);
        } else if (i2 < 0) {
            sb.append(i2 - 10000);
            sb.deleteCharAt(1);
        } else {
            sb.append(i2 + 10000);
            sb.deleteCharAt(0);
        }
        sb.append(s < 10 ? "-0" : "-");
        sb.append((int) s);
        sb.append(s2 >= 10 ? "-" : "-0");
        sb.append((int) s2);
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.e58, defpackage.p68, defpackage.u68
    public <R> R w(a78<R> a78Var) {
        return a78Var == z68.f ? this : (R) super.w(a78Var);
    }

    @Override // defpackage.e58, defpackage.u68
    public boolean y(y68 y68Var) {
        return super.y(y68Var);
    }
}
