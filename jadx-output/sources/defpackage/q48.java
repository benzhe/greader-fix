package defpackage;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import org.apache.commons.lang3.time.DateUtils;
import org.apache.commons.text.lookup.StringLookupFactory;

/* loaded from: classes2.dex */
public final class q48 extends f58<p48> implements t68, v68, Serializable {
    public static final q48 g = Y(p48.h, r48.i);
    public static final q48 h = Y(p48.i, r48.j);
    public final p48 e;
    public final r48 f;

    public q48(p48 p48Var, r48 r48Var) {
        this.e = p48Var;
        this.f = r48Var;
    }

    public static q48 V(u68 u68Var) {
        if (u68Var instanceof q48) {
            return (q48) u68Var;
        }
        if (u68Var instanceof c58) {
            return ((c58) u68Var).e;
        }
        try {
            return new q48(p48.V(u68Var), r48.M(u68Var));
        } catch (l48 unused) {
            throw new l48(jo.u(u68Var, jo.D("Unable to obtain LocalDateTime from TemporalAccessor: ", u68Var, ", type ")));
        }
    }

    public static q48 Y(p48 p48Var, r48 r48Var) {
        kt7.o(p48Var, StringLookupFactory.KEY_DATE);
        kt7.o(r48Var, "time");
        return new q48(p48Var, r48Var);
    }

    public static q48 Z(long j, int i, a58 a58Var) {
        kt7.o(a58Var, "offset");
        long j2 = j + a58Var.f;
        long jF = kt7.f(j2, 86400L);
        int iH = kt7.h(j2, 86400);
        p48 p48VarE0 = p48.e0(jF);
        long j3 = iH;
        r48 r48Var = r48.i;
        q68 q68Var = q68.p;
        q68Var.h.b(j3, q68Var);
        q68 q68Var2 = q68.i;
        q68Var2.h.b(i, q68Var2);
        int i2 = (int) (j3 / 3600);
        long j4 = j3 - (i2 * 3600);
        return new q48(p48VarE0, r48.L(i2, (int) (j4 / 60), (int) (j4 - (r7 * 60)), i));
    }

    public static q48 f0(DataInput dataInput) throws IOException {
        p48 p48Var = p48.h;
        return Y(p48.c0(dataInput.readInt(), dataInput.readByte(), dataInput.readByte()), r48.U(dataInput));
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new w48((byte) 4, this);
    }

    @Override // defpackage.u68
    public long D(y68 y68Var) {
        return y68Var instanceof q68 ? y68Var.y() ? this.f.D(y68Var) : this.e.D(y68Var) : y68Var.x(this);
    }

    @Override // defpackage.f58
    public h58 K(z48 z48Var) {
        return c58.Y(this, z48Var, null);
    }

    @Override // defpackage.f58, java.lang.Comparable
    /* renamed from: L */
    public int compareTo(f58<?> f58Var) {
        return f58Var instanceof q48 ? U((q48) f58Var) : super.compareTo(f58Var);
    }

    @Override // defpackage.f58
    public e58 Q() {
        return this.e;
    }

    @Override // defpackage.f58
    public r48 R() {
        return this.f;
    }

    public final int U(q48 q48Var) {
        int iT = this.e.T(q48Var.e);
        return iT == 0 ? this.f.compareTo(q48Var.f) : iT;
    }

    public boolean W(f58<?> f58Var) {
        if (f58Var instanceof q48) {
            return U((q48) f58Var) < 0;
        }
        long jQ = Q().Q();
        long jQ2 = f58Var.Q().Q();
        return jQ < jQ2 || (jQ == jQ2 && R().V() < f58Var.R().V());
    }

    @Override // defpackage.f58
    /* renamed from: X, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public q48 C(long j, b78 b78Var) {
        return j == Long.MIN_VALUE ? P(Long.MAX_VALUE, b78Var).P(1L, b78Var) : P(-j, b78Var);
    }

    @Override // defpackage.f58
    /* renamed from: a0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public q48 I(long j, b78 b78Var) {
        if (!(b78Var instanceof r68)) {
            return (q48) b78Var.k(this, j);
        }
        switch ((r68) b78Var) {
            case NANOS:
                return c0(j);
            case MICROS:
                return b0(j / 86400000000L).c0((j % 86400000000L) * 1000);
            case MILLIS:
                return b0(j / DateUtils.MILLIS_PER_DAY).c0((j % DateUtils.MILLIS_PER_DAY) * 1000000);
            case SECONDS:
                return d0(j);
            case MINUTES:
                return e0(this.e, 0L, j, 0L, 0L, 1);
            case HOURS:
                return e0(this.e, j, 0L, 0L, 0L, 1);
            case HALF_DAYS:
                q48 q48VarB0 = b0(j / 256);
                return q48VarB0.e0(q48VarB0.e, (j % 256) * 12, 0L, 0L, 0L, 1);
            default:
                return g0(this.e.I(j, b78Var), this.f);
        }
    }

    public q48 b0(long j) {
        return g0(this.e.g0(j), this.f);
    }

    public q48 c0(long j) {
        return e0(this.e, 0L, 0L, 0L, j, 1);
    }

    public q48 d0(long j) {
        return e0(this.e, 0L, 0L, j, 0L, 1);
    }

    public final q48 e0(p48 p48Var, long j, long j2, long j3, long j4, int i) {
        if ((j | j2 | j3 | j4) == 0) {
            return g0(p48Var, this.f);
        }
        long j5 = i;
        long jV = this.f.V();
        long j6 = ((((j % 24) * 3600000000000L) + ((j2 % 1440) * 60000000000L) + ((j3 % 86400) * 1000000000) + (j4 % 86400000000000L)) * j5) + jV;
        long jF = kt7.f(j6, 86400000000000L) + (((j / 24) + (j2 / 1440) + (j3 / 86400) + (j4 / 86400000000000L)) * j5);
        long jI = kt7.i(j6, 86400000000000L);
        return g0(p48Var.g0(jF), jI == jV ? this.f : r48.O(jI));
    }

    @Override // defpackage.f58
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q48)) {
            return false;
        }
        q48 q48Var = (q48) obj;
        return this.e.equals(q48Var.e) && this.f.equals(q48Var.f);
    }

    public final q48 g0(p48 p48Var, r48 r48Var) {
        return (this.e == p48Var && this.f == r48Var) ? this : new q48(p48Var, r48Var);
    }

    @Override // defpackage.f58, defpackage.t68
    /* renamed from: h0, reason: merged with bridge method [inline-methods] */
    public q48 x(v68 v68Var) {
        return v68Var instanceof p48 ? g0((p48) v68Var, this.f) : v68Var instanceof r48 ? g0(this.e, (r48) v68Var) : v68Var instanceof q48 ? (q48) v68Var : (q48) v68Var.l(this);
    }

    @Override // defpackage.f58
    public int hashCode() {
        return this.e.hashCode() ^ this.f.hashCode();
    }

    @Override // defpackage.f58, defpackage.t68
    /* renamed from: i0, reason: merged with bridge method [inline-methods] */
    public q48 i(y68 y68Var, long j) {
        return y68Var instanceof q68 ? y68Var.y() ? g0(this.e, this.f.i(y68Var, j)) : g0(this.e.S(y68Var, j), this.f) : (q48) y68Var.l(this, j);
    }

    public void j0(DataOutput dataOutput) throws IOException {
        p48 p48Var = this.e;
        dataOutput.writeInt(p48Var.e);
        dataOutput.writeByte(p48Var.f);
        dataOutput.writeByte(p48Var.g);
        this.f.a0(dataOutput);
    }

    @Override // defpackage.p68, defpackage.u68
    public int k(y68 y68Var) {
        return y68Var instanceof q68 ? y68Var.y() ? this.f.k(y68Var) : this.e.k(y68Var) : super.k(y68Var);
    }

    @Override // defpackage.f58, defpackage.v68
    public t68 l(t68 t68Var) {
        return super.l(t68Var);
    }

    @Override // defpackage.p68, defpackage.u68
    public d78 t(y68 y68Var) {
        return y68Var instanceof q68 ? y68Var.y() ? this.f.t(y68Var) : this.e.t(y68Var) : y68Var.t(this);
    }

    @Override // defpackage.f58
    public String toString() {
        return this.e.toString() + 'T' + this.f.toString();
    }

    @Override // defpackage.f58, defpackage.p68, defpackage.u68
    public <R> R w(a78<R> a78Var) {
        return a78Var == z68.f ? (R) this.e : (R) super.w(a78Var);
    }

    @Override // defpackage.u68
    public boolean y(y68 y68Var) {
        return y68Var instanceof q68 ? y68Var.i() || y68Var.y() : y68Var != null && y68Var.k(this);
    }
}
