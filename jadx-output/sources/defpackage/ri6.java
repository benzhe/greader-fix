package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import defpackage.qi6;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public abstract class ri6 {
    public int a;
    public int b = 100;
    public int c = Integer.MAX_VALUE;
    public si6 d;

    public static final class b extends ri6 {
        public final byte[] e;
        public final boolean f;
        public int g;
        public int h;
        public int i;
        public int j;
        public int k;
        public int l;

        public b(byte[] bArr, int i, int i2, boolean z, a aVar) {
            super(null);
            this.l = Integer.MAX_VALUE;
            this.e = bArr;
            this.g = i2 + i;
            this.i = i;
            this.j = i;
            this.f = z;
        }

        @Override // defpackage.ri6
        public long A() throws IOException {
            return G();
        }

        @Override // defpackage.ri6
        public boolean B(int i) throws IOException {
            int iY;
            int i2 = i & 7;
            int i3 = 0;
            if (i2 == 0) {
                if (this.g - this.i < 10) {
                    while (i3 < 10) {
                        if (C() < 0) {
                            i3++;
                        }
                    }
                    throw kj6.e();
                }
                while (i3 < 10) {
                    byte[] bArr = this.e;
                    int i4 = this.i;
                    this.i = i4 + 1;
                    if (bArr[i4] < 0) {
                        i3++;
                    }
                }
                throw kj6.e();
                return true;
            }
            if (i2 == 1) {
                J(8);
                return true;
            }
            if (i2 == 2) {
                J(F());
                return true;
            }
            if (i2 != 3) {
                if (i2 == 4) {
                    return false;
                }
                if (i2 != 5) {
                    throw kj6.d();
                }
                J(4);
                return true;
            }
            do {
                iY = y();
                if (iY == 0) {
                    break;
                }
            } while (B(iY));
            a(((i >>> 3) << 3) | 4);
            return true;
        }

        public byte C() throws IOException {
            int i = this.i;
            if (i == this.g) {
                throw kj6.h();
            }
            byte[] bArr = this.e;
            this.i = i + 1;
            return bArr[i];
        }

        public int D() throws IOException {
            int i = this.i;
            if (this.g - i < 4) {
                throw kj6.h();
            }
            byte[] bArr = this.e;
            this.i = i + 4;
            return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        }

        public long E() throws IOException {
            int i = this.i;
            if (this.g - i < 8) {
                throw kj6.h();
            }
            byte[] bArr = this.e;
            this.i = i + 8;
            return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x0068, code lost:
        
            if (r2[r3] < 0) goto L34;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int F() throws java.io.IOException {
            /*
                r5 = this;
                int r0 = r5.i
                int r1 = r5.g
                if (r1 != r0) goto L7
                goto L6a
            L7:
                byte[] r2 = r5.e
                int r3 = r0 + 1
                r0 = r2[r0]
                if (r0 < 0) goto L12
                r5.i = r3
                return r0
            L12:
                int r1 = r1 - r3
                r4 = 9
                if (r1 >= r4) goto L18
                goto L6a
            L18:
                int r1 = r3 + 1
                r3 = r2[r3]
                int r3 = r3 << 7
                r0 = r0 ^ r3
                if (r0 >= 0) goto L24
                r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
                goto L70
            L24:
                int r3 = r1 + 1
                r1 = r2[r1]
                int r1 = r1 << 14
                r0 = r0 ^ r1
                if (r0 < 0) goto L31
                r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
            L2f:
                r1 = r3
                goto L70
            L31:
                int r1 = r3 + 1
                r3 = r2[r3]
                int r3 = r3 << 21
                r0 = r0 ^ r3
                if (r0 >= 0) goto L3f
                r2 = -2080896(0xffffffffffe03f80, float:NaN)
                r0 = r0 ^ r2
                goto L70
            L3f:
                int r3 = r1 + 1
                r1 = r2[r1]
                int r4 = r1 << 28
                r0 = r0 ^ r4
                r4 = 266354560(0xfe03f80, float:2.2112565E-29)
                r0 = r0 ^ r4
                if (r1 >= 0) goto L2f
                int r1 = r3 + 1
                r3 = r2[r3]
                if (r3 >= 0) goto L70
                int r3 = r1 + 1
                r1 = r2[r1]
                if (r1 >= 0) goto L2f
                int r1 = r3 + 1
                r3 = r2[r3]
                if (r3 >= 0) goto L70
                int r3 = r1 + 1
                r1 = r2[r1]
                if (r1 >= 0) goto L2f
                int r1 = r3 + 1
                r2 = r2[r3]
                if (r2 >= 0) goto L70
            L6a:
                long r0 = r5.H()
                int r1 = (int) r0
                return r1
            L70:
                r5.i = r1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: ri6.b.F():int");
        }

        /* JADX WARN: Code restructure failed: missing block: B:39:0x00b4, code lost:
        
            if (r2[r0] < 0) goto L40;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long G() throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 192
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: ri6.b.G():long");
        }

        public long H() throws IOException {
            long j = 0;
            for (int i = 0; i < 64; i += 7) {
                j |= (r3 & Byte.MAX_VALUE) << i;
                if ((C() & 128) == 0) {
                    return j;
                }
            }
            throw kj6.e();
        }

        public final void I() {
            int i = this.g + this.h;
            this.g = i;
            int i2 = i - this.j;
            int i3 = this.l;
            if (i2 <= i3) {
                this.h = 0;
                return;
            }
            int i4 = i2 - i3;
            this.h = i4;
            this.g = i - i4;
        }

        public void J(int i) throws IOException {
            if (i >= 0) {
                int i2 = this.g;
                int i3 = this.i;
                if (i <= i2 - i3) {
                    this.i = i3 + i;
                    return;
                }
            }
            if (i >= 0) {
                throw kj6.h();
            }
            throw kj6.f();
        }

        @Override // defpackage.ri6
        public void a(int i) throws kj6 {
            if (this.k != i) {
                throw kj6.a();
            }
        }

        @Override // defpackage.ri6
        public int d() {
            return this.i - this.j;
        }

        @Override // defpackage.ri6
        public boolean e() throws IOException {
            return this.i == this.g;
        }

        @Override // defpackage.ri6
        public void h(int i) {
            this.l = i;
            I();
        }

        @Override // defpackage.ri6
        public int i(int i) throws kj6 {
            if (i < 0) {
                throw kj6.f();
            }
            int iD = d() + i;
            int i2 = this.l;
            if (iD > i2) {
                throw kj6.h();
            }
            this.l = iD;
            I();
            return i2;
        }

        @Override // defpackage.ri6
        public boolean j() throws IOException {
            return G() != 0;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
        @Override // defpackage.ri6
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public defpackage.qi6 k() throws java.io.IOException {
            /*
                r3 = this;
                int r0 = r3.F()
                if (r0 <= 0) goto L19
                int r1 = r3.g
                int r2 = r3.i
                int r1 = r1 - r2
                if (r0 > r1) goto L19
                byte[] r1 = r3.e
                qi6 r1 = defpackage.qi6.o(r1, r2, r0)
                int r2 = r3.i
                int r2 = r2 + r0
                r3.i = r2
                return r1
            L19:
                if (r0 != 0) goto L1e
                qi6 r0 = defpackage.qi6.f
                return r0
            L1e:
                if (r0 <= 0) goto L31
                int r1 = r3.g
                int r2 = r3.i
                int r1 = r1 - r2
                if (r0 > r1) goto L31
                int r0 = r0 + r2
                r3.i = r0
                byte[] r1 = r3.e
                byte[] r0 = java.util.Arrays.copyOfRange(r1, r2, r0)
                goto L37
            L31:
                if (r0 > 0) goto L44
                if (r0 != 0) goto L3f
                byte[] r0 = defpackage.jj6.b
            L37:
                qi6 r1 = defpackage.qi6.f
                qi6$h r1 = new qi6$h
                r1.<init>(r0)
                return r1
            L3f:
                kj6 r0 = defpackage.kj6.f()
                throw r0
            L44:
                kj6 r0 = defpackage.kj6.h()
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: ri6.b.k():qi6");
        }

        @Override // defpackage.ri6
        public double l() throws IOException {
            return Double.longBitsToDouble(E());
        }

        @Override // defpackage.ri6
        public int m() throws IOException {
            return F();
        }

        @Override // defpackage.ri6
        public int n() throws IOException {
            return D();
        }

        @Override // defpackage.ri6
        public long o() throws IOException {
            return E();
        }

        @Override // defpackage.ri6
        public float p() throws IOException {
            return Float.intBitsToFloat(D());
        }

        @Override // defpackage.ri6
        public int q() throws IOException {
            return F();
        }

        @Override // defpackage.ri6
        public long r() throws IOException {
            return G();
        }

        @Override // defpackage.ri6
        public int s() throws IOException {
            return D();
        }

        @Override // defpackage.ri6
        public long t() throws IOException {
            return E();
        }

        @Override // defpackage.ri6
        public int u() throws IOException {
            return ri6.b(F());
        }

        @Override // defpackage.ri6
        public long v() throws IOException {
            return ri6.c(G());
        }

        @Override // defpackage.ri6
        public String w() throws IOException {
            int iF = F();
            if (iF > 0 && iF <= this.g - this.i) {
                String str = new String(this.e, this.i, iF, jj6.a);
                this.i += iF;
                return str;
            }
            if (iF == 0) {
                return "";
            }
            if (iF < 0) {
                throw kj6.f();
            }
            throw kj6.h();
        }

        @Override // defpackage.ri6
        public String x() throws IOException {
            int iF = F();
            if (iF > 0) {
                int i = this.g;
                int i2 = this.i;
                if (iF <= i - i2) {
                    String strC = dl6.c(this.e, i2, iF);
                    this.i += iF;
                    return strC;
                }
            }
            if (iF == 0) {
                return "";
            }
            if (iF <= 0) {
                throw kj6.f();
            }
            throw kj6.h();
        }

        @Override // defpackage.ri6
        public int y() throws IOException {
            if (e()) {
                this.k = 0;
                return 0;
            }
            int iF = F();
            this.k = iF;
            if ((iF >>> 3) != 0) {
                return iF;
            }
            throw kj6.b();
        }

        @Override // defpackage.ri6
        public int z() throws IOException {
            return F();
        }
    }

    public static final class c extends ri6 {
        public final InputStream e;
        public final byte[] f;
        public int g;
        public int h;
        public int i;
        public int j;
        public int k;
        public int l;

        public c(InputStream inputStream, int i, a aVar) {
            super(null);
            this.l = Integer.MAX_VALUE;
            Charset charset = jj6.a;
            this.e = inputStream;
            this.f = new byte[i];
            this.g = 0;
            this.i = 0;
            this.k = 0;
        }

        @Override // defpackage.ri6
        public long A() throws IOException {
            return J();
        }

        @Override // defpackage.ri6
        public boolean B(int i) throws IOException {
            int iY;
            int i2 = i & 7;
            int i3 = 0;
            if (i2 == 0) {
                if (this.g - this.i < 10) {
                    while (i3 < 10) {
                        if (C() < 0) {
                            i3++;
                        }
                    }
                    throw kj6.e();
                }
                while (i3 < 10) {
                    byte[] bArr = this.f;
                    int i4 = this.i;
                    this.i = i4 + 1;
                    if (bArr[i4] < 0) {
                        i3++;
                    }
                }
                throw kj6.e();
                return true;
            }
            if (i2 == 1) {
                N(8);
                return true;
            }
            if (i2 == 2) {
                N(I());
                return true;
            }
            if (i2 != 3) {
                if (i2 == 4) {
                    return false;
                }
                if (i2 != 5) {
                    throw kj6.d();
                }
                N(4);
                return true;
            }
            do {
                iY = y();
                if (iY == 0) {
                    break;
                }
            } while (B(iY));
            a(((i >>> 3) << 3) | 4);
            return true;
        }

        public byte C() throws IOException {
            if (this.i == this.g) {
                M(1);
            }
            byte[] bArr = this.f;
            int i = this.i;
            this.i = i + 1;
            return bArr[i];
        }

        public final byte[] D(int i, boolean z) throws IOException {
            byte[] bArrE = E(i);
            if (bArrE != null) {
                return z ? (byte[]) bArrE.clone() : bArrE;
            }
            int i2 = this.i;
            int i3 = this.g;
            int length = i3 - i2;
            this.k += i3;
            this.i = 0;
            this.g = 0;
            List<byte[]> listF = F(i - length);
            byte[] bArr = new byte[i];
            System.arraycopy(this.f, i2, bArr, 0, length);
            Iterator it = ((ArrayList) listF).iterator();
            while (it.hasNext()) {
                byte[] bArr2 = (byte[]) it.next();
                System.arraycopy(bArr2, 0, bArr, length, bArr2.length);
                length += bArr2.length;
            }
            return bArr;
        }

        public final byte[] E(int i) throws IOException {
            if (i == 0) {
                return jj6.b;
            }
            if (i < 0) {
                throw kj6.f();
            }
            int i2 = this.k;
            int i3 = this.i;
            int i4 = i2 + i3 + i;
            if (i4 - this.c > 0) {
                throw new kj6("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
            }
            int i5 = this.l;
            if (i4 > i5) {
                N((i5 - i2) - i3);
                throw kj6.h();
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
                    throw kj6.h();
                }
                this.k += i8;
                i6 += i8;
            }
            return bArr;
        }

        public final List<byte[]> F(int i) throws IOException {
            ArrayList arrayList = new ArrayList();
            while (i > 0) {
                int iMin = Math.min(i, RecyclerView.a0.FLAG_APPEARED_IN_PRE_LAYOUT);
                byte[] bArr = new byte[iMin];
                int i2 = 0;
                while (i2 < iMin) {
                    int i3 = this.e.read(bArr, i2, iMin - i2);
                    if (i3 == -1) {
                        throw kj6.h();
                    }
                    this.k += i3;
                    i2 += i3;
                }
                i -= iMin;
                arrayList.add(bArr);
            }
            return arrayList;
        }

        public int G() throws IOException {
            int i = this.i;
            if (this.g - i < 4) {
                M(4);
                i = this.i;
            }
            byte[] bArr = this.f;
            this.i = i + 4;
            return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        }

        public long H() throws IOException {
            int i = this.i;
            if (this.g - i < 8) {
                M(8);
                i = this.i;
            }
            byte[] bArr = this.f;
            this.i = i + 8;
            return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x0068, code lost:
        
            if (r2[r3] < 0) goto L34;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int I() throws java.io.IOException {
            /*
                r5 = this;
                int r0 = r5.i
                int r1 = r5.g
                if (r1 != r0) goto L7
                goto L6a
            L7:
                byte[] r2 = r5.f
                int r3 = r0 + 1
                r0 = r2[r0]
                if (r0 < 0) goto L12
                r5.i = r3
                return r0
            L12:
                int r1 = r1 - r3
                r4 = 9
                if (r1 >= r4) goto L18
                goto L6a
            L18:
                int r1 = r3 + 1
                r3 = r2[r3]
                int r3 = r3 << 7
                r0 = r0 ^ r3
                if (r0 >= 0) goto L24
                r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
                goto L70
            L24:
                int r3 = r1 + 1
                r1 = r2[r1]
                int r1 = r1 << 14
                r0 = r0 ^ r1
                if (r0 < 0) goto L31
                r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
            L2f:
                r1 = r3
                goto L70
            L31:
                int r1 = r3 + 1
                r3 = r2[r3]
                int r3 = r3 << 21
                r0 = r0 ^ r3
                if (r0 >= 0) goto L3f
                r2 = -2080896(0xffffffffffe03f80, float:NaN)
                r0 = r0 ^ r2
                goto L70
            L3f:
                int r3 = r1 + 1
                r1 = r2[r1]
                int r4 = r1 << 28
                r0 = r0 ^ r4
                r4 = 266354560(0xfe03f80, float:2.2112565E-29)
                r0 = r0 ^ r4
                if (r1 >= 0) goto L2f
                int r1 = r3 + 1
                r3 = r2[r3]
                if (r3 >= 0) goto L70
                int r3 = r1 + 1
                r1 = r2[r1]
                if (r1 >= 0) goto L2f
                int r1 = r3 + 1
                r3 = r2[r3]
                if (r3 >= 0) goto L70
                int r3 = r1 + 1
                r1 = r2[r1]
                if (r1 >= 0) goto L2f
                int r1 = r3 + 1
                r2 = r2[r3]
                if (r2 >= 0) goto L70
            L6a:
                long r0 = r5.K()
                int r1 = (int) r0
                return r1
            L70:
                r5.i = r1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: ri6.c.I():int");
        }

        /* JADX WARN: Code restructure failed: missing block: B:39:0x00b4, code lost:
        
            if (r2[r0] < 0) goto L40;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long J() throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 192
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: ri6.c.J():long");
        }

        public long K() throws IOException {
            long j = 0;
            for (int i = 0; i < 64; i += 7) {
                j |= (r3 & Byte.MAX_VALUE) << i;
                if ((C() & 128) == 0) {
                    return j;
                }
            }
            throw kj6.e();
        }

        public final void L() {
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

        public final void M(int i) throws IOException {
            if (O(i)) {
                return;
            }
            if (i <= (this.c - this.k) - this.i) {
                throw kj6.h();
            }
            throw new kj6("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
        }

        public void N(int i) throws IOException {
            int i2 = this.g;
            int i3 = this.i;
            if (i <= i2 - i3 && i >= 0) {
                this.i = i3 + i;
                return;
            }
            if (i < 0) {
                throw kj6.f();
            }
            int i4 = this.k;
            int i5 = i4 + i3;
            int i6 = i5 + i;
            int i7 = this.l;
            if (i6 > i7) {
                N((i7 - i4) - i3);
                throw kj6.h();
            }
            this.k = i5;
            int i8 = i2 - i3;
            this.g = 0;
            this.i = 0;
            while (i8 < i) {
                try {
                    long j = i - i8;
                    long jSkip = this.e.skip(j);
                    if (jSkip < 0 || jSkip > j) {
                        throw new IllegalStateException(this.e.getClass() + "#skip returned invalid result: " + jSkip + "\nThe InputStream implementation is buggy.");
                    }
                    if (jSkip == 0) {
                        break;
                    } else {
                        i8 += (int) jSkip;
                    }
                } finally {
                    this.k += i8;
                    L();
                }
            }
            if (i8 >= i) {
                return;
            }
            int i9 = this.g;
            int i10 = i9 - this.i;
            this.i = i9;
            M(1);
            while (true) {
                int i11 = i - i10;
                int i12 = this.g;
                if (i11 <= i12) {
                    this.i = i11;
                    return;
                } else {
                    i10 += i12;
                    this.i = i12;
                    M(1);
                }
            }
        }

        public final boolean O(int i) throws IOException {
            int i2 = this.i;
            int i3 = i2 + i;
            int i4 = this.g;
            if (i3 <= i4) {
                throw new IllegalStateException(jo.h("refillBuffer() called when ", i, " bytes were already available in buffer"));
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
                throw new IllegalStateException(this.e.getClass() + "#read(byte[]) returned invalid result: " + i8 + "\nThe InputStream implementation is buggy.");
            }
            if (i8 <= 0) {
                return false;
            }
            this.g += i8;
            L();
            if (this.g >= i) {
                return true;
            }
            return O(i);
        }

        @Override // defpackage.ri6
        public void a(int i) throws kj6 {
            if (this.j != i) {
                throw kj6.a();
            }
        }

        @Override // defpackage.ri6
        public int d() {
            return this.k + this.i;
        }

        @Override // defpackage.ri6
        public boolean e() throws IOException {
            return this.i == this.g && !O(1);
        }

        @Override // defpackage.ri6
        public void h(int i) {
            this.l = i;
            L();
        }

        @Override // defpackage.ri6
        public int i(int i) throws kj6 {
            if (i < 0) {
                throw kj6.f();
            }
            int i2 = this.k + this.i + i;
            int i3 = this.l;
            if (i2 > i3) {
                throw kj6.h();
            }
            this.l = i2;
            L();
            return i3;
        }

        @Override // defpackage.ri6
        public boolean j() throws IOException {
            return J() != 0;
        }

        @Override // defpackage.ri6
        public qi6 k() throws IOException {
            int I = I();
            int i = this.g;
            int i2 = this.i;
            if (I <= i - i2 && I > 0) {
                qi6 qi6VarO = qi6.o(this.f, i2, I);
                this.i += I;
                return qi6VarO;
            }
            if (I == 0) {
                return qi6.f;
            }
            byte[] bArrE = E(I);
            if (bArrE != null) {
                qi6 qi6Var = qi6.f;
                return qi6.o(bArrE, 0, bArrE.length);
            }
            int i3 = this.i;
            int i4 = this.g;
            int length = i4 - i3;
            this.k += i4;
            this.i = 0;
            this.g = 0;
            List<byte[]> listF = F(I - length);
            byte[] bArr = new byte[I];
            System.arraycopy(this.f, i3, bArr, 0, length);
            Iterator it = ((ArrayList) listF).iterator();
            while (it.hasNext()) {
                byte[] bArr2 = (byte[]) it.next();
                System.arraycopy(bArr2, 0, bArr, length, bArr2.length);
                length += bArr2.length;
            }
            qi6 qi6Var2 = qi6.f;
            return new qi6.h(bArr);
        }

        @Override // defpackage.ri6
        public double l() throws IOException {
            return Double.longBitsToDouble(H());
        }

        @Override // defpackage.ri6
        public int m() throws IOException {
            return I();
        }

        @Override // defpackage.ri6
        public int n() throws IOException {
            return G();
        }

        @Override // defpackage.ri6
        public long o() throws IOException {
            return H();
        }

        @Override // defpackage.ri6
        public float p() throws IOException {
            return Float.intBitsToFloat(G());
        }

        @Override // defpackage.ri6
        public int q() throws IOException {
            return I();
        }

        @Override // defpackage.ri6
        public long r() throws IOException {
            return J();
        }

        @Override // defpackage.ri6
        public int s() throws IOException {
            return G();
        }

        @Override // defpackage.ri6
        public long t() throws IOException {
            return H();
        }

        @Override // defpackage.ri6
        public int u() throws IOException {
            return ri6.b(I());
        }

        @Override // defpackage.ri6
        public long v() throws IOException {
            return ri6.c(J());
        }

        @Override // defpackage.ri6
        public String w() throws IOException {
            int I = I();
            if (I > 0 && I <= this.g - this.i) {
                String str = new String(this.f, this.i, I, jj6.a);
                this.i += I;
                return str;
            }
            if (I == 0) {
                return "";
            }
            if (I > this.g) {
                return new String(D(I, false), jj6.a);
            }
            M(I);
            String str2 = new String(this.f, this.i, I, jj6.a);
            this.i += I;
            return str2;
        }

        @Override // defpackage.ri6
        public String x() throws IOException {
            byte[] bArrD;
            int I = I();
            int i = this.i;
            int i2 = this.g;
            if (I <= i2 - i && I > 0) {
                bArrD = this.f;
                this.i = i + I;
            } else {
                if (I == 0) {
                    return "";
                }
                if (I <= i2) {
                    M(I);
                    bArrD = this.f;
                    this.i = I + 0;
                } else {
                    bArrD = D(I, false);
                }
                i = 0;
            }
            return dl6.c(bArrD, i, I);
        }

        @Override // defpackage.ri6
        public int y() throws IOException {
            if (e()) {
                this.j = 0;
                return 0;
            }
            int I = I();
            this.j = I;
            if ((I >>> 3) != 0) {
                return I;
            }
            throw kj6.b();
        }

        @Override // defpackage.ri6
        public int z() throws IOException {
            return I();
        }
    }

    public ri6(a aVar) {
    }

    public static int b(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    public static long c(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    public static ri6 f(InputStream inputStream) {
        if (inputStream != null) {
            return new c(inputStream, RecyclerView.a0.FLAG_APPEARED_IN_PRE_LAYOUT, null);
        }
        byte[] bArr = jj6.b;
        return g(bArr, 0, bArr.length, false);
    }

    public static ri6 g(byte[] bArr, int i, int i2, boolean z) {
        b bVar = new b(bArr, i, i2, z, null);
        try {
            bVar.i(i2);
            return bVar;
        } catch (kj6 e) {
            throw new IllegalArgumentException(e);
        }
    }

    public abstract long A() throws IOException;

    public abstract boolean B(int i) throws IOException;

    public abstract void a(int i) throws kj6;

    public abstract int d();

    public abstract boolean e() throws IOException;

    public abstract void h(int i);

    public abstract int i(int i) throws kj6;

    public abstract boolean j() throws IOException;

    public abstract qi6 k() throws IOException;

    public abstract double l() throws IOException;

    public abstract int m() throws IOException;

    public abstract int n() throws IOException;

    public abstract long o() throws IOException;

    public abstract float p() throws IOException;

    public abstract int q() throws IOException;

    public abstract long r() throws IOException;

    public abstract int s() throws IOException;

    public abstract long t() throws IOException;

    public abstract int u() throws IOException;

    public abstract long v() throws IOException;

    public abstract String w() throws IOException;

    public abstract String x() throws IOException;

    public abstract int y() throws IOException;

    public abstract int z() throws IOException;
}
