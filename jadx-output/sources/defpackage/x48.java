package defpackage;

import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class x48 extends p68 implements t68, v68, Comparable<x48>, Serializable {
    public static final /* synthetic */ int f = 0;
    public final int e;

    static {
        new c68().l(q68.I, 4, 10, j68.EXCEEDS_PAD).o();
    }

    public x48(int i) {
        this.e = i;
    }

    public static boolean K(long j) {
        return (3 & j) == 0 && (j % 100 != 0 || j % 400 == 0);
    }

    public static x48 L(int i) {
        q68 q68Var = q68.I;
        q68Var.h.b(i, q68Var);
        return new x48(i);
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new w48((byte) 67, this);
    }

    @Override // defpackage.t68
    /* renamed from: C */
    public t68 N(long j, b78 b78Var) {
        return j == Long.MIN_VALUE ? O(Long.MAX_VALUE, b78Var).O(1L, b78Var) : O(-j, b78Var);
    }

    @Override // defpackage.u68
    public long D(y68 y68Var) {
        if (!(y68Var instanceof q68)) {
            return y68Var.x(this);
        }
        switch (((q68) y68Var).ordinal()) {
            case 25:
                int i = this.e;
                if (i < 1) {
                    i = 1 - i;
                }
                return i;
            case 26:
                return this.e;
            case 27:
                return this.e < 1 ? 0 : 1;
            default:
                throw new c78(jo.p("Unsupported field: ", y68Var));
        }
    }

    @Override // defpackage.t68
    /* renamed from: M, reason: merged with bridge method [inline-methods] */
    public x48 O(long j, b78 b78Var) {
        if (!(b78Var instanceof r68)) {
            return (x48) b78Var.k(this, j);
        }
        switch (((r68) b78Var).ordinal()) {
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

    public x48 N(long j) {
        return j == 0 ? this : L(q68.I.C(this.e + j));
    }

    @Override // defpackage.t68
    /* renamed from: O, reason: merged with bridge method [inline-methods] */
    public x48 i(y68 y68Var, long j) {
        if (!(y68Var instanceof q68)) {
            return (x48) y68Var.l(this, j);
        }
        q68 q68Var = (q68) y68Var;
        q68Var.h.b(j, q68Var);
        switch (q68Var.ordinal()) {
            case 25:
                if (this.e < 1) {
                    j = 1 - j;
                }
                return L((int) j);
            case 26:
                return L((int) j);
            case 27:
                return D(q68.J) == j ? this : L(1 - this.e);
            default:
                throw new c78(jo.p("Unsupported field: ", y68Var));
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(x48 x48Var) {
        return this.e - x48Var.e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof x48) && this.e == ((x48) obj).e;
    }

    public int hashCode() {
        return this.e;
    }

    @Override // defpackage.p68, defpackage.u68
    public int k(y68 y68Var) {
        return t(y68Var).a(D(y68Var), y68Var);
    }

    @Override // defpackage.v68
    public t68 l(t68 t68Var) {
        if (j58.y(t68Var).equals(o58.g)) {
            return t68Var.i(q68.I, this.e);
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
        return Integer.toString(this.e);
    }

    @Override // defpackage.p68, defpackage.u68
    public <R> R w(a78<R> a78Var) {
        if (a78Var == z68.b) {
            return (R) o58.g;
        }
        if (a78Var == z68.c) {
            return (R) r68.YEARS;
        }
        if (a78Var == z68.f || a78Var == z68.g || a78Var == z68.d || a78Var == z68.a || a78Var == z68.e) {
            return null;
        }
        return (R) super.w(a78Var);
    }

    @Override // defpackage.t68
    public t68 x(v68 v68Var) {
        return (x48) v68Var.l(this);
    }

    @Override // defpackage.u68
    public boolean y(y68 y68Var) {
        return y68Var instanceof q68 ? y68Var == q68.I || y68Var == q68.H || y68Var == q68.J : y68Var != null && y68Var.k(this);
    }
}
