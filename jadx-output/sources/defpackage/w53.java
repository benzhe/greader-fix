package defpackage;

import java.io.IOException;

/* loaded from: classes.dex */
public final class w53 extends u53 {
    public final byte[] e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public int k;

    public w53(byte[] bArr, int i, int i2, boolean z, x53 x53Var) {
        super(null);
        this.k = Integer.MAX_VALUE;
        this.e = bArr;
        this.f = i2 + i;
        this.h = i;
        this.i = i;
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
            int r0 = r5.h
            int r1 = r5.f
            if (r1 == r0) goto L6b
            byte[] r2 = r5.e
            int r3 = r0 + 1
            r0 = r2[r0]
            if (r0 < 0) goto L11
            r5.h = r3
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
            r5.h = r1
            return r0
        L6b:
            long r0 = r5.B()
            int r1 = (int) r0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.w53.C():int");
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
        throw new UnsupportedOperationException("Method not decompiled: defpackage.w53.D():long");
    }

    public final int E() throws IOException {
        int i = this.h;
        if (this.f - i < 4) {
            throw e73.a();
        }
        byte[] bArr = this.e;
        this.h = i + 4;
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public final long F() throws IOException {
        int i = this.h;
        if (this.f - i < 8) {
            throw e73.a();
        }
        byte[] bArr = this.e;
        this.h = i + 8;
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    public final void G() {
        int i = this.f + this.g;
        this.f = i;
        int i2 = i - this.i;
        int i3 = this.k;
        if (i2 <= i3) {
            this.g = 0;
            return;
        }
        int i4 = i2 - i3;
        this.g = i4;
        this.f = i - i4;
    }

    public final byte H() throws IOException {
        int i = this.h;
        if (i == this.f) {
            throw e73.a();
        }
        byte[] bArr = this.e;
        this.h = i + 1;
        return bArr[i];
    }

    public final void I(int i) throws IOException {
        if (i >= 0) {
            int i2 = this.f;
            int i3 = this.h;
            if (i <= i2 - i3) {
                this.h = i3 + i;
                return;
            }
        }
        if (i >= 0) {
            throw e73.a();
        }
        throw e73.b();
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
        if (iC > 0 && iC <= this.f - this.h) {
            String str = new String(this.e, this.h, iC, u63.a);
            this.h += iC;
            return str;
        }
        if (iC == 0) {
            return "";
        }
        if (iC < 0) {
            throw e73.b();
        }
        throw e73.a();
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
        int iC = C();
        if (iC > 0) {
            int i = this.f;
            int i2 = this.h;
            if (iC <= i - i2) {
                String strE = u93.e(this.e, i2, iC);
                this.h += iC;
                return strE;
            }
        }
        if (iC == 0) {
            return "";
        }
        if (iC <= 0) {
            throw e73.b();
        }
        throw e73.a();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    @Override // defpackage.u53
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.k53 m() throws java.io.IOException {
        /*
            r3 = this;
            int r0 = r3.C()
            if (r0 <= 0) goto L19
            int r1 = r3.f
            int r2 = r3.h
            int r1 = r1 - r2
            if (r0 > r1) goto L19
            byte[] r1 = r3.e
            k53 r1 = defpackage.k53.M(r1, r2, r0)
            int r2 = r3.h
            int r2 = r2 + r0
            r3.h = r2
            return r1
        L19:
            if (r0 != 0) goto L1e
            k53 r0 = defpackage.k53.f
            return r0
        L1e:
            if (r0 <= 0) goto L31
            int r1 = r3.f
            int r2 = r3.h
            int r1 = r1 - r2
            if (r0 > r1) goto L31
            int r0 = r0 + r2
            r3.h = r0
            byte[] r1 = r3.e
            byte[] r0 = java.util.Arrays.copyOfRange(r1, r2, r0)
            goto L37
        L31:
            if (r0 > 0) goto L44
            if (r0 != 0) goto L3f
            byte[] r0 = defpackage.u63.b
        L37:
            k53 r1 = defpackage.k53.f
            t53 r1 = new t53
            r1.<init>(r0)
            return r1
        L3f:
            e73 r0 = defpackage.e73.b()
            throw r0
        L44:
            e73 r0 = defpackage.e73.a()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.w53.m():k53");
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
        return this.h == this.f;
    }

    @Override // defpackage.u53
    public final int u() {
        return this.h - this.i;
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
            if (this.f - this.h < 10) {
                while (i3 < 10) {
                    if (H() < 0) {
                        i3++;
                    }
                }
                throw e73.c();
            }
            while (i3 < 10) {
                byte[] bArr = this.e;
                int i4 = this.h;
                this.h = i4 + 1;
                if (bArr[i4] < 0) {
                    i3++;
                }
            }
            throw e73.c();
            return true;
        }
        if (i2 == 1) {
            I(8);
            return true;
        }
        if (i2 == 2) {
            I(C());
            return true;
        }
        if (i2 != 3) {
            if (i2 == 4) {
                return false;
            }
            if (i2 != 5) {
                throw e73.f();
            }
            I(4);
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
        int iU = u() + i;
        int i2 = this.k;
        if (iU > i2) {
            throw e73.a();
        }
        this.k = iU;
        G();
        return i2;
    }

    @Override // defpackage.u53
    public final void z(int i) {
        this.k = i;
        G();
    }
}
