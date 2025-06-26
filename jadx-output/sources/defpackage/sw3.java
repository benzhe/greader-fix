package defpackage;

import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class sw3 implements Serializable, Iterable<Byte> {
    public static final sw3 f = new ww3(ux3.b);
    public static final vw3 g;
    public int e = 0;

    static {
        g = nw3.a() ? new xw3(null) : new uw3(null);
    }

    public static sw3 n(byte[] bArr, int i, int i2) {
        return new ww3(g.a(bArr, i, i2));
    }

    public abstract int d(int i, int i2, int i3);

    public abstract boolean equals(Object obj);

    public abstract String h(Charset charset);

    public final int hashCode() {
        int iD = this.e;
        if (iD == 0) {
            int size = size();
            iD = d(size, 0, size);
            if (iD == 0) {
                iD = 1;
            }
            this.e = iD;
        }
        return iD;
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Iterator<Byte> iterator() {
        return new tw3(this);
    }

    public abstract void j(rw3 rw3Var) throws IOException;

    public abstract boolean l();

    public abstract byte o(int i);

    public abstract int size();

    public final String toString() {
        return String.format("<ByteString@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()));
    }
}
