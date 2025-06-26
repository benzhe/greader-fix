package defpackage;

import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.math.BigInteger;
import java.util.regex.Pattern;
import okhttp3.internal.http2.Http2Connection;
import org.apache.commons.io.FilenameUtils;

/* JADX WARN: Unexpected interfaces in signature: [java.io.Serializable] */
/* loaded from: classes2.dex */
public final class n48 implements Object, Comparable<n48> {
    public static final n48 g = new n48(0, 0);
    public final long e;
    public final int f;

    static {
        BigInteger.valueOf(1000000000L);
        Pattern.compile("([-+]?)P(?:([-+]?[0-9]+)D)?(T(?:([-+]?[0-9]+)H)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)(?:[.,]([0-9]{0,9}))?S)?)?", 2);
    }

    public n48(long j, int i) {
        this.e = j;
        this.f = i;
    }

    public static n48 i(long j, int i) {
        return (((long) i) | j) == 0 ? g : new n48(j, i);
    }

    public static n48 k(long j) {
        long j2 = j / 1000000000;
        int i = (int) (j % 1000000000);
        if (i < 0) {
            i += Http2Connection.DEGRADED_PONG_TIMEOUT_NS;
            j2--;
        }
        return i(j2, i);
    }

    public static n48 l(long j) {
        return i(j, 0);
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public static n48 t(long j, long j2) {
        return i(kt7.q(j, kt7.f(j2, 1000000000L)), kt7.h(j2, Http2Connection.DEGRADED_PONG_TIMEOUT_NS));
    }

    private Object writeReplace() {
        return new w48((byte) 1, this);
    }

    @Override // java.lang.Comparable
    public int compareTo(n48 n48Var) {
        n48 n48Var2 = n48Var;
        int iD = kt7.d(this.e, n48Var2.e);
        return iD != 0 ? iD : this.f - n48Var2.f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n48)) {
            return false;
        }
        n48 n48Var = (n48) obj;
        return this.e == n48Var.e && this.f == n48Var.f;
    }

    public int hashCode() {
        long j = this.e;
        return (this.f * 51) + ((int) (j ^ (j >>> 32)));
    }

    public String toString() {
        if (this == g) {
            return "PT0S";
        }
        long j = this.e;
        long j2 = j / 3600;
        int i = (int) ((j % 3600) / 60);
        int i2 = (int) (j % 60);
        StringBuilder sbW = jo.w(24, "PT");
        if (j2 != 0) {
            sbW.append(j2);
            sbW.append('H');
        }
        if (i != 0) {
            sbW.append(i);
            sbW.append('M');
        }
        if (i2 == 0 && this.f == 0 && sbW.length() > 2) {
            return sbW.toString();
        }
        if (i2 >= 0 || this.f <= 0) {
            sbW.append(i2);
        } else if (i2 == -1) {
            sbW.append("-0");
        } else {
            sbW.append(i2 + 1);
        }
        if (this.f > 0) {
            int length = sbW.length();
            if (i2 < 0) {
                sbW.append(2000000000 - this.f);
            } else {
                sbW.append(this.f + Http2Connection.DEGRADED_PONG_TIMEOUT_NS);
            }
            while (sbW.charAt(sbW.length() - 1) == '0') {
                sbW.setLength(sbW.length() - 1);
            }
            sbW.setCharAt(length, FilenameUtils.EXTENSION_SEPARATOR);
        }
        sbW.append('S');
        return sbW.toString();
    }
}
