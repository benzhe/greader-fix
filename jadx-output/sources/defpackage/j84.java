package defpackage;

import java.io.IOException;
import java.util.logging.Level;
import org.apache.commons.codec.binary.Base64;

/* loaded from: classes.dex */
public final class j84 extends l84 {
    public final byte[] d;
    public final int e;
    public int f;

    public j84(byte[] bArr, int i, int i2) {
        super(null);
        int length = bArr.length;
        if (((length - i2) | i2) < 0) {
            throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(length), 0, Integer.valueOf(i2)));
        }
        this.d = bArr;
        this.f = 0;
        this.e = i2;
    }

    public final void A(byte[] bArr, int i, int i2) throws IOException {
        try {
            System.arraycopy(bArr, 0, this.d, this.f, i2);
            this.f += i2;
        } catch (IndexOutOfBoundsException e) {
            throw new k84(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(this.e), Integer.valueOf(i2)), e);
        }
    }

    public final void B(byte[] bArr, int i, int i2) throws IOException {
        A(bArr, 0, i2);
    }

    @Override // defpackage.l84
    public final void f(int i, int i2) throws IOException {
        q((i << 3) | i2);
    }

    @Override // defpackage.l84
    public final void g(int i, int i2) throws IOException {
        q(i << 3);
        if (i2 >= 0) {
            q(i2);
        } else {
            s(i2);
        }
    }

    @Override // defpackage.l84
    public final void h(int i, int i2) throws IOException {
        q(i << 3);
        q(i2);
    }

    @Override // defpackage.l84
    public final void i(int i, int i2) throws IOException {
        q((i << 3) | 5);
        r(i2);
    }

    @Override // defpackage.l84
    public final void j(int i, long j) throws IOException {
        q(i << 3);
        s(j);
    }

    @Override // defpackage.l84
    public final void k(int i, long j) throws IOException {
        q((i << 3) | 1);
        t(j);
    }

    @Override // defpackage.l84
    public final void l(int i, boolean z) throws IOException {
        q(i << 3);
        o(z ? (byte) 1 : (byte) 0);
    }

    @Override // defpackage.l84
    public final void m(int i, String str) throws IOException {
        q((i << 3) | 2);
        int i2 = this.f;
        try {
            int iX = l84.x(str.length() * 3);
            int iX2 = l84.x(str.length());
            if (iX2 == iX) {
                int i3 = i2 + iX2;
                this.f = i3;
                int iC = qb4.a.c(str, this.d, i3, this.e - i3);
                this.f = i2;
                q((iC - i2) - iX2);
                this.f = iC;
            } else {
                q(qb4.b(str));
                byte[] bArr = this.d;
                int i4 = this.f;
                this.f = qb4.a.c(str, bArr, i4, this.e - i4);
            }
        } catch (IndexOutOfBoundsException e) {
            throw new k84(e);
        } catch (ob4 e2) {
            this.f = i2;
            l84.b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) e2);
            byte[] bytes = str.getBytes(j94.a);
            try {
                int length = bytes.length;
                q(length);
                B(bytes, 0, length);
            } catch (IndexOutOfBoundsException e3) {
                throw new k84(e3);
            } catch (k84 e4) {
                throw e4;
            }
        }
    }

    @Override // defpackage.l84
    public final void n(int i, g84 g84Var) throws IOException {
        q((i << 3) | 2);
        q(g84Var.j());
        g84Var.n(this);
    }

    @Override // defpackage.l84
    public final void o(byte b) throws IOException {
        try {
            byte[] bArr = this.d;
            int i = this.f;
            this.f = i + 1;
            bArr[i] = b;
        } catch (IndexOutOfBoundsException e) {
            throw new k84(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(this.e), 1), e);
        }
    }

    @Override // defpackage.l84
    public final void p(int i) throws IOException {
        if (i >= 0) {
            q(i);
        } else {
            s(i);
        }
    }

    @Override // defpackage.l84
    public final void q(int i) throws IOException {
        if (l84.c && !v74.a()) {
            int i2 = this.e;
            int i3 = this.f;
            if (i2 - i3 >= 5) {
                if ((i & Base64.SIGN) == 0) {
                    byte[] bArr = this.d;
                    this.f = i3 + 1;
                    lb4.s(bArr, i3, (byte) i);
                    return;
                }
                byte[] bArr2 = this.d;
                this.f = i3 + 1;
                lb4.s(bArr2, i3, (byte) (i | 128));
                int i4 = i >>> 7;
                if ((i4 & Base64.SIGN) == 0) {
                    byte[] bArr3 = this.d;
                    int i5 = this.f;
                    this.f = i5 + 1;
                    lb4.s(bArr3, i5, (byte) i4);
                    return;
                }
                byte[] bArr4 = this.d;
                int i6 = this.f;
                this.f = i6 + 1;
                lb4.s(bArr4, i6, (byte) (i4 | 128));
                int i7 = i4 >>> 7;
                if ((i7 & Base64.SIGN) == 0) {
                    byte[] bArr5 = this.d;
                    int i8 = this.f;
                    this.f = i8 + 1;
                    lb4.s(bArr5, i8, (byte) i7);
                    return;
                }
                byte[] bArr6 = this.d;
                int i9 = this.f;
                this.f = i9 + 1;
                lb4.s(bArr6, i9, (byte) (i7 | 128));
                int i10 = i7 >>> 7;
                if ((i10 & Base64.SIGN) == 0) {
                    byte[] bArr7 = this.d;
                    int i11 = this.f;
                    this.f = i11 + 1;
                    lb4.s(bArr7, i11, (byte) i10);
                    return;
                }
                byte[] bArr8 = this.d;
                int i12 = this.f;
                this.f = i12 + 1;
                lb4.s(bArr8, i12, (byte) (i10 | 128));
                byte[] bArr9 = this.d;
                int i13 = this.f;
                this.f = i13 + 1;
                lb4.s(bArr9, i13, (byte) (i10 >>> 7));
                return;
            }
        }
        while ((i & Base64.SIGN) != 0) {
            try {
                byte[] bArr10 = this.d;
                int i14 = this.f;
                this.f = i14 + 1;
                bArr10[i14] = (byte) ((i & 127) | 128);
                i >>>= 7;
            } catch (IndexOutOfBoundsException e) {
                throw new k84(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(this.e), 1), e);
            }
        }
        byte[] bArr11 = this.d;
        int i15 = this.f;
        this.f = i15 + 1;
        bArr11[i15] = (byte) i;
    }

    @Override // defpackage.l84
    public final void r(int i) throws IOException {
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
            throw new k84(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(this.e), 1), e);
        }
    }

    @Override // defpackage.l84
    public final void s(long j) throws IOException {
        if (l84.c && this.e - this.f >= 10) {
            while ((j & (-128)) != 0) {
                byte[] bArr = this.d;
                int i = this.f;
                this.f = i + 1;
                lb4.s(bArr, i, (byte) ((((int) j) & 127) | 128));
                j >>>= 7;
            }
            byte[] bArr2 = this.d;
            int i2 = this.f;
            this.f = i2 + 1;
            lb4.s(bArr2, i2, (byte) j);
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
                throw new k84(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(this.e), 1), e);
            }
        }
        byte[] bArr4 = this.d;
        int i4 = this.f;
        this.f = i4 + 1;
        bArr4[i4] = (byte) j;
    }

    @Override // defpackage.l84
    public final void t(long j) throws IOException {
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
            throw new k84(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(this.e), 1), e);
        }
    }

    @Override // defpackage.l84
    public final int u() {
        return this.e - this.f;
    }
}
