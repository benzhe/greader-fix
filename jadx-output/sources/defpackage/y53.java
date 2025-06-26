package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class y53 extends u53 {
    public final InputStream e;
    public final byte[] f;
    public int g;
    public int h;
    public int i;
    public int j;
    public int k;
    public int l;

    public y53(InputStream inputStream, int i) {
        super(null);
        this.l = Integer.MAX_VALUE;
        Charset charset = u63.a;
        this.e = inputStream;
        this.f = new byte[RecyclerView.a0.FLAG_APPEARED_IN_PRE_LAYOUT];
        this.g = 0;
        this.i = 0;
        this.k = 0;
    }

    public final long B() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            j |= (r3 & Byte.MAX_VALUE) << i;
            if ((H() & 128) == 0) {
                return j;
            }
        }
        throw e73.c();
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0066, code lost:
    
        if (r2[r3] >= 0) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int C() throws java.io.IOException {
        /*
            r5 = this;
            int r0 = r5.i
            int r1 = r5.g
            if (r1 == r0) goto L6b
            byte[] r2 = r5.f
            int r3 = r0 + 1
            r0 = r2[r0]
            if (r0 < 0) goto L11
            r5.i = r3
            return r0
        L11:
            int r1 = r1 - r3
            r4 = 9
            if (r1 < r4) goto L6b
            int r1 = r3 + 1
            r3 = r2[r3]
            int r3 = r3 << 7
            r0 = r0 ^ r3
            if (r0 >= 0) goto L22
            r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
            goto L68
        L22:
            int r3 = r1 + 1
            r1 = r2[r1]
            int r1 = r1 << 14
            r0 = r0 ^ r1
            if (r0 < 0) goto L2f
            r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
        L2d:
            r1 = r3
            goto L68
        L2f:
            int r1 = r3 + 1
            r3 = r2[r3]
            int r3 = r3 << 21
            r0 = r0 ^ r3
            if (r0 >= 0) goto L3d
            r2 = -2080896(0xffffffffffe03f80, float:NaN)
            r0 = r0 ^ r2
            goto L68
        L3d:
            int r3 = r1 + 1
            r1 = r2[r1]
            int r4 = r1 << 28
            r0 = r0 ^ r4
            r4 = 266354560(0xfe03f80, float:2.2112565E-29)
            r0 = r0 ^ r4
            if (r1 >= 0) goto L2d
            int r1 = r3 + 1
            r3 = r2[r3]
            if (r3 >= 0) goto L68
            int r3 = r1 + 1
            r1 = r2[r1]
            if (r1 >= 0) goto L2d
            int r1 = r3 + 1
            r3 = r2[r3]
            if (r3 >= 0) goto L68
            int r3 = r1 + 1
            r1 = r2[r1]
            if (r1 >= 0) goto L2d
            int r1 = r3 + 1
            r2 = r2[r3]
            if (r2 < 0) goto L6b
        L68:
            r5.i = r1
            return r0
        L6b:
            long r0 = r5.B()
            int r1 = (int) r0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.y53.C():int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00b0, code lost:
    
        if (r2[r0] >= 0) goto L40;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long D() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 189
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.y53.D():long");
    }

    public final int E() throws IOException {
        int i = this.i;
        if (this.g - i < 4) {
            K(4);
            i = this.i;
        }
        byte[] bArr = this.f;
        this.i = i + 4;
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public final long F() throws IOException {
        int i = this.i;
        if (this.g - i < 8) {
            K(8);
            i = this.i;
        }
        byte[] bArr = this.f;
        this.i = i + 8;
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    public final void G() {
        int i = this.g + this.h;
        this.g = i;
        int i2 = this.k + i;
        int i3 = this.l;
        if (i2 <= i3) {
            this.h = 0;
            return;
        }
        int i4 = i2 - i3;
        this.h = i4;
        this.g = i - i4;
    }

    public final byte H() throws IOException {
        if (this.i == this.g) {
            K(1);
        }
        byte[] bArr = this.f;
        int i = this.i;
        this.i = i + 1;
        return bArr[i];
    }

    public final byte[] I(int i) throws IOException {
        byte[] bArrM = M(i);
        if (bArrM != null) {
            return bArrM;
        }
        int i2 = this.i;
        int i3 = this.g;
        int length = i3 - i2;
        this.k += i3;
        this.i = 0;
        this.g = 0;
        List<byte[]> listN = N(i - length);
        byte[] bArr = new byte[i];
        System.arraycopy(this.f, i2, bArr, 0, length);
        Iterator it = ((ArrayList) listN).iterator();
        while (it.hasNext()) {
            byte[] bArr2 = (byte[]) it.next();
            System.arraycopy(bArr2, 0, bArr, length, bArr2.length);
            length += bArr2.length;
        }
        return bArr;
    }

    public final void J(int i) throws IOException {
        int i2 = this.g;
        int i3 = this.i;
        if (i <= i2 - i3 && i >= 0) {
            this.i = i3 + i;
            return;
        }
        if (i < 0) {
            throw e73.b();
        }
        int i4 = this.k;
        int i5 = i4 + i3 + i;
        int i6 = this.l;
        if (i5 > i6) {
            J((i6 - i4) - i3);
            throw e73.a();
        }
        this.k = i4 + i3;
        int i7 = i2 - i3;
        this.g = 0;
        this.i = 0;
        while (i7 < i) {
            try {
                long j = i - i7;
                long jSkip = this.e.skip(j);
                if (jSkip >= 0 && jSkip <= j) {
                    if (jSkip == 0) {
                        break;
                    } else {
                        i7 += (int) jSkip;
                    }
                } else {
                    String strValueOf = String.valueOf(this.e.getClass());
                    StringBuilder sb = new StringBuilder(strValueOf.length() + 92);
                    sb.append(strValueOf);
                    sb.append("#skip returned invalid result: ");
                    sb.append(jSkip);
                    sb.append("\nThe InputStream implementation is buggy.");
                    throw new IllegalStateException(sb.toString());
                }
            } finally {
                this.k += i7;
                G();
            }
        }
        if (i7 >= i) {
            return;
        }
        int i8 = this.g;
        int i9 = i8 - this.i;
        this.i = i8;
        K(1);
        while (true) {
            int i10 = i - i9;
            int i11 = this.g;
            if (i10 <= i11) {
                this.i = i10;
                return;
            } else {
                i9 += i11;
                this.i = i11;
                K(1);
            }
        }
    }

    public final void K(int i) throws IOException {
        if (L(i)) {
            return;
        }
        if (i <= (this.c - this.k) - this.i) {
            throw e73.a();
        }
        throw new e73("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
    }

    public final boolean L(int i) throws IOException {
        do {
            int i2 = this.i;
            int i3 = i2 + i;
            int i4 = this.g;
            if (i3 <= i4) {
                StringBuilder sb = new StringBuilder(77);
                sb.append("refillBuffer() called when ");
                sb.append(i);
                sb.append(" bytes were already available in buffer");
                throw new IllegalStateException(sb.toString());
            }
            int i5 = this.c;
            int i6 = this.k;
            if (i > (i5 - i6) - i2 || i6 + i2 + i > this.l) {
                return false;
            }
            if (i2 > 0) {
                if (i4 > i2) {
                    byte[] bArr = this.f;
                    System.arraycopy(bArr, i2, bArr, 0, i4 - i2);
                }
                this.k += i2;
                this.g -= i2;
                this.i = 0;
            }
            InputStream inputStream = this.e;
            byte[] bArr2 = this.f;
            int i7 = this.g;
            int i8 = inputStream.read(bArr2, i7, Math.min(bArr2.length - i7, (this.c - this.k) - i7));
            if (i8 == 0 || i8 < -1 || i8 > this.f.length) {
                String strValueOf = String.valueOf(this.e.getClass());
                StringBuilder sb2 = new StringBuilder(strValueOf.length() + 91);
                sb2.append(strValueOf);
                sb2.append("#read(byte[]) returned invalid result: ");
                sb2.append(i8);
                sb2.append("\nThe InputStream implementation is buggy.");
                throw new IllegalStateException(sb2.toString());
            }
            if (i8 <= 0) {
                return false;
            }
            this.g += i8;
            G();
        } while (this.g < i);
        return true;
    }

    public final byte[] M(int i) throws IOException {
        if (i == 0) {
            return u63.b;
        }
        if (i < 0) {
            throw e73.b();
        }
        int i2 = this.k;
        int i3 = this.i;
        int i4 = i2 + i3 + i;
        if (i4 - this.c > 0) {
            throw new e73("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
        }
        int i5 = this.l;
        if (i4 > i5) {
            J((i5 - i2) - i3);
            throw e73.a();
        }
        int i6 = this.g - i3;
        int i7 = i - i6;
        if (i7 >= 4096 && i7 > this.e.available()) {
            return null;
        }
        byte[] bArr = new byte[i];
        System.arraycopy(this.f, this.i, bArr, 0, i6);
        this.k += this.g;
        this.i = 0;
        this.g = 0;
        while (i6 < i) {
            int i8 = this.e.read(bArr, i6, i - i6);
            if (i8 == -1) {
                throw e73.a();
            }
            this.k += i8;
            i6 += i8;
        }
        return bArr;
    }

    public final List<byte[]> N(int i) throws IOException {
        ArrayList arrayList = new ArrayList();
        while (i > 0) {
            int iMin = Math.min(i, RecyclerView.a0.FLAG_APPEARED_IN_PRE_LAYOUT);
            byte[] bArr = new byte[iMin];
            int i2 = 0;
            while (i2 < iMin) {
                int i3 = this.e.read(bArr, i2, iMin - i2);
                if (i3 == -1) {
                    throw e73.a();
                }
                this.k += i3;
                i2 += i3;
            }
            i -= iMin;
            arrayList.add(bArr);
        }
        return arrayList;
    }

    @Override // defpackage.u53
    public final double a() throws IOException {
        return Double.longBitsToDouble(F());
    }

    @Override // defpackage.u53
    public final float b() throws IOException {
        return Float.intBitsToFloat(E());
    }

    @Override // defpackage.u53
    public final String c() throws IOException {
        int iC = C();
        if (iC > 0 && iC <= this.g - this.i) {
            String str = new String(this.f, this.i, iC, u63.a);
            this.i += iC;
            return str;
        }
        if (iC == 0) {
            return "";
        }
        if (iC > this.g) {
            return new String(I(iC), u63.a);
        }
        K(iC);
        String str2 = new String(this.f, this.i, iC, u63.a);
        this.i += iC;
        return str2;
    }

    @Override // defpackage.u53
    public final int e() throws IOException {
        if (t()) {
            this.j = 0;
            return 0;
        }
        int iC = C();
        this.j = iC;
        if ((iC >>> 3) != 0) {
            return iC;
        }
        throw e73.d();
    }

    @Override // defpackage.u53
    public final long f() throws IOException {
        return D();
    }

    @Override // defpackage.u53
    public final long g() throws IOException {
        return D();
    }

    @Override // defpackage.u53
    public final int h() throws IOException {
        return C();
    }

    @Override // defpackage.u53
    public final long i() throws IOException {
        return F();
    }

    @Override // defpackage.u53
    public final int j() throws IOException {
        return E();
    }

    @Override // defpackage.u53
    public final boolean k() throws IOException {
        return D() != 0;
    }

    @Override // defpackage.u53
    public final String l() throws IOException {
        byte[] bArrI;
        int iC = C();
        int i = this.i;
        int i2 = this.g;
        if (iC <= i2 - i && iC > 0) {
            bArrI = this.f;
            this.i = i + iC;
        } else {
            if (iC == 0) {
                return "";
            }
            if (iC <= i2) {
                K(iC);
                bArrI = this.f;
                this.i = iC;
            } else {
                bArrI = I(iC);
            }
            i = 0;
        }
        return u93.e(bArrI, i, iC);
    }

    @Override // defpackage.u53
    public final k53 m() throws IOException {
        int iC = C();
        int i = this.g;
        int i2 = this.i;
        if (iC <= i - i2 && iC > 0) {
            k53 k53VarM = k53.M(this.f, i2, iC);
            this.i += iC;
            return k53VarM;
        }
        if (iC == 0) {
            return k53.f;
        }
        byte[] bArrM = M(iC);
        if (bArrM != null) {
            return k53.M(bArrM, 0, bArrM.length);
        }
        int i3 = this.i;
        int i4 = this.g;
        int length = i4 - i3;
        this.k += i4;
        this.i = 0;
        this.g = 0;
        List<byte[]> listN = N(iC - length);
        byte[] bArr = new byte[iC];
        System.arraycopy(this.f, i3, bArr, 0, length);
        Iterator it = ((ArrayList) listN).iterator();
        while (it.hasNext()) {
            byte[] bArr2 = (byte[]) it.next();
            System.arraycopy(bArr2, 0, bArr, length, bArr2.length);
            length += bArr2.length;
        }
        return new t53(bArr);
    }

    @Override // defpackage.u53
    public final int n() throws IOException {
        return C();
    }

    @Override // defpackage.u53
    public final int o() throws IOException {
        return C();
    }

    @Override // defpackage.u53
    public final int p() throws IOException {
        return E();
    }

    @Override // defpackage.u53
    public final long q() throws IOException {
        return F();
    }

    @Override // defpackage.u53
    public final int r() throws IOException {
        return u53.A(C());
    }

    @Override // defpackage.u53
    public final long s() throws IOException {
        return u53.v(D());
    }

    @Override // defpackage.u53
    public final boolean t() throws IOException {
        return this.i == this.g && !L(1);
    }

    @Override // defpackage.u53
    public final int u() {
        return this.k + this.i;
    }

    @Override // defpackage.u53
    public final void w(int i) throws e73 {
        if (this.j != i) {
            throw e73.e();
        }
    }

    @Override // defpackage.u53
    public final boolean x(int i) throws IOException {
        int iE;
        int i2 = i & 7;
        int i3 = 0;
        if (i2 == 0) {
            if (this.g - this.i < 10) {
                while (i3 < 10) {
                    if (H() < 0) {
                        i3++;
                    }
                }
                throw e73.c();
            }
            while (i3 < 10) {
                byte[] bArr = this.f;
                int i4 = this.i;
                this.i = i4 + 1;
                if (bArr[i4] < 0) {
                    i3++;
                }
            }
            throw e73.c();
            return true;
        }
        if (i2 == 1) {
            J(8);
            return true;
        }
        if (i2 == 2) {
            J(C());
            return true;
        }
        if (i2 != 3) {
            if (i2 == 4) {
                return false;
            }
            if (i2 != 5) {
                throw e73.f();
            }
            J(4);
            return true;
        }
        do {
            iE = e();
            if (iE == 0) {
                break;
            }
        } while (x(iE));
        w(((i >>> 3) << 3) | 4);
        return true;
    }

    @Override // defpackage.u53
    public final int y(int i) throws e73 {
        if (i < 0) {
            throw e73.b();
        }
        int i2 = this.k + this.i + i;
        int i3 = this.l;
        if (i2 > i3) {
            throw e73.a();
        }
        this.l = i2;
        G();
        return i3;
    }

    @Override // defpackage.u53
    public final void z(int i) {
        this.l = i;
        G();
    }
}
