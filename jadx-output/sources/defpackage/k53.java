package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: classes.dex */
public abstract class k53 implements Serializable, Iterable<Byte> {
    public static final k53 f = new t53(u63.b);
    public static final p53 g;
    public int e = 0;

    static {
        g = e53.a() ? new v53(null) : new n53(null);
    }

    public static k53 A(InputStream inputStream) throws IOException {
        ArrayList arrayList = new ArrayList();
        int iMin = RecyclerView.a0.FLAG_TMP_DETACHED;
        while (true) {
            byte[] bArr = new byte[iMin];
            int i = 0;
            while (i < iMin) {
                int i2 = inputStream.read(bArr, i, iMin - i);
                if (i2 == -1) {
                    break;
                }
                i += i2;
            }
            k53 k53VarM = i == 0 ? null : M(bArr, 0, i);
            if (k53VarM == null) {
                return N(arrayList);
            }
            arrayList.add(k53VarM);
            iMin = Math.min(iMin << 1, RecyclerView.a0.FLAG_BOUNCED_FROM_HIDDEN_LIST);
        }
    }

    public static k53 J(String str) {
        return new t53(str.getBytes(u63.a));
    }

    public static int K(int i, int i2, int i3) {
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

    public static k53 M(byte[] bArr, int i, int i2) {
        K(i, i + i2, bArr.length);
        return new t53(g.a(bArr, i, i2));
    }

    public static k53 N(Iterable<k53> iterable) {
        int size;
        if (iterable instanceof Collection) {
            size = ((Collection) iterable).size();
        } else {
            size = 0;
            Iterator<k53> it = iterable.iterator();
            while (it.hasNext()) {
                it.next();
                size++;
            }
        }
        return size == 0 ? f : h(iterable.iterator(), size);
    }

    public static k53 O(byte[] bArr) {
        return M(bArr, 0, bArr.length);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ab  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.k53 h(java.util.Iterator<defpackage.k53> r6, int r7) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.k53.h(java.util.Iterator, int):k53");
    }

    public static void p(int i, int i2) {
        if (((i2 - (i + 1)) | i) < 0) {
            if (i >= 0) {
                throw new ArrayIndexOutOfBoundsException(jo.N(40, "Index > length: ", i, ", ", i2));
            }
            throw new ArrayIndexOutOfBoundsException(jo.M(22, "Index < 0: ", i));
        }
    }

    public abstract int B(int i, int i2, int i3);

    public abstract byte C(int i);

    public abstract byte G(int i);

    public abstract int H(int i, int i2, int i3);

    public final byte[] d() {
        int size = size();
        if (size == 0) {
            return u63.b;
        }
        byte[] bArr = new byte[size];
        r(bArr, 0, 0, size);
        return bArr;
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int iH = this.e;
        if (iH == 0) {
            int size = size();
            iH = H(size, 0, size);
            if (iH == 0) {
                iH = 1;
            }
            this.e = iH;
        }
        return iH;
    }

    public abstract String j(Charset charset);

    public abstract void l(h53 h53Var) throws IOException;

    @Deprecated
    public final void n(byte[] bArr, int i, int i2, int i3) {
        K(i, i + i3, size());
        K(i2, i2 + i3, bArr.length);
        if (i3 > 0) {
            r(bArr, i, i2, i3);
        }
    }

    public abstract k53 o(int i, int i2);

    public abstract void r(byte[] bArr, int i, int i2, int i3);

    @Override // java.lang.Iterable
    /* renamed from: s, reason: merged with bridge method [inline-methods] */
    public o53 iterator() {
        return new j53(this);
    }

    public abstract int size();

    public final String toString() {
        Locale locale = Locale.ROOT;
        Object[] objArr = new Object[3];
        objArr[0] = Integer.toHexString(System.identityHashCode(this));
        objArr[1] = Integer.valueOf(size());
        objArr[2] = size() <= 50 ? c50.M2(this) : String.valueOf(c50.M2(o(0, 47))).concat("...");
        return String.format(locale, "<ByteString@%s size=%d contents=\"%s\">", objArr);
    }

    public abstract boolean u();

    public abstract u53 v();

    public abstract int y();

    public abstract boolean z();
}
