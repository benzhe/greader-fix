package defpackage;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.Serializable;
import java.util.Objects;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.text.lookup.AbstractStringLookup;

/* loaded from: classes2.dex */
public final class j78 implements Serializable {
    public final s48 e;
    public final byte f;
    public final m48 g;
    public final r48 h;
    public final int i;
    public final a j;
    public final a58 k;
    public final a58 l;
    public final a58 m;

    public enum a {
        UTC,
        WALL,
        STANDARD
    }

    public j78(s48 s48Var, int i, m48 m48Var, r48 r48Var, int i2, a aVar, a58 a58Var, a58 a58Var2, a58 a58Var3) {
        this.e = s48Var;
        this.f = (byte) i;
        this.g = m48Var;
        this.h = r48Var;
        this.i = i2;
        this.j = aVar;
        this.k = a58Var;
        this.l = a58Var2;
        this.m = a58Var3;
    }

    public static j78 a(DataInput dataInput) throws IOException {
        int i = dataInput.readInt();
        s48 s48VarO = s48.O(i >>> 28);
        int i2 = ((264241152 & i) >>> 22) - 32;
        int i3 = (3670016 & i) >>> 19;
        m48 m48VarL = i3 == 0 ? null : m48.L(i3);
        int i4 = (507904 & i) >>> 14;
        a aVar = a.values()[(i & 12288) >>> 12];
        int i5 = (i & 4080) >>> 4;
        int i6 = (i & 12) >>> 2;
        int i7 = i & 3;
        int i8 = i4 == 31 ? dataInput.readInt() : i4 * 3600;
        a58 a58VarQ = a58.Q(i5 == 255 ? dataInput.readInt() : (i5 + Base64.SIGN) * 900);
        a58 a58VarQ2 = i6 == 3 ? a58.Q(dataInput.readInt()) : a58.Q((i6 * 1800) + a58VarQ.f);
        a58 a58VarQ3 = i7 == 3 ? a58.Q(dataInput.readInt()) : a58.Q((i7 * 1800) + a58VarQ.f);
        if (i2 < -28 || i2 > 31 || i2 == 0) {
            throw new IllegalArgumentException("Day of month indicator must be between -28 and 31 inclusive excluding zero");
        }
        long jG = kt7.g(i8, 86400);
        r48 r48Var = r48.i;
        q68 q68Var = q68.p;
        q68Var.h.b(jG, q68Var);
        int i9 = (int) (jG / 3600);
        long j = jG - (i9 * 3600);
        return new j78(s48VarO, i2, m48VarL, r48.L(i9, (int) (j / 60), (int) (j - (r9 * 60)), 0), i8 >= 0 ? i8 / 86400 : ((i8 + 1) / 86400) - 1, aVar, a58VarQ, a58VarQ2, a58VarQ3);
    }

    private Object writeReplace() {
        return new f78((byte) 3, this);
    }

    public void b(DataOutput dataOutput) throws IOException {
        int iW = (this.i * 86400) + this.h.W();
        int i = this.k.f;
        int i2 = this.l.f - i;
        int i3 = this.m.f - i;
        byte b = (iW % 3600 != 0 || iW > 86400) ? (byte) 31 : iW == 86400 ? (byte) 24 : this.h.e;
        int i4 = i % 900 == 0 ? (i / 900) + 128 : Base64.BASELENGTH;
        int i5 = (i2 == 0 || i2 == 1800 || i2 == 3600) ? i2 / 1800 : 3;
        int i6 = (i3 == 0 || i3 == 1800 || i3 == 3600) ? i3 / 1800 : 3;
        m48 m48Var = this.g;
        dataOutput.writeInt((this.e.L() << 28) + ((this.f + 32) << 22) + ((m48Var == null ? 0 : m48Var.K()) << 19) + (b << 14) + (this.j.ordinal() << 12) + (i4 << 4) + (i5 << 2) + i6);
        if (b == 31) {
            dataOutput.writeInt(iW);
        }
        if (i4 == 255) {
            dataOutput.writeInt(i);
        }
        if (i5 == 3) {
            dataOutput.writeInt(this.l.f);
        }
        if (i6 == 3) {
            dataOutput.writeInt(this.m.f);
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof j78)) {
            return false;
        }
        j78 j78Var = (j78) obj;
        return this.e == j78Var.e && this.f == j78Var.f && this.g == j78Var.g && this.j == j78Var.j && this.i == j78Var.i && this.h.equals(j78Var.h) && this.k.equals(j78Var.k) && this.l.equals(j78Var.l) && this.m.equals(j78Var.m);
    }

    public int hashCode() {
        int iW = ((this.h.W() + this.i) << 15) + (this.e.ordinal() << 11) + ((this.f + 32) << 5);
        m48 m48Var = this.g;
        return ((this.k.f ^ (this.j.ordinal() + (iW + ((m48Var == null ? 7 : m48Var.ordinal()) << 2)))) ^ this.l.f) ^ this.m.f;
    }

    public String toString() {
        StringBuilder sbZ = jo.z("TransitionRule[");
        a58 a58Var = this.l;
        a58 a58Var2 = this.m;
        Objects.requireNonNull(a58Var);
        sbZ.append(a58Var2.f - a58Var.f > 0 ? "Gap " : "Overlap ");
        sbZ.append(this.l);
        sbZ.append(" to ");
        sbZ.append(this.m);
        sbZ.append(", ");
        m48 m48Var = this.g;
        if (m48Var != null) {
            byte b = this.f;
            if (b == -1) {
                sbZ.append(m48Var.name());
                sbZ.append(" on or before last day of ");
                sbZ.append(this.e.name());
            } else if (b < 0) {
                sbZ.append(m48Var.name());
                sbZ.append(" on or before last day minus ");
                sbZ.append((-this.f) - 1);
                sbZ.append(" of ");
                sbZ.append(this.e.name());
            } else {
                sbZ.append(m48Var.name());
                sbZ.append(" on or after ");
                sbZ.append(this.e.name());
                sbZ.append(' ');
                sbZ.append((int) this.f);
            }
        } else {
            sbZ.append(this.e.name());
            sbZ.append(' ');
            sbZ.append((int) this.f);
        }
        sbZ.append(" at ");
        if (this.i == 0) {
            sbZ.append(this.h);
        } else {
            long jW = (this.i * 24 * 60) + (this.h.W() / 60);
            long jF = kt7.f(jW, 60L);
            if (jF < 10) {
                sbZ.append(0);
            }
            sbZ.append(jF);
            sbZ.append(AbstractStringLookup.SPLIT_CH);
            long jH = kt7.h(jW, 60);
            if (jH < 10) {
                sbZ.append(0);
            }
            sbZ.append(jH);
        }
        sbZ.append(StringUtils.SPACE);
        sbZ.append(this.j);
        sbZ.append(", standard offset ");
        sbZ.append(this.k);
        sbZ.append(']');
        return sbZ.toString();
    }
}
