package defpackage;

import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import okhttp3.internal.http2.Http2Connection;

/* loaded from: classes2.dex */
public final class o48 extends p68 implements t68, v68, Comparable<o48>, Serializable {
    public static final o48 g = new o48(0, 0);
    public final long e;
    public final int f;

    static {
        O(-31557014167219200L, 0L);
        O(31556889864403199L, 999999999L);
    }

    public o48(long j, int i) {
        this.e = j;
        this.f = i;
    }

    public static o48 K(long j, int i) {
        if ((i | j) == 0) {
            return g;
        }
        if (j < -31557014167219200L || j > 31556889864403199L) {
            throw new l48("Instant exceeds minimum or maximum instant");
        }
        return new o48(j, i);
    }

    public static o48 L(u68 u68Var) {
        try {
            return O(u68Var.D(q68.K), u68Var.k(q68.i));
        } catch (l48 e) {
            throw new l48(jo.u(u68Var, jo.D("Unable to obtain Instant from TemporalAccessor: ", u68Var, ", type ")), e);
        }
    }

    public static o48 M(long j) {
        return K(kt7.f(j, 1000L), kt7.h(j, 1000) * 1000000);
    }

    public static o48 N(long j) {
        return K(j, 0);
    }

    public static o48 O(long j, long j2) {
        return K(kt7.q(j, kt7.f(j2, 1000000000L)), kt7.h(j2, Http2Connection.DEGRADED_PONG_TIMEOUT_NS));
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new w48((byte) 2, this);
    }

    @Override // defpackage.t68
    /* renamed from: C */
    public t68 N(long j, b78 b78Var) {
        return j == Long.MIN_VALUE ? I(Long.MAX_VALUE, b78Var).I(1L, b78Var) : I(-j, b78Var);
    }

    @Override // defpackage.u68
    public long D(y68 y68Var) {
        int i;
        if (!(y68Var instanceof q68)) {
            return y68Var.x(this);
        }
        int iOrdinal = ((q68) y68Var).ordinal();
        if (iOrdinal == 0) {
            i = this.f;
        } else if (iOrdinal == 2) {
            i = this.f / 1000;
        } else {
            if (iOrdinal != 4) {
                if (iOrdinal == 28) {
                    return this.e;
                }
                throw new c78(jo.p("Unsupported field: ", y68Var));
            }
            i = this.f / 1000000;
        }
        return i;
    }

    public final o48 P(long j, long j2) {
        if ((j | j2) == 0) {
            return this;
        }
        return O(kt7.q(kt7.q(this.e, j), j2 / 1000000000), this.f + (j2 % 1000000000));
    }

    @Override // defpackage.t68
    /* renamed from: Q, reason: merged with bridge method [inline-methods] */
    public o48 I(long j, b78 b78Var) {
        if (!(b78Var instanceof r68)) {
            return (o48) b78Var.k(this, j);
        }
        switch ((r68) b78Var) {
            case NANOS:
                return P(0L, j);
            case MICROS:
                return P(j / 1000000, (j % 1000000) * 1000);
            case MILLIS:
                return P(j / 1000, (j % 1000) * 1000000);
            case SECONDS:
                return P(j, 0L);
            case MINUTES:
                return R(kt7.r(j, 60));
            case HOURS:
                return R(kt7.r(j, 3600));
            case HALF_DAYS:
                return R(kt7.r(j, 43200));
            case DAYS:
                return R(kt7.r(j, 86400));
            default:
                throw new c78("Unsupported unit: " + b78Var);
        }
    }

    public o48 R(long j) {
        return P(j, 0L);
    }

    @Override // java.lang.Comparable
    public int compareTo(o48 o48Var) {
        o48 o48Var2 = o48Var;
        int iD = kt7.d(this.e, o48Var2.e);
        return iD != 0 ? iD : this.f - o48Var2.f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o48)) {
            return false;
        }
        o48 o48Var = (o48) obj;
        return this.e == o48Var.e && this.f == o48Var.f;
    }

    public int hashCode() {
        long j = this.e;
        return (this.f * 51) + ((int) (j ^ (j >>> 32)));
    }

    @Override // defpackage.t68
    public t68 i(y68 y68Var, long j) {
        if (!(y68Var instanceof q68)) {
            return (o48) y68Var.l(this, j);
        }
        q68 q68Var = (q68) y68Var;
        q68Var.h.b(j, q68Var);
        int iOrdinal = q68Var.ordinal();
        if (iOrdinal != 0) {
            if (iOrdinal == 2) {
                int i = ((int) j) * 1000;
                if (i != this.f) {
                    return K(this.e, i);
                }
            } else if (iOrdinal == 4) {
                int i2 = ((int) j) * 1000000;
                if (i2 != this.f) {
                    return K(this.e, i2);
                }
            } else {
                if (iOrdinal != 28) {
                    throw new c78(jo.p("Unsupported field: ", y68Var));
                }
                if (j != this.e) {
                    return K(j, this.f);
                }
            }
        } else if (j != this.f) {
            return K(this.e, (int) j);
        }
        return this;
    }

    @Override // defpackage.p68, defpackage.u68
    public int k(y68 y68Var) {
        if (!(y68Var instanceof q68)) {
            return t(y68Var).a(y68Var.x(this), y68Var);
        }
        int iOrdinal = ((q68) y68Var).ordinal();
        if (iOrdinal == 0) {
            return this.f;
        }
        if (iOrdinal == 2) {
            return this.f / 1000;
        }
        if (iOrdinal == 4) {
            return this.f / 1000000;
        }
        throw new c78(jo.p("Unsupported field: ", y68Var));
    }

    @Override // defpackage.v68
    public t68 l(t68 t68Var) {
        return t68Var.i(q68.K, this.e).i(q68.i, this.f);
    }

    @Override // defpackage.p68, defpackage.u68
    public d78 t(y68 y68Var) {
        return super.t(y68Var);
    }

    public String toString() {
        return b68.l.a(this);
    }

    @Override // defpackage.p68, defpackage.u68
    public <R> R w(a78<R> a78Var) {
        if (a78Var == z68.c) {
            return (R) r68.NANOS;
        }
        if (a78Var == z68.f || a78Var == z68.g || a78Var == z68.b || a78Var == z68.a || a78Var == z68.d || a78Var == z68.e) {
            return null;
        }
        return a78Var.a(this);
    }

    @Override // defpackage.t68
    public t68 x(v68 v68Var) {
        return (o48) v68Var.l(this);
    }

    @Override // defpackage.u68
    public boolean y(y68 y68Var) {
        return y68Var instanceof q68 ? y68Var == q68.K || y68Var == q68.i || y68Var == q68.k || y68Var == q68.m : y68Var != null && y68Var.k(this);
    }
}
