package defpackage;

import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class y48 extends p68 implements t68, v68, Comparable<y48>, Serializable {
    public static final /* synthetic */ int g = 0;
    public final int e;
    public final int f;

    static {
        c68 c68VarL = new c68().l(q68.I, 4, 10, j68.EXCEEDS_PAD);
        c68VarL.c('-');
        c68VarL.k(q68.F, 2);
        c68VarL.o();
    }

    public y48(int i, int i2) {
        this.e = i;
        this.f = i2;
    }

    public static y48 K(int i, int i2) {
        q68 q68Var = q68.I;
        q68Var.h.b(i, q68Var);
        q68 q68Var2 = q68.F;
        q68Var2.h.b(i2, q68Var2);
        return new y48(i, i2);
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new w48((byte) 68, this);
    }

    @Override // defpackage.t68
    /* renamed from: C */
    public t68 N(long j, b78 b78Var) {
        return j == Long.MIN_VALUE ? O(Long.MAX_VALUE, b78Var).O(1L, b78Var) : O(-j, b78Var);
    }

    @Override // defpackage.u68
    public long D(y68 y68Var) {
        int i;
        if (!(y68Var instanceof q68)) {
            return y68Var.x(this);
        }
        switch (((q68) y68Var).ordinal()) {
            case 23:
                i = this.f;
                break;
            case 24:
                return (this.e * 12) + (this.f - 1);
            case 25:
                int i2 = this.e;
                if (i2 < 1) {
                    i2 = 1 - i2;
                }
                return i2;
            case 26:
                i = this.e;
                break;
            case 27:
                return this.e < 1 ? 0 : 1;
            default:
                throw new c78(jo.p("Unsupported field: ", y68Var));
        }
        return i;
    }

    @Override // defpackage.t68
    /* renamed from: L, reason: merged with bridge method [inline-methods] */
    public y48 O(long j, b78 b78Var) {
        if (!(b78Var instanceof r68)) {
            return (y48) b78Var.k(this, j);
        }
        switch (((r68) b78Var).ordinal()) {
            case 9:
                return M(j);
            case 10:
                return N(j);
            case 11:
                return N(kt7.r(j, 10));
            case 12:
                return N(kt7.r(j, 100));
            case 13:
                return N(kt7.r(j, 1000));
            case 14:
                q68 q68Var = q68.J;
                return i(q68Var, kt7.q(D(q68Var), j));
            default:
                throw new c78("Unsupported unit: " + b78Var);
        }
    }

    public y48 M(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (this.e * 12) + (this.f - 1) + j;
        return O(q68.I.C(kt7.f(j2, 12L)), kt7.h(j2, 12) + 1);
    }

    public y48 N(long j) {
        return j == 0 ? this : O(q68.I.C(this.e + j), this.f);
    }

    public final y48 O(int i, int i2) {
        return (this.e == i && this.f == i2) ? this : new y48(i, i2);
    }

    @Override // defpackage.t68
    /* renamed from: P, reason: merged with bridge method [inline-methods] */
    public y48 i(y68 y68Var, long j) {
        if (!(y68Var instanceof q68)) {
            return (y48) y68Var.l(this, j);
        }
        q68 q68Var = (q68) y68Var;
        q68Var.h.b(j, q68Var);
        switch (q68Var.ordinal()) {
            case 23:
                int i = (int) j;
                q68 q68Var2 = q68.F;
                q68Var2.h.b(i, q68Var2);
                return O(this.e, i);
            case 24:
                return M(j - D(q68.G));
            case 25:
                if (this.e < 1) {
                    j = 1 - j;
                }
                return Q((int) j);
            case 26:
                return Q((int) j);
            case 27:
                return D(q68.J) == j ? this : Q(1 - this.e);
            default:
                throw new c78(jo.p("Unsupported field: ", y68Var));
        }
    }

    public y48 Q(int i) {
        q68 q68Var = q68.I;
        q68Var.h.b(i, q68Var);
        return O(i, this.f);
    }

    @Override // java.lang.Comparable
    public int compareTo(y48 y48Var) {
        y48 y48Var2 = y48Var;
        int i = this.e - y48Var2.e;
        return i == 0 ? this.f - y48Var2.f : i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y48)) {
            return false;
        }
        y48 y48Var = (y48) obj;
        return this.e == y48Var.e && this.f == y48Var.f;
    }

    public int hashCode() {
        return this.e ^ (this.f << 27);
    }

    @Override // defpackage.p68, defpackage.u68
    public int k(y68 y68Var) {
        return t(y68Var).a(D(y68Var), y68Var);
    }

    @Override // defpackage.v68
    public t68 l(t68 t68Var) {
        if (j58.y(t68Var).equals(o58.g)) {
            return t68Var.i(q68.G, (this.e * 12) + (this.f - 1));
        }
        throw new l48("Adjustment only supported on ISO date-time");
    }

    @Override // defpackage.p68, defpackage.u68
    public d78 t(y68 y68Var) {
        if (y68Var == q68.H) {
            return d78.d(1L, this.e <= 0 ? 1000000000L : 999999999L);
        }
        return super.t(y68Var);
    }

    public String toString() {
        int iAbs = Math.abs(this.e);
        StringBuilder sb = new StringBuilder(9);
        if (iAbs < 1000) {
            int i = this.e;
            if (i < 0) {
                sb.append(i - 10000);
                sb.deleteCharAt(1);
            } else {
                sb.append(i + 10000);
                sb.deleteCharAt(0);
            }
        } else {
            sb.append(this.e);
        }
        sb.append(this.f < 10 ? "-0" : "-");
        sb.append(this.f);
        return sb.toString();
    }

    @Override // defpackage.p68, defpackage.u68
    public <R> R w(a78<R> a78Var) {
        if (a78Var == z68.b) {
            return (R) o58.g;
        }
        if (a78Var == z68.c) {
            return (R) r68.MONTHS;
        }
        if (a78Var == z68.f || a78Var == z68.g || a78Var == z68.d || a78Var == z68.a || a78Var == z68.e) {
            return null;
        }
        return (R) super.w(a78Var);
    }

    @Override // defpackage.t68
    public t68 x(v68 v68Var) {
        return (y48) v68Var.l(this);
    }

    @Override // defpackage.u68
    public boolean y(y68 y68Var) {
        return y68Var instanceof q68 ? y68Var == q68.I || y68Var == q68.F || y68Var == q68.G || y68Var == q68.H || y68Var == q68.J : y68Var != null && y68Var.k(this);
    }
}
