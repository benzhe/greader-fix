package defpackage;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import okhttp3.internal.http2.Http2Connection;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.time.DateUtils;

/* loaded from: classes2.dex */
public final class r48 extends p68 implements t68, v68, Comparable<r48>, Serializable {
    public static final r48 i;
    public static final r48 j;
    public static final r48[] k = new r48[24];
    public final byte e;
    public final byte f;
    public final byte g;
    public final int h;

    static {
        int i2 = 0;
        while (true) {
            r48[] r48VarArr = k;
            if (i2 >= r48VarArr.length) {
                r48 r48Var = r48VarArr[0];
                r48 r48Var2 = r48VarArr[12];
                i = r48VarArr[0];
                j = new r48(23, 59, 59, 999999999);
                return;
            }
            r48VarArr[i2] = new r48(i2, 0, 0, 0);
            i2++;
        }
    }

    public r48(int i2, int i3, int i4, int i5) {
        this.e = (byte) i2;
        this.f = (byte) i3;
        this.g = (byte) i4;
        this.h = i5;
    }

    public static r48 L(int i2, int i3, int i4, int i5) {
        return ((i3 | i4) | i5) == 0 ? k[i2] : new r48(i2, i3, i4, i5);
    }

    public static r48 M(u68 u68Var) {
        r48 r48Var = (r48) u68Var.w(z68.g);
        if (r48Var != null) {
            return r48Var;
        }
        throw new l48(jo.u(u68Var, jo.D("Unable to obtain LocalTime from TemporalAccessor: ", u68Var, ", type ")));
    }

    public static r48 O(long j2) {
        q68 q68Var = q68.j;
        q68Var.h.b(j2, q68Var);
        int i2 = (int) (j2 / 3600000000000L);
        long j3 = j2 - (i2 * 3600000000000L);
        int i3 = (int) (j3 / 60000000000L);
        long j4 = j3 - (i3 * 60000000000L);
        int i4 = (int) (j4 / 1000000000);
        return L(i2, i3, i4, (int) (j4 - (i4 * 1000000000)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v3, types: [int] */
    public static r48 U(DataInput dataInput) throws IOException {
        int i2;
        int i3;
        int i4 = dataInput.readByte();
        byte b = 0;
        if (i4 >= 0) {
            byte b2 = dataInput.readByte();
            if (b2 < 0) {
                ?? r8 = ~b2;
                i3 = 0;
                b = r8;
                i2 = 0;
            } else {
                byte b3 = dataInput.readByte();
                if (b3 < 0) {
                    i2 = ~b3;
                    b = b2;
                } else {
                    int i5 = dataInput.readInt();
                    i2 = b3;
                    i3 = i5;
                    b = b2;
                }
            }
            q68 q68Var = q68.u;
            q68Var.h.b(i4, q68Var);
            q68 q68Var2 = q68.q;
            q68Var2.h.b(b, q68Var2);
            q68 q68Var3 = q68.o;
            q68Var3.h.b(i2, q68Var3);
            q68 q68Var4 = q68.i;
            q68Var4.h.b(i3, q68Var4);
            return L(i4, b, i2, i3);
        }
        i4 = ~i4;
        i2 = 0;
        i3 = 0;
        q68 q68Var5 = q68.u;
        q68Var5.h.b(i4, q68Var5);
        q68 q68Var22 = q68.q;
        q68Var22.h.b(b, q68Var22);
        q68 q68Var32 = q68.o;
        q68Var32.h.b(i2, q68Var32);
        q68 q68Var42 = q68.i;
        q68Var42.h.b(i3, q68Var42);
        return L(i4, b, i2, i3);
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new w48((byte) 5, this);
    }

    @Override // defpackage.t68
    /* renamed from: C */
    public t68 N(long j2, b78 b78Var) {
        return j2 == Long.MIN_VALUE ? I(Long.MAX_VALUE, b78Var).I(1L, b78Var) : I(-j2, b78Var);
    }

    @Override // defpackage.u68
    public long D(y68 y68Var) {
        return y68Var instanceof q68 ? y68Var == q68.j ? V() : y68Var == q68.l ? V() / 1000 : N(y68Var) : y68Var.x(this);
    }

    @Override // java.lang.Comparable
    /* renamed from: K, reason: merged with bridge method [inline-methods] */
    public int compareTo(r48 r48Var) {
        int iC = kt7.c(this.e, r48Var.e);
        if (iC != 0) {
            return iC;
        }
        int iC2 = kt7.c(this.f, r48Var.f);
        if (iC2 != 0) {
            return iC2;
        }
        int iC3 = kt7.c(this.g, r48Var.g);
        return iC3 == 0 ? kt7.c(this.h, r48Var.h) : iC3;
    }

    public final int N(y68 y68Var) {
        switch (((q68) y68Var).ordinal()) {
            case 0:
                return this.h;
            case 1:
                throw new l48(jo.p("Field too large for an int: ", y68Var));
            case 2:
                return this.h / 1000;
            case 3:
                throw new l48(jo.p("Field too large for an int: ", y68Var));
            case 4:
                return this.h / 1000000;
            case 5:
                return (int) (V() / 1000000);
            case 6:
                return this.g;
            case 7:
                return W();
            case 8:
                return this.f;
            case 9:
                return (this.e * 60) + this.f;
            case 10:
                return this.e % 12;
            case 11:
                int i2 = this.e % 12;
                if (i2 % 12 == 0) {
                    return 12;
                }
                return i2;
            case 12:
                return this.e;
            case 13:
                byte b = this.e;
                if (b == 0) {
                    return 24;
                }
                return b;
            case 14:
                return this.e / 12;
            default:
                throw new c78(jo.p("Unsupported field: ", y68Var));
        }
    }

    @Override // defpackage.t68
    /* renamed from: P, reason: merged with bridge method [inline-methods] */
    public r48 O(long j2, b78 b78Var) {
        if (!(b78Var instanceof r68)) {
            return (r48) b78Var.k(this, j2);
        }
        switch ((r68) b78Var) {
            case NANOS:
                return S(j2);
            case MICROS:
                return S((j2 % 86400000000L) * 1000);
            case MILLIS:
                return S((j2 % DateUtils.MILLIS_PER_DAY) * 1000000);
            case SECONDS:
                return T(j2);
            case MINUTES:
                return R(j2);
            case HOURS:
                return Q(j2);
            case HALF_DAYS:
                return Q((j2 % 2) * 12);
            default:
                throw new c78("Unsupported unit: " + b78Var);
        }
    }

    public r48 Q(long j2) {
        return j2 == 0 ? this : L(((((int) (j2 % 24)) + this.e) + 24) % 24, this.f, this.g, this.h);
    }

    public r48 R(long j2) {
        if (j2 == 0) {
            return this;
        }
        int i2 = (this.e * 60) + this.f;
        int i3 = ((((int) (j2 % 1440)) + i2) + 1440) % 1440;
        return i2 == i3 ? this : L(i3 / 60, i3 % 60, this.g, this.h);
    }

    public r48 S(long j2) {
        if (j2 == 0) {
            return this;
        }
        long jV = V();
        long j3 = (((j2 % 86400000000000L) + jV) + 86400000000000L) % 86400000000000L;
        return jV == j3 ? this : L((int) (j3 / 3600000000000L), (int) ((j3 / 60000000000L) % 60), (int) ((j3 / 1000000000) % 60), (int) (j3 % 1000000000));
    }

    public r48 T(long j2) {
        if (j2 == 0) {
            return this;
        }
        int i2 = (this.f * 60) + (this.e * 3600) + this.g;
        int i3 = ((((int) (j2 % 86400)) + i2) + 86400) % 86400;
        return i2 == i3 ? this : L(i3 / 3600, (i3 / 60) % 60, i3 % 60, this.h);
    }

    public long V() {
        return (this.g * 1000000000) + (this.f * 60000000000L) + (this.e * 3600000000000L) + this.h;
    }

    public int W() {
        return (this.f * 60) + (this.e * 3600) + this.g;
    }

    @Override // defpackage.t68
    /* renamed from: X, reason: merged with bridge method [inline-methods] */
    public r48 i(y68 y68Var, long j2) {
        if (!(y68Var instanceof q68)) {
            return (r48) y68Var.l(this, j2);
        }
        q68 q68Var = (q68) y68Var;
        q68Var.h.b(j2, q68Var);
        switch (q68Var.ordinal()) {
            case 0:
                return Z((int) j2);
            case 1:
                return O(j2);
            case 2:
                return Z(((int) j2) * 1000);
            case 3:
                return O(j2 * 1000);
            case 4:
                return Z(((int) j2) * 1000000);
            case 5:
                return O(j2 * 1000000);
            case 6:
                int i2 = (int) j2;
                if (this.g == i2) {
                    return this;
                }
                q68 q68Var2 = q68.o;
                q68Var2.h.b(i2, q68Var2);
                return L(this.e, this.f, i2, this.h);
            case 7:
                return T(j2 - W());
            case 8:
                int i3 = (int) j2;
                if (this.f == i3) {
                    return this;
                }
                q68 q68Var3 = q68.q;
                q68Var3.h.b(i3, q68Var3);
                return L(this.e, i3, this.g, this.h);
            case 9:
                return R(j2 - ((this.e * 60) + this.f));
            case 10:
                return Q(j2 - (this.e % 12));
            case 11:
                if (j2 == 12) {
                    j2 = 0;
                }
                return Q(j2 - (this.e % 12));
            case 12:
                return Y((int) j2);
            case 13:
                if (j2 == 24) {
                    j2 = 0;
                }
                return Y((int) j2);
            case 14:
                return Q((j2 - (this.e / 12)) * 12);
            default:
                throw new c78(jo.p("Unsupported field: ", y68Var));
        }
    }

    public r48 Y(int i2) {
        if (this.e == i2) {
            return this;
        }
        q68 q68Var = q68.u;
        q68Var.h.b(i2, q68Var);
        return L(i2, this.f, this.g, this.h);
    }

    public r48 Z(int i2) {
        if (this.h == i2) {
            return this;
        }
        q68 q68Var = q68.i;
        q68Var.h.b(i2, q68Var);
        return L(this.e, this.f, this.g, i2);
    }

    public void a0(DataOutput dataOutput) throws IOException {
        if (this.h != 0) {
            dataOutput.writeByte(this.e);
            dataOutput.writeByte(this.f);
            dataOutput.writeByte(this.g);
            dataOutput.writeInt(this.h);
            return;
        }
        if (this.g != 0) {
            dataOutput.writeByte(this.e);
            dataOutput.writeByte(this.f);
            dataOutput.writeByte(~this.g);
        } else if (this.f == 0) {
            dataOutput.writeByte(~this.e);
        } else {
            dataOutput.writeByte(this.e);
            dataOutput.writeByte(~this.f);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r48)) {
            return false;
        }
        r48 r48Var = (r48) obj;
        return this.e == r48Var.e && this.f == r48Var.f && this.g == r48Var.g && this.h == r48Var.h;
    }

    public int hashCode() {
        long jV = V();
        return (int) (jV ^ (jV >>> 32));
    }

    @Override // defpackage.p68, defpackage.u68
    public int k(y68 y68Var) {
        return y68Var instanceof q68 ? N(y68Var) : super.k(y68Var);
    }

    @Override // defpackage.v68
    public t68 l(t68 t68Var) {
        return t68Var.i(q68.j, V());
    }

    @Override // defpackage.p68, defpackage.u68
    public d78 t(y68 y68Var) {
        return super.t(y68Var);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(18);
        byte b = this.e;
        byte b2 = this.f;
        byte b3 = this.g;
        int i2 = this.h;
        sb.append(b < 10 ? "0" : "");
        sb.append((int) b);
        sb.append(b2 < 10 ? ":0" : ":");
        sb.append((int) b2);
        if (b3 > 0 || i2 > 0) {
            sb.append(b3 >= 10 ? ":" : ":0");
            sb.append((int) b3);
            if (i2 > 0) {
                sb.append(FilenameUtils.EXTENSION_SEPARATOR);
                if (i2 % 1000000 == 0) {
                    sb.append(Integer.toString((i2 / 1000000) + 1000).substring(1));
                } else if (i2 % 1000 == 0) {
                    sb.append(Integer.toString((i2 / 1000) + 1000000).substring(1));
                } else {
                    sb.append(Integer.toString(i2 + Http2Connection.DEGRADED_PONG_TIMEOUT_NS).substring(1));
                }
            }
        }
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.p68, defpackage.u68
    public <R> R w(a78<R> a78Var) {
        if (a78Var == z68.c) {
            return (R) r68.NANOS;
        }
        if (a78Var == z68.g) {
            return this;
        }
        if (a78Var == z68.b || a78Var == z68.a || a78Var == z68.d || a78Var == z68.e || a78Var == z68.f) {
            return null;
        }
        return a78Var.a(this);
    }

    @Override // defpackage.t68
    public t68 x(v68 v68Var) {
        return v68Var instanceof r48 ? (r48) v68Var : (r48) v68Var.l(this);
    }

    @Override // defpackage.u68
    public boolean y(y68 y68Var) {
        return y68Var instanceof q68 ? y68Var.y() : y68Var != null && y68Var.k(this);
    }
}
