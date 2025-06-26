package defpackage;

import defpackage.dl6;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.codec.binary.Base64;

/* loaded from: classes.dex */
public abstract class ti6 extends pi6 {
    public static final Logger b = Logger.getLogger(ti6.class.getName());
    public static final boolean c = cl6.g;
    public ui6 a;

    public static abstract class b extends ti6 {
        public final byte[] d;
        public final int e;
        public int f;
        public int g;

        public b(int i) {
            super(null);
            if (i < 0) {
                throw new IllegalArgumentException("bufferSize must be >= 0");
            }
            int iMax = Math.max(i, 20);
            this.d = new byte[iMax];
            this.e = iMax;
        }

        @Override // defpackage.ti6
        public final int G() {
            throw new UnsupportedOperationException("spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array or ByteBuffer.");
        }

        public final void d0(int i) {
            byte[] bArr = this.d;
            int i2 = this.f;
            int i3 = i2 + 1;
            this.f = i3;
            bArr[i2] = (byte) (i & Base64.BASELENGTH);
            int i4 = i3 + 1;
            this.f = i4;
            bArr[i3] = (byte) ((i >> 8) & Base64.BASELENGTH);
            int i5 = i4 + 1;
            this.f = i5;
            bArr[i4] = (byte) ((i >> 16) & Base64.BASELENGTH);
            this.f = i5 + 1;
            bArr[i5] = (byte) ((i >> 24) & Base64.BASELENGTH);
            this.g += 4;
        }

        public final void e0(long j) {
            byte[] bArr = this.d;
            int i = this.f;
            int i2 = i + 1;
            this.f = i2;
            bArr[i] = (byte) (j & 255);
            int i3 = i2 + 1;
            this.f = i3;
            bArr[i2] = (byte) ((j >> 8) & 255);
            int i4 = i3 + 1;
            this.f = i4;
            bArr[i3] = (byte) ((j >> 16) & 255);
            int i5 = i4 + 1;
            this.f = i5;
            bArr[i4] = (byte) (255 & (j >> 24));
            int i6 = i5 + 1;
            this.f = i6;
            bArr[i5] = (byte) (((int) (j >> 32)) & Base64.BASELENGTH);
            int i7 = i6 + 1;
            this.f = i7;
            bArr[i6] = (byte) (((int) (j >> 40)) & Base64.BASELENGTH);
            int i8 = i7 + 1;
            this.f = i8;
            bArr[i7] = (byte) (((int) (j >> 48)) & Base64.BASELENGTH);
            this.f = i8 + 1;
            bArr[i8] = (byte) (((int) (j >> 56)) & Base64.BASELENGTH);
            this.g += 8;
        }

        public final void f0(int i) {
            if (!ti6.c) {
                while ((i & Base64.SIGN) != 0) {
                    byte[] bArr = this.d;
                    int i2 = this.f;
                    this.f = i2 + 1;
                    bArr[i2] = (byte) ((i & 127) | 128);
                    this.g++;
                    i >>>= 7;
                }
                byte[] bArr2 = this.d;
                int i3 = this.f;
                this.f = i3 + 1;
                bArr2[i3] = (byte) i;
                this.g++;
                return;
            }
            long j = this.f;
            while ((i & Base64.SIGN) != 0) {
                byte[] bArr3 = this.d;
                int i4 = this.f;
                this.f = i4 + 1;
                cl6.q(bArr3, i4, (byte) ((i & 127) | 128));
                i >>>= 7;
            }
            byte[] bArr4 = this.d;
            int i5 = this.f;
            this.f = i5 + 1;
            cl6.q(bArr4, i5, (byte) i);
            this.g += (int) (this.f - j);
        }

        public final void g0(long j) {
            if (!ti6.c) {
                while ((j & (-128)) != 0) {
                    byte[] bArr = this.d;
                    int i = this.f;
                    this.f = i + 1;
                    bArr[i] = (byte) ((((int) j) & 127) | 128);
                    this.g++;
                    j >>>= 7;
                }
                byte[] bArr2 = this.d;
                int i2 = this.f;
                this.f = i2 + 1;
                bArr2[i2] = (byte) j;
                this.g++;
                return;
            }
            long j2 = this.f;
            while ((j & (-128)) != 0) {
                byte[] bArr3 = this.d;
                int i3 = this.f;
                this.f = i3 + 1;
                cl6.q(bArr3, i3, (byte) ((((int) j) & 127) | 128));
                j >>>= 7;
            }
            byte[] bArr4 = this.d;
            int i4 = this.f;
            this.f = i4 + 1;
            cl6.q(bArr4, i4, (byte) j);
            this.g += (int) (this.f - j2);
        }
    }

    public static class c extends ti6 {
        public final byte[] d;
        public final int e;
        public int f;

        public c(byte[] bArr, int i, int i2) {
            super(null);
            Objects.requireNonNull(bArr, "buffer");
            int i3 = i + i2;
            if ((i | i2 | (bArr.length - i3)) < 0) {
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
            }
            this.d = bArr;
            this.f = i;
            this.e = i3;
        }

        @Override // defpackage.ti6
        public final int G() {
            return this.e - this.f;
        }

        @Override // defpackage.ti6
        public final void H(byte b) throws IOException {
            try {
                byte[] bArr = this.d;
                int i = this.f;
                this.f = i + 1;
                bArr[i] = b;
            } catch (IndexOutOfBoundsException e) {
                throw new d(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(this.e), 1), e);
            }
        }

        @Override // defpackage.ti6
        public final void I(int i, boolean z) throws IOException {
            a0((i << 3) | 0);
            H(z ? (byte) 1 : (byte) 0);
        }

        @Override // defpackage.ti6
        public final void J(byte[] bArr, int i, int i2) throws IOException {
            a0(i2);
            d0(bArr, i, i2);
        }

        @Override // defpackage.ti6
        public final void K(int i, qi6 qi6Var) throws IOException {
            a0((i << 3) | 2);
            L(qi6Var);
        }

        @Override // defpackage.ti6
        public final void L(qi6 qi6Var) throws IOException {
            a0(qi6Var.size());
            qi6Var.K(this);
        }

        @Override // defpackage.ti6
        public final void M(int i, int i2) throws IOException {
            a0((i << 3) | 5);
            N(i2);
        }

        @Override // defpackage.ti6
        public final void N(int i) throws IOException {
            try {
                byte[] bArr = this.d;
                int i2 = this.f;
                int i3 = i2 + 1;
                this.f = i3;
                bArr[i2] = (byte) (i & Base64.BASELENGTH);
                int i4 = i3 + 1;
                this.f = i4;
                bArr[i3] = (byte) ((i >> 8) & Base64.BASELENGTH);
                int i5 = i4 + 1;
                this.f = i5;
                bArr[i4] = (byte) ((i >> 16) & Base64.BASELENGTH);
                this.f = i5 + 1;
                bArr[i5] = (byte) ((i >> 24) & Base64.BASELENGTH);
            } catch (IndexOutOfBoundsException e) {
                throw new d(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(this.e), 1), e);
            }
        }

        @Override // defpackage.ti6
        public final void O(int i, long j) throws IOException {
            a0((i << 3) | 1);
            P(j);
        }

        @Override // defpackage.ti6
        public final void P(long j) throws IOException {
            try {
                byte[] bArr = this.d;
                int i = this.f;
                int i2 = i + 1;
                this.f = i2;
                bArr[i] = (byte) (((int) j) & Base64.BASELENGTH);
                int i3 = i2 + 1;
                this.f = i3;
                bArr[i2] = (byte) (((int) (j >> 8)) & Base64.BASELENGTH);
                int i4 = i3 + 1;
                this.f = i4;
                bArr[i3] = (byte) (((int) (j >> 16)) & Base64.BASELENGTH);
                int i5 = i4 + 1;
                this.f = i5;
                bArr[i4] = (byte) (((int) (j >> 24)) & Base64.BASELENGTH);
                int i6 = i5 + 1;
                this.f = i6;
                bArr[i5] = (byte) (((int) (j >> 32)) & Base64.BASELENGTH);
                int i7 = i6 + 1;
                this.f = i7;
                bArr[i6] = (byte) (((int) (j >> 40)) & Base64.BASELENGTH);
                int i8 = i7 + 1;
                this.f = i8;
                bArr[i7] = (byte) (((int) (j >> 48)) & Base64.BASELENGTH);
                this.f = i8 + 1;
                bArr[i8] = (byte) (((int) (j >> 56)) & Base64.BASELENGTH);
            } catch (IndexOutOfBoundsException e) {
                throw new d(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(this.e), 1), e);
            }
        }

        @Override // defpackage.ti6
        public final void Q(int i, int i2) throws IOException {
            a0((i << 3) | 0);
            if (i2 >= 0) {
                a0(i2);
            } else {
                c0(i2);
            }
        }

        @Override // defpackage.ti6
        public final void R(int i) throws IOException {
            if (i >= 0) {
                a0(i);
            } else {
                c0(i);
            }
        }

        @Override // defpackage.ti6
        public final void S(int i, ak6 ak6Var, qk6 qk6Var) throws IOException {
            a0((i << 3) | 2);
            a0(((ii6) ak6Var).m(qk6Var));
            qk6Var.e(ak6Var, this.a);
        }

        @Override // defpackage.ti6
        public final void T(ak6 ak6Var) throws IOException {
            a0(ak6Var.h());
            ak6Var.f(this);
        }

        @Override // defpackage.ti6
        public final void U(int i, ak6 ak6Var) throws IOException {
            Y(1, 3);
            Z(2, i);
            a0(26);
            a0(ak6Var.h());
            ak6Var.f(this);
            Y(1, 4);
        }

        @Override // defpackage.ti6
        public final void V(int i, qi6 qi6Var) throws IOException {
            Y(1, 3);
            Z(2, i);
            K(3, qi6Var);
            Y(1, 4);
        }

        @Override // defpackage.ti6
        public final void W(int i, String str) throws IOException {
            a0((i << 3) | 2);
            X(str);
        }

        @Override // defpackage.ti6
        public final void X(String str) throws IOException {
            int i = this.f;
            try {
                int iA = ti6.A(str.length() * 3);
                int iA2 = ti6.A(str.length());
                if (iA2 == iA) {
                    int i2 = i + iA2;
                    this.f = i2;
                    int iD = dl6.d(str, this.d, i2, G());
                    this.f = i;
                    a0((iD - i) - iA2);
                    this.f = iD;
                } else {
                    a0(dl6.e(str));
                    this.f = dl6.d(str, this.d, this.f, G());
                }
            } catch (dl6.c e) {
                this.f = i;
                F(str, e);
            } catch (IndexOutOfBoundsException e2) {
                throw new d(e2);
            }
        }

        @Override // defpackage.ti6
        public final void Y(int i, int i2) throws IOException {
            a0((i << 3) | i2);
        }

        @Override // defpackage.ti6
        public final void Z(int i, int i2) throws IOException {
            a0((i << 3) | 0);
            a0(i2);
        }

        @Override // defpackage.pi6
        public final void a(byte[] bArr, int i, int i2) throws IOException {
            d0(bArr, i, i2);
        }

        @Override // defpackage.ti6
        public final void a0(int i) throws IOException {
            if (!ti6.c || li6.a() || G() < 5) {
                while ((i & Base64.SIGN) != 0) {
                    try {
                        byte[] bArr = this.d;
                        int i2 = this.f;
                        this.f = i2 + 1;
                        bArr[i2] = (byte) ((i & 127) | 128);
                        i >>>= 7;
                    } catch (IndexOutOfBoundsException e) {
                        throw new d(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(this.e), 1), e);
                    }
                }
                byte[] bArr2 = this.d;
                int i3 = this.f;
                this.f = i3 + 1;
                bArr2[i3] = (byte) i;
                return;
            }
            if ((i & Base64.SIGN) == 0) {
                byte[] bArr3 = this.d;
                int i4 = this.f;
                this.f = i4 + 1;
                cl6.q(bArr3, i4, (byte) i);
                return;
            }
            byte[] bArr4 = this.d;
            int i5 = this.f;
            this.f = i5 + 1;
            cl6.q(bArr4, i5, (byte) (i | 128));
            int i6 = i >>> 7;
            if ((i6 & Base64.SIGN) == 0) {
                byte[] bArr5 = this.d;
                int i7 = this.f;
                this.f = i7 + 1;
                cl6.q(bArr5, i7, (byte) i6);
                return;
            }
            byte[] bArr6 = this.d;
            int i8 = this.f;
            this.f = i8 + 1;
            cl6.q(bArr6, i8, (byte) (i6 | 128));
            int i9 = i6 >>> 7;
            if ((i9 & Base64.SIGN) == 0) {
                byte[] bArr7 = this.d;
                int i10 = this.f;
                this.f = i10 + 1;
                cl6.q(bArr7, i10, (byte) i9);
                return;
            }
            byte[] bArr8 = this.d;
            int i11 = this.f;
            this.f = i11 + 1;
            cl6.q(bArr8, i11, (byte) (i9 | 128));
            int i12 = i9 >>> 7;
            if ((i12 & Base64.SIGN) == 0) {
                byte[] bArr9 = this.d;
                int i13 = this.f;
                this.f = i13 + 1;
                cl6.q(bArr9, i13, (byte) i12);
                return;
            }
            byte[] bArr10 = this.d;
            int i14 = this.f;
            this.f = i14 + 1;
            cl6.q(bArr10, i14, (byte) (i12 | 128));
            byte[] bArr11 = this.d;
            int i15 = this.f;
            this.f = i15 + 1;
            cl6.q(bArr11, i15, (byte) (i12 >>> 7));
        }

        @Override // defpackage.ti6
        public final void b0(int i, long j) throws IOException {
            a0((i << 3) | 0);
            c0(j);
        }

        @Override // defpackage.ti6
        public final void c0(long j) throws IOException {
            if (ti6.c && G() >= 10) {
                while ((j & (-128)) != 0) {
                    byte[] bArr = this.d;
                    int i = this.f;
                    this.f = i + 1;
                    cl6.q(bArr, i, (byte) ((((int) j) & 127) | 128));
                    j >>>= 7;
                }
                byte[] bArr2 = this.d;
                int i2 = this.f;
                this.f = i2 + 1;
                cl6.q(bArr2, i2, (byte) j);
                return;
            }
            while ((j & (-128)) != 0) {
                try {
                    byte[] bArr3 = this.d;
                    int i3 = this.f;
                    this.f = i3 + 1;
                    bArr3[i3] = (byte) ((((int) j) & 127) | 128);
                    j >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new d(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(this.e), 1), e);
                }
            }
            byte[] bArr4 = this.d;
            int i4 = this.f;
            this.f = i4 + 1;
            bArr4[i4] = (byte) j;
        }

        public final void d0(byte[] bArr, int i, int i2) throws IOException {
            try {
                System.arraycopy(bArr, i, this.d, this.f, i2);
                this.f += i2;
            } catch (IndexOutOfBoundsException e) {
                throw new d(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(this.e), Integer.valueOf(i2)), e);
            }
        }
    }

    public static class d extends IOException {
        public d(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }

        public d(String str, Throwable th) {
            super(jo.n("CodedOutputStream was writing to a flat byte array and ran out of space.: ", str), th);
        }
    }

    public static final class e extends b {
        public final OutputStream h;

        public e(OutputStream outputStream, int i) {
            super(i);
            Objects.requireNonNull(outputStream, "out");
            this.h = outputStream;
        }

        @Override // defpackage.ti6
        public void H(byte b) throws IOException {
            if (this.f == this.e) {
                h0();
            }
            byte[] bArr = this.d;
            int i = this.f;
            this.f = i + 1;
            bArr[i] = b;
            this.g++;
        }

        @Override // defpackage.ti6
        public void I(int i, boolean z) throws IOException {
            i0(11);
            f0((i << 3) | 0);
            byte b = z ? (byte) 1 : (byte) 0;
            byte[] bArr = this.d;
            int i2 = this.f;
            this.f = i2 + 1;
            bArr[i2] = b;
            this.g++;
        }

        @Override // defpackage.ti6
        public void J(byte[] bArr, int i, int i2) throws IOException {
            i0(5);
            f0(i2);
            j0(bArr, i, i2);
        }

        @Override // defpackage.ti6
        public void K(int i, qi6 qi6Var) throws IOException {
            a0((i << 3) | 2);
            L(qi6Var);
        }

        @Override // defpackage.ti6
        public void L(qi6 qi6Var) throws IOException {
            a0(qi6Var.size());
            qi6Var.K(this);
        }

        @Override // defpackage.ti6
        public void M(int i, int i2) throws IOException {
            i0(14);
            f0((i << 3) | 5);
            d0(i2);
        }

        @Override // defpackage.ti6
        public void N(int i) throws IOException {
            i0(4);
            d0(i);
        }

        @Override // defpackage.ti6
        public void O(int i, long j) throws IOException {
            i0(18);
            f0((i << 3) | 1);
            e0(j);
        }

        @Override // defpackage.ti6
        public void P(long j) throws IOException {
            i0(8);
            e0(j);
        }

        @Override // defpackage.ti6
        public void Q(int i, int i2) throws IOException {
            i0(20);
            f0((i << 3) | 0);
            if (i2 >= 0) {
                f0(i2);
            } else {
                g0(i2);
            }
        }

        @Override // defpackage.ti6
        public void R(int i) throws IOException {
            if (i < 0) {
                c0(i);
            } else {
                i0(5);
                f0(i);
            }
        }

        @Override // defpackage.ti6
        public void S(int i, ak6 ak6Var, qk6 qk6Var) throws IOException {
            a0((i << 3) | 2);
            a0(((ii6) ak6Var).m(qk6Var));
            qk6Var.e(ak6Var, this.a);
        }

        @Override // defpackage.ti6
        public void T(ak6 ak6Var) throws IOException {
            a0(ak6Var.h());
            ak6Var.f(this);
        }

        @Override // defpackage.ti6
        public void U(int i, ak6 ak6Var) throws IOException {
            Y(1, 3);
            Z(2, i);
            a0(26);
            a0(ak6Var.h());
            ak6Var.f(this);
            Y(1, 4);
        }

        @Override // defpackage.ti6
        public void V(int i, qi6 qi6Var) throws IOException {
            Y(1, 3);
            Z(2, i);
            K(3, qi6Var);
            Y(1, 4);
        }

        @Override // defpackage.ti6
        public void W(int i, String str) throws IOException {
            a0((i << 3) | 2);
            X(str);
        }

        @Override // defpackage.ti6
        public void X(String str) throws IOException {
            int iE;
            try {
                int length = str.length() * 3;
                int iA = ti6.A(length);
                int i = iA + length;
                int i2 = this.e;
                if (i > i2) {
                    byte[] bArr = new byte[length];
                    int iD = dl6.d(str, bArr, 0, length);
                    a0(iD);
                    j0(bArr, 0, iD);
                    return;
                }
                if (i > i2 - this.f) {
                    h0();
                }
                int iA2 = ti6.A(str.length());
                int i3 = this.f;
                try {
                    if (iA2 == iA) {
                        int i4 = i3 + iA2;
                        this.f = i4;
                        int iD2 = dl6.d(str, this.d, i4, this.e - i4);
                        this.f = i3;
                        iE = (iD2 - i3) - iA2;
                        f0(iE);
                        this.f = iD2;
                    } else {
                        iE = dl6.e(str);
                        f0(iE);
                        this.f = dl6.d(str, this.d, this.f, iE);
                    }
                    this.g += iE;
                } catch (dl6.c e) {
                    this.g -= this.f - i3;
                    this.f = i3;
                    throw e;
                } catch (ArrayIndexOutOfBoundsException e2) {
                    throw new d(e2);
                }
            } catch (dl6.c e3) {
                F(str, e3);
            }
        }

        @Override // defpackage.ti6
        public void Y(int i, int i2) throws IOException {
            a0((i << 3) | i2);
        }

        @Override // defpackage.ti6
        public void Z(int i, int i2) throws IOException {
            i0(20);
            f0((i << 3) | 0);
            f0(i2);
        }

        @Override // defpackage.pi6
        public void a(byte[] bArr, int i, int i2) throws IOException {
            j0(bArr, i, i2);
        }

        @Override // defpackage.ti6
        public void a0(int i) throws IOException {
            i0(5);
            f0(i);
        }

        @Override // defpackage.ti6
        public void b0(int i, long j) throws IOException {
            i0(20);
            f0((i << 3) | 0);
            g0(j);
        }

        @Override // defpackage.ti6
        public void c0(long j) throws IOException {
            i0(10);
            g0(j);
        }

        public final void h0() throws IOException {
            this.h.write(this.d, 0, this.f);
            this.f = 0;
        }

        public final void i0(int i) throws IOException {
            if (this.e - this.f < i) {
                h0();
            }
        }

        public void j0(byte[] bArr, int i, int i2) throws IOException {
            int i3 = this.e;
            int i4 = this.f;
            if (i3 - i4 >= i2) {
                System.arraycopy(bArr, i, this.d, i4, i2);
                this.f += i2;
                this.g += i2;
                return;
            }
            int i5 = i3 - i4;
            System.arraycopy(bArr, i, this.d, i4, i5);
            int i6 = i + i5;
            int i7 = i2 - i5;
            this.f = this.e;
            this.g += i5;
            h0();
            if (i7 <= this.e) {
                System.arraycopy(bArr, i6, this.d, 0, i7);
                this.f = i7;
            } else {
                this.h.write(bArr, i6, i7);
            }
            this.g += i7;
        }
    }

    public ti6() {
    }

    public static int A(int i) {
        if ((i & Base64.SIGN) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return (i & (-268435456)) == 0 ? 4 : 5;
    }

    public static int B(int i, long j) {
        return C(j) + y(i);
    }

    public static int C(long j) {
        int i;
        if (((-128) & j) == 0) {
            return 1;
        }
        if (j < 0) {
            return 10;
        }
        if (((-34359738368L) & j) != 0) {
            i = 6;
            j >>>= 28;
        } else {
            i = 2;
        }
        if (((-2097152) & j) != 0) {
            i += 2;
            j >>>= 14;
        }
        return (j & (-16384)) != 0 ? i + 1 : i;
    }

    public static int D(int i) {
        return (i >> 31) ^ (i << 1);
    }

    public static long E(long j) {
        return (j >> 63) ^ (j << 1);
    }

    public static int c(int i, boolean z) {
        return y(i) + 1;
    }

    public static int d(int i, qi6 qi6Var) {
        return y(i) + p(qi6Var.size());
    }

    public static int e(qi6 qi6Var) {
        return p(qi6Var.size());
    }

    public static int f(int i, double d2) {
        return y(i) + 8;
    }

    public static int g(int i, int i2) {
        return y(i) + m(i2);
    }

    public static int h(int i, int i2) {
        return y(i) + 4;
    }

    public static int i(int i, long j) {
        return y(i) + 8;
    }

    public static int j(int i, float f) {
        return y(i) + 4;
    }

    @Deprecated
    public static int k(int i, ak6 ak6Var, qk6 qk6Var) {
        return (y(i) * 2) + ((ii6) ak6Var).m(qk6Var);
    }

    public static int l(int i, int i2) {
        return m(i2) + y(i);
    }

    public static int m(int i) {
        if (i >= 0) {
            return A(i);
        }
        return 10;
    }

    public static int n(int i, long j) {
        return y(i) + C(j);
    }

    public static int o(nj6 nj6Var) {
        return p(nj6Var.b != null ? nj6Var.b.size() : nj6Var.a != null ? nj6Var.a.h() : 0);
    }

    public static int p(int i) {
        return A(i) + i;
    }

    public static int q(int i, int i2) {
        return y(i) + 4;
    }

    public static int r(int i, long j) {
        return y(i) + 8;
    }

    public static int s(int i, int i2) {
        return t(i2) + y(i);
    }

    public static int t(int i) {
        return A(D(i));
    }

    public static int u(int i, long j) {
        return v(j) + y(i);
    }

    public static int v(long j) {
        return C(E(j));
    }

    public static int w(int i, String str) {
        return x(str) + y(i);
    }

    public static int x(String str) {
        int length;
        try {
            length = dl6.e(str);
        } catch (dl6.c unused) {
            length = str.getBytes(jj6.a).length;
        }
        return p(length);
    }

    public static int y(int i) {
        return A((i << 3) | 0);
    }

    public static int z(int i, int i2) {
        return A(i2) + y(i);
    }

    public final void F(String str, dl6.c cVar) throws IOException {
        b.log(Level.WARNING, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) cVar);
        byte[] bytes = str.getBytes(jj6.a);
        try {
            a0(bytes.length);
            a(bytes, 0, bytes.length);
        } catch (IndexOutOfBoundsException e2) {
            throw new d(e2);
        } catch (d e3) {
            throw e3;
        }
    }

    public abstract int G();

    public abstract void H(byte b2) throws IOException;

    public abstract void I(int i, boolean z) throws IOException;

    public abstract void J(byte[] bArr, int i, int i2) throws IOException;

    public abstract void K(int i, qi6 qi6Var) throws IOException;

    public abstract void L(qi6 qi6Var) throws IOException;

    public abstract void M(int i, int i2) throws IOException;

    public abstract void N(int i) throws IOException;

    public abstract void O(int i, long j) throws IOException;

    public abstract void P(long j) throws IOException;

    public abstract void Q(int i, int i2) throws IOException;

    public abstract void R(int i) throws IOException;

    public abstract void S(int i, ak6 ak6Var, qk6 qk6Var) throws IOException;

    public abstract void T(ak6 ak6Var) throws IOException;

    public abstract void U(int i, ak6 ak6Var) throws IOException;

    public abstract void V(int i, qi6 qi6Var) throws IOException;

    public abstract void W(int i, String str) throws IOException;

    public abstract void X(String str) throws IOException;

    public abstract void Y(int i, int i2) throws IOException;

    public abstract void Z(int i, int i2) throws IOException;

    public abstract void a0(int i) throws IOException;

    public final void b() {
        if (G() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public abstract void b0(int i, long j) throws IOException;

    public abstract void c0(long j) throws IOException;

    public ti6(a aVar) {
    }
}
