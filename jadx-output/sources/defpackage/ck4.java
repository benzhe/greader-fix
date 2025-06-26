package defpackage;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.codec.binary.Base64;

/* loaded from: classes.dex */
public abstract class ck4 extends sj4 {
    public static final Logger b = Logger.getLogger(ck4.class.getName());
    public static final boolean c = in4.h;
    public ek4 a;

    public static class a extends ck4 {
        public final byte[] d;
        public final int e;
        public int f;

        public a(byte[] bArr, int i) {
            super(null);
            if ((i | 0 | (bArr.length - i)) < 0) {
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), 0, Integer.valueOf(i)));
            }
            this.d = bArr;
            this.f = 0;
            this.e = i;
        }

        @Override // defpackage.ck4
        public final void B(int i) throws IOException {
            try {
                byte[] bArr = this.d;
                int i2 = this.f;
                int i3 = i2 + 1;
                this.f = i3;
                bArr[i2] = (byte) i;
                int i4 = i3 + 1;
                this.f = i4;
                bArr[i3] = (byte) (i >> 8);
                int i5 = i4 + 1;
                this.f = i5;
                bArr[i4] = (byte) (i >> 16);
                this.f = i5 + 1;
                bArr[i5] = (byte) (i >>> 24);
            } catch (IndexOutOfBoundsException e) {
                throw new b(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(this.e), 1), e);
            }
        }

        @Override // defpackage.ck4
        public final void F(int i, int i2) throws IOException {
            q((i << 3) | 5);
            B(i2);
        }

        public final void V(vj4 vj4Var) throws IOException {
            q(vj4Var.h());
            vj4Var.o(this);
        }

        public final void W(String str) throws IOException {
            int i = this.f;
            try {
                int iK = ck4.K(str.length() * 3);
                int iK2 = ck4.K(str.length());
                if (iK2 != iK) {
                    q(kn4.a(str));
                    this.f = kn4.a.b(str, this.d, this.f, a());
                    return;
                }
                int i2 = i + iK2;
                this.f = i2;
                int iB = kn4.a.b(str, this.d, i2, a());
                this.f = i;
                q((iB - i) - iK2);
                this.f = iB;
            } catch (IndexOutOfBoundsException e) {
                throw new b(e);
            } catch (ln4 e2) {
                this.f = i;
                ck4.b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) e2);
                byte[] bytes = str.getBytes(rk4.a);
                try {
                    q(bytes.length);
                    X(bytes, 0, bytes.length);
                } catch (b e3) {
                    throw e3;
                } catch (IndexOutOfBoundsException e4) {
                    throw new b(e4);
                }
            }
        }

        public final void X(byte[] bArr, int i, int i2) throws IOException {
            try {
                System.arraycopy(bArr, i, this.d, this.f, i2);
                this.f += i2;
            } catch (IndexOutOfBoundsException e) {
                throw new b(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(this.e), Integer.valueOf(i2)), e);
            }
        }

        @Override // defpackage.ck4
        public final int a() {
            return this.e - this.f;
        }

        @Override // defpackage.ck4
        public final void c(byte b) throws IOException {
            try {
                byte[] bArr = this.d;
                int i = this.f;
                this.f = i + 1;
                bArr[i] = b;
            } catch (IndexOutOfBoundsException e) {
                throw new b(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(this.e), 1), e);
            }
        }

        @Override // defpackage.ck4
        public final void d(int i) throws IOException {
            if (i >= 0) {
                q(i);
            } else {
                l(i);
            }
        }

        @Override // defpackage.ck4
        public final void e(int i, int i2) throws IOException {
            q((i << 3) | i2);
        }

        @Override // defpackage.ck4
        public final void f(int i, long j) throws IOException {
            q((i << 3) | 0);
            l(j);
        }

        @Override // defpackage.ck4
        public final void g(int i, vj4 vj4Var) throws IOException {
            q((i << 3) | 2);
            V(vj4Var);
        }

        @Override // defpackage.ck4
        public final void h(int i, am4 am4Var) throws IOException {
            e(1, 3);
            x(2, i);
            e(3, 2);
            q(am4Var.i());
            am4Var.b(this);
            e(1, 4);
        }

        @Override // defpackage.ck4
        public final void i(int i, am4 am4Var, om4 om4Var) throws IOException {
            q((i << 3) | 2);
            mj4 mj4Var = (mj4) am4Var;
            int iF = mj4Var.f();
            if (iF == -1) {
                iF = om4Var.f(mj4Var);
                mj4Var.c(iF);
            }
            q(iF);
            om4Var.g(am4Var, this.a);
        }

        @Override // defpackage.ck4
        public final void j(int i, String str) throws IOException {
            q((i << 3) | 2);
            W(str);
        }

        @Override // defpackage.ck4
        public final void k(int i, boolean z) throws IOException {
            q((i << 3) | 0);
            c(z ? (byte) 1 : (byte) 0);
        }

        @Override // defpackage.ck4
        public final void l(long j) throws IOException {
            if (ck4.c && a() >= 10) {
                while ((j & (-128)) != 0) {
                    byte[] bArr = this.d;
                    int i = this.f;
                    this.f = i + 1;
                    in4.f(bArr, i, (byte) ((((int) j) & 127) | 128));
                    j >>>= 7;
                }
                byte[] bArr2 = this.d;
                int i2 = this.f;
                this.f = i2 + 1;
                in4.f(bArr2, i2, (byte) j);
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
                    throw new b(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(this.e), 1), e);
                }
            }
            byte[] bArr4 = this.d;
            int i4 = this.f;
            this.f = i4 + 1;
            bArr4[i4] = (byte) j;
        }

        @Override // defpackage.ck4
        public final void q(int i) throws IOException {
            if (!ck4.c || tj4.a() || a() < 5) {
                while ((i & Base64.SIGN) != 0) {
                    try {
                        byte[] bArr = this.d;
                        int i2 = this.f;
                        this.f = i2 + 1;
                        bArr[i2] = (byte) ((i & 127) | 128);
                        i >>>= 7;
                    } catch (IndexOutOfBoundsException e) {
                        throw new b(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(this.e), 1), e);
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
                in4.f(bArr3, i4, (byte) i);
                return;
            }
            byte[] bArr4 = this.d;
            int i5 = this.f;
            this.f = i5 + 1;
            in4.f(bArr4, i5, (byte) (i | 128));
            int i6 = i >>> 7;
            if ((i6 & Base64.SIGN) == 0) {
                byte[] bArr5 = this.d;
                int i7 = this.f;
                this.f = i7 + 1;
                in4.f(bArr5, i7, (byte) i6);
                return;
            }
            byte[] bArr6 = this.d;
            int i8 = this.f;
            this.f = i8 + 1;
            in4.f(bArr6, i8, (byte) (i6 | 128));
            int i9 = i6 >>> 7;
            if ((i9 & Base64.SIGN) == 0) {
                byte[] bArr7 = this.d;
                int i10 = this.f;
                this.f = i10 + 1;
                in4.f(bArr7, i10, (byte) i9);
                return;
            }
            byte[] bArr8 = this.d;
            int i11 = this.f;
            this.f = i11 + 1;
            in4.f(bArr8, i11, (byte) (i9 | 128));
            int i12 = i9 >>> 7;
            if ((i12 & Base64.SIGN) == 0) {
                byte[] bArr9 = this.d;
                int i13 = this.f;
                this.f = i13 + 1;
                in4.f(bArr9, i13, (byte) i12);
                return;
            }
            byte[] bArr10 = this.d;
            int i14 = this.f;
            this.f = i14 + 1;
            in4.f(bArr10, i14, (byte) (i12 | 128));
            byte[] bArr11 = this.d;
            int i15 = this.f;
            this.f = i15 + 1;
            in4.f(bArr11, i15, (byte) (i12 >>> 7));
        }

        @Override // defpackage.ck4
        public final void r(int i, int i2) throws IOException {
            q((i << 3) | 0);
            if (i2 >= 0) {
                q(i2);
            } else {
                l(i2);
            }
        }

        @Override // defpackage.ck4
        public final void s(int i, vj4 vj4Var) throws IOException {
            e(1, 3);
            x(2, i);
            g(3, vj4Var);
            e(1, 4);
        }

        @Override // defpackage.ck4
        public final void x(int i, int i2) throws IOException {
            q((i << 3) | 0);
            q(i2);
        }

        @Override // defpackage.ck4
        public final void y(int i, long j) throws IOException {
            q((i << 3) | 1);
            z(j);
        }

        @Override // defpackage.ck4
        public final void z(long j) throws IOException {
            try {
                byte[] bArr = this.d;
                int i = this.f;
                int i2 = i + 1;
                this.f = i2;
                bArr[i] = (byte) j;
                int i3 = i2 + 1;
                this.f = i3;
                bArr[i2] = (byte) (j >> 8);
                int i4 = i3 + 1;
                this.f = i4;
                bArr[i3] = (byte) (j >> 16);
                int i5 = i4 + 1;
                this.f = i5;
                bArr[i4] = (byte) (j >> 24);
                int i6 = i5 + 1;
                this.f = i6;
                bArr[i5] = (byte) (j >> 32);
                int i7 = i6 + 1;
                this.f = i7;
                bArr[i6] = (byte) (j >> 40);
                int i8 = i7 + 1;
                this.f = i8;
                bArr[i7] = (byte) (j >> 48);
                this.f = i8 + 1;
                bArr[i8] = (byte) (j >> 56);
            } catch (IndexOutOfBoundsException e) {
                throw new b(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(this.e), 1), e);
            }
        }
    }

    public static class b extends IOException {
        public b(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public b(String str, Throwable th) {
            String strValueOf = String.valueOf(str);
            super(strValueOf.length() != 0 ? "CodedOutputStream was writing to a flat byte array and ran out of space.: ".concat(strValueOf) : new String("CodedOutputStream was writing to a flat byte array and ran out of space.: "), th);
        }
    }

    public ck4() {
    }

    public static int A(int i, long j) {
        return E(j) + K(i << 3);
    }

    public static int C(int i) {
        return K(i << 3);
    }

    public static int D(int i, long j) {
        return E(j) + K(i << 3);
    }

    public static int E(long j) {
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

    public static int G(int i) {
        if (i >= 0) {
            return K(i);
        }
        return 10;
    }

    public static int H(int i, int i2) {
        return G(i2) + K(i << 3);
    }

    public static int I(int i, long j) {
        return E(Q(j)) + K(i << 3);
    }

    public static int J(long j) {
        return E(Q(j));
    }

    public static int K(int i) {
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

    public static int L(int i, int i2) {
        return K(i2) + K(i << 3);
    }

    public static int M(int i) {
        return K(i << 3) + 8;
    }

    public static int N(int i) {
        return K(U(i));
    }

    public static int O(int i, int i2) {
        return K(U(i2)) + K(i << 3);
    }

    public static int P(int i) {
        return K(i << 3) + 8;
    }

    public static long Q(long j) {
        return (j >> 63) ^ (j << 1);
    }

    public static int R(int i) {
        return K(i << 3) + 4;
    }

    public static int S(int i) {
        return K(i << 3) + 4;
    }

    public static int T(int i, int i2) {
        return G(i2) + K(i << 3);
    }

    public static int U(int i) {
        return (i >> 31) ^ (i << 1);
    }

    public static int b(am4 am4Var, om4 om4Var) {
        mj4 mj4Var = (mj4) am4Var;
        int iF = mj4Var.f();
        if (iF == -1) {
            iF = om4Var.f(mj4Var);
            mj4Var.c(iF);
        }
        return K(iF) + iF;
    }

    public static int m(int i) {
        return K(i << 3) + 4;
    }

    public static int n(int i, String str) {
        return p(str) + K(i << 3);
    }

    public static int o(vj4 vj4Var) {
        int iH = vj4Var.h();
        return K(iH) + iH;
    }

    public static int p(String str) {
        int length;
        try {
            length = kn4.a(str);
        } catch (ln4 unused) {
            length = str.getBytes(rk4.a).length;
        }
        return K(length) + length;
    }

    public static int t(int i) {
        return K(i << 3) + 8;
    }

    public static int u(int i) {
        return K(i << 3) + 1;
    }

    public static int v(int i, vj4 vj4Var) {
        int iK = K(i << 3);
        int iH = vj4Var.h();
        return K(iH) + iH + iK;
    }

    @Deprecated
    public static int w(int i, am4 am4Var, om4 om4Var) {
        int iK = K(i << 3) << 1;
        mj4 mj4Var = (mj4) am4Var;
        int iF = mj4Var.f();
        if (iF == -1) {
            iF = om4Var.f(mj4Var);
            mj4Var.c(iF);
        }
        return iK + iF;
    }

    public abstract void B(int i) throws IOException;

    public abstract void F(int i, int i2) throws IOException;

    public abstract int a();

    public abstract void c(byte b2) throws IOException;

    public abstract void d(int i) throws IOException;

    public abstract void e(int i, int i2) throws IOException;

    public abstract void f(int i, long j) throws IOException;

    public abstract void g(int i, vj4 vj4Var) throws IOException;

    public abstract void h(int i, am4 am4Var) throws IOException;

    public abstract void i(int i, am4 am4Var, om4 om4Var) throws IOException;

    public abstract void j(int i, String str) throws IOException;

    public abstract void k(int i, boolean z) throws IOException;

    public abstract void l(long j) throws IOException;

    public abstract void q(int i) throws IOException;

    public abstract void r(int i, int i2) throws IOException;

    public abstract void s(int i, vj4 vj4Var) throws IOException;

    public abstract void x(int i, int i2) throws IOException;

    public abstract void y(int i, long j) throws IOException;

    public abstract void z(long j) throws IOException;

    public ck4(dk4 dk4Var) {
    }
}
