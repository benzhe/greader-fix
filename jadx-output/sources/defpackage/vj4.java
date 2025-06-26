package defpackage;

import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: classes.dex */
public abstract class vj4 implements Serializable, Iterable<Byte> {
    public static final vj4 f = new ak4(rk4.b);
    public static final yj4 g;
    public int e = 0;

    /* JADX WARN: Multi-variable type inference failed */
    static {
        g = tj4.a() ? new zj4(null) : new xj4(null);
    }

    public static int r(int i, int i2, int i3) {
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

    public abstract int h();

    public final int hashCode() {
        int iJ = this.e;
        if (iJ == 0) {
            int iH = h();
            iJ = j(iH, 0, iH);
            if (iJ == 0) {
                iJ = 1;
            }
            this.e = iJ;
        }
        return iJ;
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Iterator<Byte> iterator() {
        return new uj4(this);
    }

    public abstract int j(int i, int i2, int i3);

    public abstract vj4 l(int i, int i2);

    public abstract String n(Charset charset);

    public abstract void o(sj4 sj4Var) throws IOException;

    public abstract byte p(int i);

    public abstract boolean s();

    public final String toString() {
        Locale locale = Locale.ROOT;
        Object[] objArr = new Object[3];
        objArr[0] = Integer.toHexString(System.identityHashCode(this));
        objArr[1] = Integer.valueOf(h());
        objArr[2] = h() <= 50 ? c50.L1(this) : String.valueOf(c50.L1(l(0, 47))).concat("...");
        return String.format(locale, "<ByteString@%s size=%d contents=\"%s\">", objArr);
    }
}
