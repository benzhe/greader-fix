package defpackage;

import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class t48 extends p68 implements u68, v68, Comparable<t48>, Serializable {
    public static final /* synthetic */ int g = 0;
    public final int e;
    public final int f;

    static {
        c68 c68Var = new c68();
        c68Var.d("--");
        c68Var.k(q68.F, 2);
        c68Var.c('-');
        c68Var.k(q68.A, 2);
        c68Var.o();
    }

    public t48(int i, int i2) {
        this.e = i;
        this.f = i2;
    }

    public static t48 K(int i, int i2) {
        s48 s48VarO = s48.O(i);
        kt7.o(s48VarO, "month");
        q68 q68Var = q68.A;
        q68Var.h.b(i2, q68Var);
        if (i2 <= s48VarO.N()) {
            return new t48(s48VarO.L(), i2);
        }
        StringBuilder sbA = jo.A("Illegal value for DayOfMonth field, value ", i2, " is not valid for month ");
        sbA.append(s48VarO.name());
        throw new l48(sbA.toString());
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new w48((byte) 64, this);
    }

    @Override // defpackage.u68
    public long D(y68 y68Var) {
        int i;
        if (!(y68Var instanceof q68)) {
            return y68Var.x(this);
        }
        int iOrdinal = ((q68) y68Var).ordinal();
        if (iOrdinal == 18) {
            i = this.f;
        } else {
            if (iOrdinal != 23) {
                throw new c78(jo.p("Unsupported field: ", y68Var));
            }
            i = this.e;
        }
        return i;
    }

    @Override // java.lang.Comparable
    public int compareTo(t48 t48Var) {
        t48 t48Var2 = t48Var;
        int i = this.e - t48Var2.e;
        return i == 0 ? this.f - t48Var2.f : i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t48)) {
            return false;
        }
        t48 t48Var = (t48) obj;
        return this.e == t48Var.e && this.f == t48Var.f;
    }

    public int hashCode() {
        return (this.e << 6) + this.f;
    }

    @Override // defpackage.p68, defpackage.u68
    public int k(y68 y68Var) {
        return t(y68Var).a(D(y68Var), y68Var);
    }

    @Override // defpackage.v68
    public t68 l(t68 t68Var) {
        if (!j58.y(t68Var).equals(o58.g)) {
            throw new l48("Adjustment only supported on ISO date-time");
        }
        t68 t68VarI = t68Var.i(q68.F, this.e);
        q68 q68Var = q68.A;
        return t68VarI.i(q68Var, Math.min(t68VarI.t(q68Var).h, this.f));
    }

    @Override // defpackage.p68, defpackage.u68
    public d78 t(y68 y68Var) {
        if (y68Var == q68.F) {
            return y68Var.w();
        }
        if (y68Var != q68.A) {
            return super.t(y68Var);
        }
        int iOrdinal = s48.O(this.e).ordinal();
        return d78.e(1L, iOrdinal != 1 ? (iOrdinal == 3 || iOrdinal == 5 || iOrdinal == 8 || iOrdinal == 10) ? 30 : 31 : 28, s48.O(this.e).N());
    }

    public String toString() {
        StringBuilder sbW = jo.w(10, "--");
        sbW.append(this.e < 10 ? "0" : "");
        sbW.append(this.e);
        sbW.append(this.f < 10 ? "-0" : "-");
        sbW.append(this.f);
        return sbW.toString();
    }

    @Override // defpackage.p68, defpackage.u68
    public <R> R w(a78<R> a78Var) {
        return a78Var == z68.b ? (R) o58.g : (R) super.w(a78Var);
    }

    @Override // defpackage.u68
    public boolean y(y68 y68Var) {
        return y68Var instanceof q68 ? y68Var == q68.F || y68Var == q68.A : y68Var != null && y68Var.k(this);
    }
}
