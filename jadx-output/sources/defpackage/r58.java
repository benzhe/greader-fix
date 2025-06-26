package defpackage;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Calendar;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class r58 extends d58<r58> implements Serializable {
    public static final p48 h = p48.c0(1873, 1, 1);
    public final p48 e;
    public transient s58 f;
    public transient int g;

    public r58(p48 p48Var) {
        if (p48Var.Z(h)) {
            throw new l48("Minimum supported date is January 1st Meiji 6");
        }
        this.f = s58.L(p48Var);
        this.g = p48Var.e - (r0.f.e - 1);
        this.e = p48Var;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.f = s58.L(this.e);
        this.g = this.e.e - (r2.f.e - 1);
    }

    private Object writeReplace() {
        return new w58((byte) 1, this);
    }

    @Override // defpackage.e58, defpackage.o68, defpackage.t68
    /* renamed from: C */
    public t68 N(long j, b78 b78Var) {
        return (r58) super.N(j, b78Var);
    }

    @Override // defpackage.u68
    public long D(y68 y68Var) {
        if (!(y68Var instanceof q68)) {
            return y68Var.x(this);
        }
        int iOrdinal = ((q68) y68Var).ordinal();
        if (iOrdinal != 16 && iOrdinal != 17) {
            if (iOrdinal == 19) {
                return Y();
            }
            if (iOrdinal == 25) {
                return this.g;
            }
            if (iOrdinal == 27) {
                return this.f.e;
            }
            if (iOrdinal != 21 && iOrdinal != 22) {
                return this.e.D(y68Var);
            }
        }
        throw new c78(jo.p("Unsupported field: ", y68Var));
    }

    @Override // defpackage.d58, defpackage.e58, defpackage.t68
    /* renamed from: I */
    public t68 O(long j, b78 b78Var) {
        return (r58) super.I(j, b78Var);
    }

    @Override // defpackage.d58, defpackage.e58
    public final f58<r58> K(r48 r48Var) {
        return new g58(this, r48Var);
    }

    @Override // defpackage.e58
    public j58 M() {
        return q58.h;
    }

    @Override // defpackage.e58
    public k58 N() {
        return this.f;
    }

    @Override // defpackage.e58
    /* renamed from: O */
    public e58 N(long j, b78 b78Var) {
        return (r58) super.N(j, b78Var);
    }

    @Override // defpackage.d58, defpackage.e58
    /* renamed from: P */
    public e58 O(long j, b78 b78Var) {
        return (r58) super.I(j, b78Var);
    }

    @Override // defpackage.e58
    public long Q() {
        return this.e.Q();
    }

    @Override // defpackage.e58
    /* renamed from: R */
    public e58 x(v68 v68Var) {
        return (r58) q58.h.l(v68Var.l(this));
    }

    @Override // defpackage.d58
    /* renamed from: T */
    public d58 I(long j, b78 b78Var) {
        return (r58) super.I(j, b78Var);
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

    public final d78 X(int i) {
        Calendar calendar = Calendar.getInstance(q58.g);
        calendar.set(0, this.f.e + 2);
        calendar.set(this.g, r2.f - 1, this.e.g);
        return d78.d(calendar.getActualMinimum(i), calendar.getActualMaximum(i));
    }

    public final long Y() {
        return this.g == 1 ? (this.e.Y() - this.f.f.Y()) + 1 : this.e.Y();
    }

    public final r58 Z(p48 p48Var) {
        return p48Var.equals(this.e) ? this : new r58(p48Var);
    }

    @Override // defpackage.e58, defpackage.t68
    /* renamed from: a0, reason: merged with bridge method [inline-methods] */
    public r58 i(y68 y68Var, long j) {
        if (!(y68Var instanceof q68)) {
            return (r58) y68Var.l(this, j);
        }
        q68 q68Var = (q68) y68Var;
        if (D(q68Var) == j) {
            return this;
        }
        int iOrdinal = q68Var.ordinal();
        if (iOrdinal == 19 || iOrdinal == 25 || iOrdinal == 27) {
            int iA = q58.h.M(q68Var).a(j, q68Var);
            int iOrdinal2 = q68Var.ordinal();
            if (iOrdinal2 == 19) {
                return Z(this.e.g0(iA - Y()));
            }
            if (iOrdinal2 == 25) {
                return b0(this.f, iA);
            }
            if (iOrdinal2 == 27) {
                return b0(s58.M(iA), this.g);
            }
        }
        return Z(this.e.S(y68Var, j));
    }

    public final r58 b0(s58 s58Var, int i) {
        Objects.requireNonNull(q58.h);
        if (!(s58Var instanceof s58)) {
            throw new ClassCastException("Era must be JapaneseEra");
        }
        int i2 = (s58Var.f.e + i) - 1;
        d78.d(1L, (s58Var.K().e - s58Var.f.e) + 1).b(i, q68.H);
        return Z(this.e.o0(i2));
    }

    @Override // defpackage.e58
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof r58) {
            return this.e.equals(((r58) obj).e);
        }
        return false;
    }

    @Override // defpackage.e58
    public int hashCode() {
        Objects.requireNonNull(q58.h);
        return (-688086063) ^ this.e.hashCode();
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
        return iOrdinal != 19 ? iOrdinal != 25 ? q58.h.M(q68Var) : X(1) : X(6);
    }

    @Override // defpackage.e58, defpackage.t68
    public t68 x(v68 v68Var) {
        return (r58) q58.h.l(v68Var.l(this));
    }

    @Override // defpackage.e58, defpackage.u68
    public boolean y(y68 y68Var) {
        if (y68Var == q68.y || y68Var == q68.z || y68Var == q68.D || y68Var == q68.E) {
            return false;
        }
        return super.y(y68Var);
    }
}
