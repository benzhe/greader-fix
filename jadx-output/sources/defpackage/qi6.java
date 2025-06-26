package defpackage;

import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;
import java.util.NoSuchElementException;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class qi6 implements Iterable<Byte>, Serializable {
    public static final qi6 f = new h(jj6.b);
    public static final e g;
    public int e = 0;

    public class a extends b {
        public int e = 0;
        public final int f;

        public a() {
            this.f = qi6.this.size();
        }

        @Override // qi6.f
        public byte b() {
            int i = this.e;
            if (i >= this.f) {
                throw new NoSuchElementException();
            }
            this.e = i + 1;
            return qi6.this.u(i);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.e < this.f;
        }
    }

    public static abstract class b implements f {
        @Override // java.util.Iterator
        public Byte next() {
            return Byte.valueOf(b());
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public static final class c implements e {
        public c(a aVar) {
        }

        @Override // qi6.e
        public byte[] a(byte[] bArr, int i, int i2) {
            return Arrays.copyOfRange(bArr, i, i2 + i);
        }
    }

    public static final class d extends h {
        public final int i;
        public final int j;

        public d(byte[] bArr, int i, int i2) {
            super(bArr);
            qi6.l(i, i + i2, bArr.length);
            this.i = i;
            this.j = i2;
        }

        @Override // qi6.h
        public int N() {
            return this.i;
        }

        @Override // qi6.h, defpackage.qi6
        public byte h(int i) {
            qi6.j(i, this.j);
            return this.h[this.i + i];
        }

        @Override // qi6.h, defpackage.qi6
        public void r(byte[] bArr, int i, int i2, int i3) {
            System.arraycopy(this.h, this.i + i, bArr, i2, i3);
        }

        @Override // qi6.h, defpackage.qi6
        public int size() {
            return this.j;
        }

        @Override // qi6.h, defpackage.qi6
        public byte u(int i) {
            return this.h[this.i + i];
        }
    }

    public interface e {
        byte[] a(byte[] bArr, int i, int i2);
    }

    public interface f extends Iterator<Byte> {
        byte b();
    }

    public static abstract class g extends qi6 {
        public abstract boolean M(qi6 qi6Var, int i, int i2);

        @Override // defpackage.qi6, java.lang.Iterable
        public Iterator<Byte> iterator() {
            return new a();
        }

        @Override // defpackage.qi6
        public final int s() {
            return 0;
        }

        @Override // defpackage.qi6
        public final boolean v() {
            return true;
        }
    }

    public static class h extends g {
        public final byte[] h;

        public h(byte[] bArr) {
            Objects.requireNonNull(bArr);
            this.h = bArr;
        }

        @Override // defpackage.qi6
        public final ri6 A() {
            return ri6.g(this.h, N(), size(), true);
        }

        @Override // defpackage.qi6
        public final int B(int i, int i2, int i3) {
            byte[] bArr = this.h;
            int iN = N() + i2;
            Charset charset = jj6.a;
            for (int i4 = iN; i4 < iN + i3; i4++) {
                i = (i * 31) + bArr[i4];
            }
            return i;
        }

        @Override // defpackage.qi6
        public final int C(int i, int i2, int i3) {
            int iN = N() + i2;
            return dl6.a.c(i, this.h, iN, i3 + iN);
        }

        @Override // defpackage.qi6
        public final qi6 G(int i, int i2) {
            int iL = qi6.l(i, i2, size());
            return iL == 0 ? qi6.f : new d(this.h, N() + i, iL);
        }

        @Override // defpackage.qi6
        public final String J(Charset charset) {
            return new String(this.h, N(), size(), charset);
        }

        @Override // defpackage.qi6
        public final void K(pi6 pi6Var) throws IOException {
            pi6Var.a(this.h, N(), size());
        }

        @Override // qi6.g
        public final boolean M(qi6 qi6Var, int i, int i2) {
            if (i2 > qi6Var.size()) {
                throw new IllegalArgumentException("Length too large: " + i2 + size());
            }
            int i3 = i + i2;
            if (i3 > qi6Var.size()) {
                throw new IllegalArgumentException("Ran off end of other: " + i + ", " + i2 + ", " + qi6Var.size());
            }
            if (!(qi6Var instanceof h)) {
                return qi6Var.G(i, i3).equals(G(0, i2));
            }
            h hVar = (h) qi6Var;
            byte[] bArr = this.h;
            byte[] bArr2 = hVar.h;
            int iN = N() + i2;
            int iN2 = N();
            int iN3 = hVar.N() + i;
            while (iN2 < iN) {
                if (bArr[iN2] != bArr2[iN3]) {
                    return false;
                }
                iN2++;
                iN3++;
            }
            return true;
        }

        public int N() {
            return 0;
        }

        @Override // defpackage.qi6
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof qi6) || size() != ((qi6) obj).size()) {
                return false;
            }
            if (size() == 0) {
                return true;
            }
            if (!(obj instanceof h)) {
                return obj.equals(this);
            }
            h hVar = (h) obj;
            int i = this.e;
            int i2 = hVar.e;
            if (i == 0 || i2 == 0 || i == i2) {
                return M(hVar, 0, size());
            }
            return false;
        }

        @Override // defpackage.qi6
        public byte h(int i) {
            return this.h[i];
        }

        @Override // defpackage.qi6
        public void r(byte[] bArr, int i, int i2, int i3) {
            System.arraycopy(this.h, i, bArr, i2, i3);
        }

        @Override // defpackage.qi6
        public int size() {
            return this.h.length;
        }

        @Override // defpackage.qi6
        public byte u(int i) {
            return this.h[i];
        }

        @Override // defpackage.qi6
        public final boolean y() {
            int iN = N();
            return dl6.g(this.h, iN, size() + iN);
        }
    }

    public static final class i implements e {
        public i(a aVar) {
        }

        @Override // qi6.e
        public byte[] a(byte[] bArr, int i, int i2) {
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, i, bArr2, 0, i2);
            return bArr2;
        }
    }

    static {
        g = li6.a() ? new i(null) : new c(null);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ab  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.qi6 d(java.util.Iterator<defpackage.qi6> r6, int r7) {
        /*
            Method dump skipped, instructions count: 271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.qi6.d(java.util.Iterator, int):qi6");
    }

    public static void j(int i2, int i3) {
        if (((i3 - (i2 + 1)) | i2) < 0) {
            if (i2 >= 0) {
                throw new ArrayIndexOutOfBoundsException(jo.i("Index > length: ", i2, ", ", i3));
            }
            throw new ArrayIndexOutOfBoundsException(jo.g("Index < 0: ", i2));
        }
    }

    public static int l(int i2, int i3, int i4) {
        int i5 = i3 - i2;
        if ((i2 | i3 | i5 | (i4 - i3)) >= 0) {
            return i5;
        }
        if (i2 < 0) {
            throw new IndexOutOfBoundsException(jo.h("Beginning index: ", i2, " < 0"));
        }
        if (i3 < i2) {
            throw new IndexOutOfBoundsException(jo.i("Beginning index larger than ending index: ", i2, ", ", i3));
        }
        throw new IndexOutOfBoundsException(jo.i("End index: ", i3, " >= ", i4));
    }

    public static qi6 n(byte[] bArr) {
        return o(bArr, 0, bArr.length);
    }

    public static qi6 o(byte[] bArr, int i2, int i3) {
        l(i2, i2 + i3, bArr.length);
        return new h(g.a(bArr, i2, i3));
    }

    public abstract ri6 A();

    public abstract int B(int i2, int i3, int i4);

    public abstract int C(int i2, int i3, int i4);

    public abstract qi6 G(int i2, int i3);

    public final byte[] H() {
        int size = size();
        if (size == 0) {
            return jj6.b;
        }
        byte[] bArr = new byte[size];
        r(bArr, 0, 0, size);
        return bArr;
    }

    public abstract String J(Charset charset);

    public abstract void K(pi6 pi6Var) throws IOException;

    public abstract boolean equals(Object obj);

    public abstract byte h(int i2);

    public final int hashCode() {
        int iB = this.e;
        if (iB == 0) {
            int size = size();
            iB = B(size, 0, size);
            if (iB == 0) {
                iB = 1;
            }
            this.e = iB;
        }
        return iB;
    }

    public final boolean isEmpty() {
        return size() == 0;
    }

    @Deprecated
    public final void p(byte[] bArr, int i2, int i3, int i4) {
        l(i2, i2 + i4, size());
        l(i3, i3 + i4, bArr.length);
        if (i4 > 0) {
            r(bArr, i2, i3, i4);
        }
    }

    public abstract void r(byte[] bArr, int i2, int i3, int i4);

    public abstract int s();

    public abstract int size();

    public final String toString() {
        String strW0;
        Locale locale = Locale.ROOT;
        Object[] objArr = new Object[3];
        objArr[0] = Integer.toHexString(System.identityHashCode(this));
        objArr[1] = Integer.valueOf(size());
        if (size() <= 50) {
            strW0 = n56.w0(this);
        } else {
            strW0 = n56.w0(G(0, 47)) + "...";
        }
        objArr[2] = strW0;
        return String.format(locale, "<ByteString@%s size=%d contents=\"%s\">", objArr);
    }

    public abstract byte u(int i2);

    public abstract boolean v();

    public abstract boolean y();

    @Override // java.lang.Iterable
    /* renamed from: z, reason: merged with bridge method [inline-methods] */
    public f iterator() {
        return new a();
    }
}
