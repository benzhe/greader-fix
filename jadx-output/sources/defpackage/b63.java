package defpackage;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.codec.binary.Base64;

/* loaded from: classes.dex */
public abstract class b63 extends h53 {
    public static final Logger b = Logger.getLogger(b63.class.getName());
    public static final boolean c = r93.g;
    public d63 a;

    public static class a extends IOException {
        public a(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public a(String str, Throwable th) {
            String strValueOf = String.valueOf(str);
            super(strValueOf.length() != 0 ? "CodedOutputStream was writing to a flat byte array and ran out of space.: ".concat(strValueOf) : new String("CodedOutputStream was writing to a flat byte array and ran out of space.: "), th);
        }
    }

    public static class b extends b63 {
        public final byte[] d;
        public final int e;
        public int f;

        public b(byte[] bArr, int i) {
            super(null);
            if ((i | 0 | (bArr.length - i)) < 0) {
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), 0, Integer.valueOf(i)));
            }
            this.d = bArr;
            this.f = 0;
            this.e = i;
        }

        @Override // defpackage.b63
        public final void C(int i) throws IOException {
            if (i >= 0) {
                E(i);
            } else {
                x(i);
            }
        }

        @Override // defpackage.b63
        public final void D(int i, boolean z) throws IOException {
            E((i << 3) | 0);
            w(z ? (byte) 1 : (byte) 0);
        }

        @Override // defpackage.b63
        public final void E(int i) throws IOException {
            if (!b63.c || e53.a() || s() < 5) {
                while ((i & Base64.SIGN) != 0) {
                    try {
                        byte[] bArr = this.d;
                        int i2 = this.f;
                        this.f = i2 + 1;
                        bArr[i2] = (byte) ((i & 127) | 128);
                        i >>>= 7;
                    } catch (IndexOutOfBoundsException e) {
                        throw new a(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(this.e), 1), e);
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
                r93.f(bArr3, i4, (byte) i);
                return;
            }
            byte[] bArr4 = this.d;
            int i5 = this.f;
            this.f = i5 + 1;
            r93.f(bArr4, i5, (byte) (i | 128));
            int i6 = i >>> 7;
            if ((i6 & Base64.SIGN) == 0) {
                byte[] bArr5 = this.d;
                int i7 = this.f;
                this.f = i7 + 1;
                r93.f(bArr5, i7, (byte) i6);
                return;
            }
            byte[] bArr6 = this.d;
            int i8 = this.f;
            this.f = i8 + 1;
            r93.f(bArr6, i8, (byte) (i6 | 128));
            int i9 = i6 >>> 7;
            if ((i9 & Base64.SIGN) == 0) {
                byte[] bArr7 = this.d;
                int i10 = this.f;
                this.f = i10 + 1;
                r93.f(bArr7, i10, (byte) i9);
                return;
            }
            byte[] bArr8 = this.d;
            int i11 = this.f;
            this.f = i11 + 1;
            r93.f(bArr8, i11, (byte) (i9 | 128));
            int i12 = i9 >>> 7;
            if ((i12 & Base64.SIGN) == 0) {
                byte[] bArr9 = this.d;
                int i13 = this.f;
                this.f = i13 + 1;
                r93.f(bArr9, i13, (byte) i12);
                return;
            }
            byte[] bArr10 = this.d;
            int i14 = this.f;
            this.f = i14 + 1;
            r93.f(bArr10, i14, (byte) (i12 | 128));
            byte[] bArr11 = this.d;
            int i15 = this.f;
            this.f = i15 + 1;
            r93.f(bArr11, i15, (byte) (i12 >>> 7));
        }

        @Override // defpackage.b63
        public final void F(int i) throws IOException {
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
                throw new a(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(this.e), 1), e);
            }
        }

        @Override // defpackage.b63
        public final void M(int i, long j) throws IOException {
            E((i << 3) | 0);
            x(j);
        }

        @Override // defpackage.b63
        public final void N(int i, String str) throws IOException {
            E((i << 3) | 2);
            Y(str);
        }

        @Override // defpackage.b63
        public final void Q(int i, long j) throws IOException {
            E((i << 3) | 1);
            y(j);
        }

        public final void W(byte[] bArr, int i, int i2) throws IOException {
            try {
                System.arraycopy(bArr, i, this.d, this.f, i2);
                this.f += i2;
            } catch (IndexOutOfBoundsException e) {
                throw new a(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(this.e), Integer.valueOf(i2)), e);
            }
        }

        public final void X(k53 k53Var) throws IOException {
            E(k53Var.size());
            k53Var.l(this);
        }

        public final void Y(String str) throws IOException {
            int i = this.f;
            try {
                int I = b63.I(str.length() * 3);
                int I2 = b63.I(str.length());
                if (I2 != I) {
                    E(u93.b(str));
                    this.f = u93.a.b(str, this.d, this.f, s());
                    return;
                }
                int i2 = i + I2;
                this.f = i2;
                int iB = u93.a.b(str, this.d, i2, s());
                this.f = i;
                E((iB - i) - I2);
                this.f = iB;
            } catch (IndexOutOfBoundsException e) {
                throw new a(e);
            } catch (w93 e2) {
                this.f = i;
                b63.b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) e2);
                byte[] bytes = str.getBytes(u63.a);
                try {
                    E(bytes.length);
                    W(bytes, 0, bytes.length);
                } catch (a e3) {
                    throw e3;
                } catch (IndexOutOfBoundsException e4) {
                    throw new a(e4);
                }
            }
        }

        @Override // defpackage.h53
        public final void a(byte[] bArr, int i, int i2) throws IOException {
            W(bArr, i, i2);
        }

        @Override // defpackage.b63
        public final void b(int i, int i2) throws IOException {
            E((i << 3) | i2);
        }

        @Override // defpackage.b63
        public final void d(int i, k53 k53Var) throws IOException {
            E((i << 3) | 2);
            X(k53Var);
        }

        @Override // defpackage.b63
        public final void e(int i, e83 e83Var) throws IOException {
            b(1, 3);
            h(2, i);
            b(3, 2);
            E(e83Var.g());
            e83Var.h(this);
            b(1, 4);
        }

        @Override // defpackage.b63
        public final void f(int i, e83 e83Var, w83 w83Var) throws IOException {
            E((i << 3) | 2);
            b53 b53Var = (b53) e83Var;
            int i2 = b53Var.i();
            if (i2 == -1) {
                i2 = w83Var.k(b53Var);
                b53Var.j(i2);
            }
            E(i2);
            w83Var.f(e83Var, this.a);
        }

        @Override // defpackage.b63
        public final void g(int i, int i2) throws IOException {
            E((i << 3) | 0);
            if (i2 >= 0) {
                E(i2);
            } else {
                x(i2);
            }
        }

        @Override // defpackage.b63
        public final void h(int i, int i2) throws IOException {
            E((i << 3) | 0);
            E(i2);
        }

        @Override // defpackage.b63
        public final void i(int i, int i2) throws IOException {
            E((i << 3) | 5);
            F(i2);
        }

        @Override // defpackage.b63
        public final void r(int i, k53 k53Var) throws IOException {
            b(1, 3);
            h(2, i);
            d(3, k53Var);
            b(1, 4);
        }

        @Override // defpackage.b63
        public final int s() {
            return this.e - this.f;
        }

        @Override // defpackage.b63
        public final void w(byte b) throws IOException {
            try {
                byte[] bArr = this.d;
                int i = this.f;
                this.f = i + 1;
                bArr[i] = b;
            } catch (IndexOutOfBoundsException e) {
                throw new a(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(this.e), 1), e);
            }
        }

        @Override // defpackage.b63
        public final void x(long j) throws IOException {
            if (b63.c && s() >= 10) {
                while ((j & (-128)) != 0) {
                    byte[] bArr = this.d;
                    int i = this.f;
                    this.f = i + 1;
                    r93.f(bArr, i, (byte) ((((int) j) & 127) | 128));
                    j >>>= 7;
                }
                byte[] bArr2 = this.d;
                int i2 = this.f;
                this.f = i2 + 1;
                r93.f(bArr2, i2, (byte) j);
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
                    throw new a(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(this.e), 1), e);
                }
            }
            byte[] bArr4 = this.d;
            int i4 = this.f;
            this.f = i4 + 1;
            bArr4[i4] = (byte) j;
        }

        @Override // defpackage.b63
        public final void y(long j) throws IOException {
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
                throw new a(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(this.e), 1), e);
            }
        }
    }

    public b63() {
    }

    public static int A(long j) {
        return z(B(j));
    }

    public static long B(long j) {
        return (j >> 63) ^ (j << 1);
    }

    public static int G(int i) {
        return I(i << 3);
    }

    public static int H(int i) {
        if (i >= 0) {
            return I(i);
        }
        return 10;
    }

    public static int I(int i) {
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

    public static int J(int i) {
        return I(K(i));
    }

    public static int K(int i) {
        return (i >> 31) ^ (i << 1);
    }

    public static int L(int i) {
        return I(i << 3) + 1;
    }

    public static int O(String str) {
        int length;
        try {
            length = u93.b(str);
        } catch (w93 unused) {
            length = str.getBytes(u63.a).length;
        }
        return I(length) + length;
    }

    public static int P(int i, String str) {
        return O(str) + I(i << 3);
    }

    public static int R(int i, long j) {
        return z(j) + I(i << 3);
    }

    public static int S(int i, long j) {
        return z(j) + I(i << 3);
    }

    public static int T(int i, long j) {
        return z(B(j)) + I(i << 3);
    }

    public static int U(int i) {
        return I(i << 3) + 8;
    }

    public static int V(int i) {
        return I(i << 3) + 8;
    }

    public static int c(e83 e83Var, w83 w83Var) {
        b53 b53Var = (b53) e83Var;
        int i = b53Var.i();
        if (i == -1) {
            i = w83Var.k(b53Var);
            b53Var.j(i);
        }
        return I(i) + i;
    }

    public static int j(int i, int i2) {
        return H(i2) + I(i << 3);
    }

    public static int k(int i, int i2) {
        return I(i2) + I(i << 3);
    }

    public static int l(k53 k53Var) {
        int size = k53Var.size();
        return I(size) + size;
    }

    public static int m(int i, int i2) {
        return I(K(i2)) + I(i << 3);
    }

    public static int n(int i) {
        return I(i << 3) + 4;
    }

    public static int o(int i) {
        return I(i << 3) + 4;
    }

    public static int p(int i, int i2) {
        return H(i2) + I(i << 3);
    }

    public static int q(int i) {
        return I(i << 3) + 4;
    }

    public static int t(int i) {
        return I(i << 3) + 8;
    }

    public static int u(int i, k53 k53Var) {
        int I = I(i << 3);
        int size = k53Var.size();
        return I(size) + size + I;
    }

    @Deprecated
    public static int v(int i, e83 e83Var, w83 w83Var) {
        int I = I(i << 3) << 1;
        b53 b53Var = (b53) e83Var;
        int i2 = b53Var.i();
        if (i2 == -1) {
            i2 = w83Var.k(b53Var);
            b53Var.j(i2);
        }
        return I + i2;
    }

    public static int z(long j) {
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

    public abstract void C(int i) throws IOException;

    public abstract void D(int i, boolean z) throws IOException;

    public abstract void E(int i) throws IOException;

    public abstract void F(int i) throws IOException;

    public abstract void M(int i, long j) throws IOException;

    public abstract void N(int i, String str) throws IOException;

    public abstract void Q(int i, long j) throws IOException;

    public abstract void b(int i, int i2) throws IOException;

    public abstract void d(int i, k53 k53Var) throws IOException;

    public abstract void e(int i, e83 e83Var) throws IOException;

    public abstract void f(int i, e83 e83Var, w83 w83Var) throws IOException;

    public abstract void g(int i, int i2) throws IOException;

    public abstract void h(int i, int i2) throws IOException;

    public abstract void i(int i, int i2) throws IOException;

    public abstract void r(int i, k53 k53Var) throws IOException;

    public abstract int s();

    public abstract void w(byte b2) throws IOException;

    public abstract void x(long j) throws IOException;

    public abstract void y(long j) throws IOException;

    public b63(a63 a63Var) {
    }
}
