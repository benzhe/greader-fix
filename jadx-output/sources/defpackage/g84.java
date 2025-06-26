package defpackage;

import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: classes.dex */
public abstract class g84 implements Iterable<Byte>, Serializable {
    public static final g84 f = new e84(j94.b);
    public static final d84 g;
    public int e = 0;

    static {
        g = v74.a() ? new f84() : new b84();
    }

    public static g84 s(byte[] bArr, int i, int i2) {
        u(i, i + i2, bArr.length);
        return new e84(g.a(bArr, i, i2));
    }

    public static int u(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) >= 0) {
            return i4;
        }
        if (i >= 0) {
            if (i2 < i) {
                throw new IndexOutOfBoundsException(jo.N(66, "Beginning index larger than ending index: ", i, ", ", i2));
            }
            throw new IndexOutOfBoundsException(jo.N(37, "End index: ", i2, " >= ", i3));
        }
        StringBuilder sb = new StringBuilder(32);
        sb.append("Beginning index: ");
        sb.append(i);
        sb.append(" < 0");
        throw new IndexOutOfBoundsException(sb.toString());
    }

    public abstract byte d(int i);

    public abstract boolean equals(Object obj);

    public abstract byte h(int i);

    public final int hashCode() {
        int iR = this.e;
        if (iR == 0) {
            int iJ = j();
            iR = r(iJ, 0, iJ);
            if (iR == 0) {
                iR = 1;
            }
            this.e = iR;
        }
        return iR;
    }

    @Override // java.lang.Iterable
    public final /* bridge */ /* synthetic */ Iterator<Byte> iterator() {
        return new z74(this);
    }

    public abstract int j();

    public abstract g84 l(int i, int i2);

    public abstract void n(y74 y74Var) throws IOException;

    public abstract String o(Charset charset);

    public abstract boolean p();

    public abstract int r(int i, int i2, int i3);

    public final String toString() {
        Locale locale = Locale.ROOT;
        Object[] objArr = new Object[3];
        objArr[0] = Integer.toHexString(System.identityHashCode(this));
        objArr[1] = Integer.valueOf(j());
        objArr[2] = j() <= 50 ? c50.K1(this) : String.valueOf(c50.K1(l(0, 47))).concat("...");
        return String.format(locale, "<ByteString@%s size=%d contents=\"%s\">", objArr);
    }
}
