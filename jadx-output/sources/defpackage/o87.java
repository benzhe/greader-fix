package defpackage;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public final class o87 {
    public static final /* synthetic */ int a = 0;

    public static class b extends g57 {
        public int e;
        public final int f;
        public final byte[] g;

        public b(byte[] bArr, int i, int i2) {
            c50.t(i >= 0, "offset must be >= 0");
            c50.t(i2 >= 0, "length must be >= 0");
            int i3 = i2 + i;
            c50.t(i3 <= bArr.length, "offset + length exceeds array boundary");
            c50.A(bArr, "bytes");
            this.g = bArr;
            this.e = i;
            this.f = i3;
        }

        @Override // defpackage.n87
        public n87 A(int i) {
            if (d() < i) {
                throw new IndexOutOfBoundsException();
            }
            int i2 = this.e;
            this.e = i2 + i;
            return new b(this.g, i2, i);
        }

        @Override // defpackage.n87
        public void W(byte[] bArr, int i, int i2) {
            System.arraycopy(this.g, this.e, bArr, i, i2);
            this.e += i2;
        }

        @Override // defpackage.n87
        public int d() {
            return this.f - this.e;
        }

        @Override // defpackage.n87
        public int readUnsignedByte() {
            a(1);
            byte[] bArr = this.g;
            int i = this.e;
            this.e = i + 1;
            return bArr[i] & 255;
        }
    }

    static {
        byte[] bArr = new byte[0];
        c50.t(true, "offset must be >= 0");
        c50.t(true, "length must be >= 0");
        c50.t(0 + 0 <= bArr.length, "offset + length exceeds array boundary");
        c50.A(bArr, "bytes");
    }

    public static final class a extends InputStream implements b47 {
        public final n87 e;

        public a(n87 n87Var) {
            c50.A(n87Var, "buffer");
            this.e = n87Var;
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            return this.e.d();
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.e.close();
        }

        @Override // java.io.InputStream
        public int read() {
            if (this.e.d() == 0) {
                return -1;
            }
            return this.e.readUnsignedByte();
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            if (this.e.d() == 0) {
                return -1;
            }
            int iMin = Math.min(this.e.d(), i2);
            this.e.W(bArr, i, iMin);
            return iMin;
        }
    }
}
