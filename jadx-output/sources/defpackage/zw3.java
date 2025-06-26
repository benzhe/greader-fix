package defpackage;

import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.codec.binary.Base64;

/* loaded from: classes.dex */
public abstract class zw3 extends rw3 {
    public static final Logger b = Logger.getLogger(zw3.class.getName());
    public static final boolean c = h04.h;
    public bx3 a;

    public static class a extends zw3 {
        public final byte[] d;
        public final int e;
        public final int f;
        public int g;

        public a(byte[] bArr, int i, int i2) {
            super(null);
            Objects.requireNonNull(bArr, "buffer");
            int i3 = i + i2;
            if ((i | i2 | (bArr.length - i3)) < 0) {
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
            }
            this.d = bArr;
            this.e = i;
            this.g = i;
            this.f = i3;
        }

        @Override // defpackage.zw3
        public final void A(int i, int i2) throws IOException {
            V((i << 3) | 0);
            if (i2 >= 0) {
                V(i2);
            } else {
                u(i2);
            }
        }

        @Override // defpackage.zw3
        public final void B(int i, long j) throws IOException {
            V((i << 3) | 1);
            E(j);
        }

        @Override // defpackage.zw3
        public final void D(int i, int i2) throws IOException {
            V((i << 3) | 0);
            V(i2);
        }

        @Override // defpackage.zw3
        public final void E(long j) throws IOException {
            try {
                byte[] bArr = this.d;
                int i = this.g;
                int i2 = i + 1;
                this.g = i2;
                bArr[i] = (byte) j;
                int i3 = i2 + 1;
                this.g = i3;
                bArr[i2] = (byte) (j >> 8);
                int i4 = i3 + 1;
                this.g = i4;
                bArr[i3] = (byte) (j >> 16);
                int i5 = i4 + 1;
                this.g = i5;
                bArr[i4] = (byte) (j >> 24);
                int i6 = i5 + 1;
                this.g = i6;
                bArr[i5] = (byte) (j >> 32);
                int i7 = i6 + 1;
                this.g = i7;
                bArr[i6] = (byte) (j >> 40);
                int i8 = i7 + 1;
                this.g = i8;
                bArr[i7] = (byte) (j >> 48);
                this.g = i8 + 1;
                bArr[i8] = (byte) (j >> 56);
            } catch (IndexOutOfBoundsException e) {
                throw new c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.g), Integer.valueOf(this.f), 1), e);
            }
        }

        @Override // defpackage.zw3
        public final void I(int i, int i2) throws IOException {
            V((i << 3) | 5);
            W(i2);
        }

        @Override // defpackage.zw3
        public final void U(int i) throws IOException {
            if (i >= 0) {
                V(i);
            } else {
                u(i);
            }
        }

        @Override // defpackage.zw3
        public final void V(int i) throws IOException {
            if (zw3.c && l() >= 10) {
                while ((i & Base64.SIGN) != 0) {
                    byte[] bArr = this.d;
                    int i2 = this.g;
                    this.g = i2 + 1;
                    h04.g(bArr, i2, (byte) ((i & 127) | 128));
                    i >>>= 7;
                }
                byte[] bArr2 = this.d;
                int i3 = this.g;
                this.g = i3 + 1;
                h04.g(bArr2, i3, (byte) i);
                return;
            }
            while ((i & Base64.SIGN) != 0) {
                try {
                    byte[] bArr3 = this.d;
                    int i4 = this.g;
                    this.g = i4 + 1;
                    bArr3[i4] = (byte) ((i & 127) | 128);
                    i >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.g), Integer.valueOf(this.f), 1), e);
                }
            }
            byte[] bArr4 = this.d;
            int i5 = this.g;
            this.g = i5 + 1;
            bArr4[i5] = (byte) i;
        }

        @Override // defpackage.zw3
        public final void W(int i) throws IOException {
            try {
                byte[] bArr = this.d;
                int i2 = this.g;
                int i3 = i2 + 1;
                this.g = i3;
                bArr[i2] = (byte) i;
                int i4 = i3 + 1;
                this.g = i4;
                bArr[i3] = (byte) (i >> 8);
                int i5 = i4 + 1;
                this.g = i5;
                bArr[i4] = (byte) (i >> 16);
                this.g = i5 + 1;
                bArr[i5] = i >> 24;
            } catch (IndexOutOfBoundsException e) {
                throw new c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.g), Integer.valueOf(this.f), 1), e);
            }
        }

        @Override // defpackage.rw3
        public final void a(byte[] bArr, int i, int i2) throws IOException {
            c(bArr, i, i2);
        }

        @Override // defpackage.zw3
        public void b() {
        }

        @Override // defpackage.zw3
        public final void c(byte[] bArr, int i, int i2) throws IOException {
            try {
                System.arraycopy(bArr, i, this.d, this.g, i2);
                this.g += i2;
            } catch (IndexOutOfBoundsException e) {
                throw new c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.g), Integer.valueOf(this.f), Integer.valueOf(i2)), e);
            }
        }

        public final void c0(sw3 sw3Var) throws IOException {
            V(sw3Var.size());
            sw3Var.j(this);
        }

        public final void d0(xy3 xy3Var) throws IOException {
            V(xy3Var.o());
            xy3Var.q(this);
        }

        @Override // defpackage.zw3
        public final void e(byte b) throws IOException {
            try {
                byte[] bArr = this.d;
                int i = this.g;
                this.g = i + 1;
                bArr[i] = b;
            } catch (IndexOutOfBoundsException e) {
                throw new c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.g), Integer.valueOf(this.f), 1), e);
            }
        }

        public final void e0(String str) throws IOException {
            int i = this.g;
            try {
                int iZ = zw3.Z(str.length() * 3);
                int iZ2 = zw3.Z(str.length());
                if (iZ2 != iZ) {
                    V(j04.a(str));
                    this.g = j04.b(str, this.d, this.g, l());
                    return;
                }
                int i2 = i + iZ2;
                this.g = i2;
                int iB = j04.b(str, this.d, i2, l());
                this.g = i;
                V((iB - i) - iZ2);
                this.g = iB;
            } catch (IndexOutOfBoundsException e) {
                throw new c(e);
            } catch (m04 e2) {
                this.g = i;
                k(str, e2);
            }
        }

        @Override // defpackage.zw3
        public final void f(int i, long j) throws IOException {
            V((i << 3) | 0);
            u(j);
        }

        @Override // defpackage.zw3
        public final void g(int i, sw3 sw3Var) throws IOException {
            V((i << 3) | 2);
            c0(sw3Var);
        }

        @Override // defpackage.zw3
        public final void h(int i, xy3 xy3Var) throws IOException {
            V((i << 3) | 2);
            d0(xy3Var);
        }

        @Override // defpackage.zw3
        public final void i(int i, xy3 xy3Var, nz3 nz3Var) throws IOException {
            V((i << 3) | 2);
            jw3 jw3Var = (jw3) xy3Var;
            int iC = jw3Var.c();
            if (iC == -1) {
                iC = nz3Var.h(jw3Var);
                jw3Var.a(iC);
            }
            V(iC);
            nz3Var.f(xy3Var, this.a);
        }

        @Override // defpackage.zw3
        public final void j(int i, String str) throws IOException {
            V((i << 3) | 2);
            e0(str);
        }

        @Override // defpackage.zw3
        public final int l() {
            return this.f - this.g;
        }

        @Override // defpackage.zw3
        public final void q(int i, int i2) throws IOException {
            V((i << 3) | i2);
        }

        @Override // defpackage.zw3
        public final void r(int i, sw3 sw3Var) throws IOException {
            q(1, 3);
            D(2, i);
            g(3, sw3Var);
            q(1, 4);
        }

        @Override // defpackage.zw3
        public final void s(int i, xy3 xy3Var) throws IOException {
            q(1, 3);
            D(2, i);
            h(3, xy3Var);
            q(1, 4);
        }

        @Override // defpackage.zw3
        public final void t(int i, boolean z) throws IOException {
            V((i << 3) | 0);
            e(z ? (byte) 1 : (byte) 0);
        }

        @Override // defpackage.zw3
        public final void u(long j) throws IOException {
            if (zw3.c && l() >= 10) {
                while ((j & (-128)) != 0) {
                    byte[] bArr = this.d;
                    int i = this.g;
                    this.g = i + 1;
                    h04.g(bArr, i, (byte) ((((int) j) & 127) | 128));
                    j >>>= 7;
                }
                byte[] bArr2 = this.d;
                int i2 = this.g;
                this.g = i2 + 1;
                h04.g(bArr2, i2, (byte) j);
                return;
            }
            while ((j & (-128)) != 0) {
                try {
                    byte[] bArr3 = this.d;
                    int i3 = this.g;
                    this.g = i3 + 1;
                    bArr3[i3] = (byte) ((((int) j) & 127) | 128);
                    j >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.g), Integer.valueOf(this.f), 1), e);
                }
            }
            byte[] bArr4 = this.d;
            int i4 = this.g;
            this.g = i4 + 1;
            bArr4[i4] = (byte) j;
        }
    }

    public static final class b extends a {
        public final ByteBuffer h;
        public int i;

        public b(ByteBuffer byteBuffer) {
            super(byteBuffer.array(), byteBuffer.position() + byteBuffer.arrayOffset(), byteBuffer.remaining());
            this.h = byteBuffer;
            this.i = byteBuffer.position();
        }

        @Override // zw3.a, defpackage.zw3
        public final void b() {
            this.h.position(this.i + (this.g - this.e));
        }
    }

    public static class c extends IOException {
        /* JADX WARN: Illegal instructions before constructor call */
        public c(String str) {
            String strValueOf = String.valueOf(str);
            super(strValueOf.length() != 0 ? "CodedOutputStream was writing to a flat byte array and ran out of space.: ".concat(strValueOf) : new String("CodedOutputStream was writing to a flat byte array and ran out of space.: "));
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public c(String str, Throwable th) {
            String strValueOf = String.valueOf(str);
            super(strValueOf.length() != 0 ? "CodedOutputStream was writing to a flat byte array and ran out of space.: ".concat(strValueOf) : new String("CodedOutputStream was writing to a flat byte array and ran out of space.: "), th);
        }

        public c(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }
    }

    public static final class d extends zw3 {
        public final ByteBuffer d;
        public final ByteBuffer e;

        public d(ByteBuffer byteBuffer) {
            super(null);
            this.d = byteBuffer;
            this.e = byteBuffer.duplicate().order(ByteOrder.LITTLE_ENDIAN);
            byteBuffer.position();
        }

        @Override // defpackage.zw3
        public final void A(int i, int i2) throws IOException {
            V((i << 3) | 0);
            if (i2 >= 0) {
                V(i2);
            } else {
                u(i2);
            }
        }

        @Override // defpackage.zw3
        public final void B(int i, long j) throws IOException {
            V((i << 3) | 1);
            E(j);
        }

        @Override // defpackage.zw3
        public final void D(int i, int i2) throws IOException {
            V((i << 3) | 0);
            V(i2);
        }

        @Override // defpackage.zw3
        public final void E(long j) throws IOException {
            try {
                this.e.putLong(j);
            } catch (BufferOverflowException e) {
                throw new c(e);
            }
        }

        @Override // defpackage.zw3
        public final void I(int i, int i2) throws IOException {
            V((i << 3) | 5);
            W(i2);
        }

        @Override // defpackage.zw3
        public final void U(int i) throws IOException {
            if (i >= 0) {
                V(i);
            } else {
                u(i);
            }
        }

        @Override // defpackage.zw3
        public final void V(int i) throws IOException {
            while ((i & Base64.SIGN) != 0) {
                try {
                    this.e.put((byte) ((i & 127) | 128));
                    i >>>= 7;
                } catch (BufferOverflowException e) {
                    throw new c(e);
                }
            }
            this.e.put((byte) i);
        }

        @Override // defpackage.zw3
        public final void W(int i) throws IOException {
            try {
                this.e.putInt(i);
            } catch (BufferOverflowException e) {
                throw new c(e);
            }
        }

        @Override // defpackage.rw3
        public final void a(byte[] bArr, int i, int i2) throws IOException {
            c(bArr, i, i2);
        }

        @Override // defpackage.zw3
        public final void b() {
            this.d.position(this.e.position());
        }

        @Override // defpackage.zw3
        public final void c(byte[] bArr, int i, int i2) throws IOException {
            try {
                this.e.put(bArr, i, i2);
            } catch (IndexOutOfBoundsException e) {
                throw new c(e);
            } catch (BufferOverflowException e2) {
                throw new c(e2);
            }
        }

        public final void c0(sw3 sw3Var) throws IOException {
            V(sw3Var.size());
            sw3Var.j(this);
        }

        public final void d0(xy3 xy3Var, nz3 nz3Var) throws IOException {
            jw3 jw3Var = (jw3) xy3Var;
            int iC = jw3Var.c();
            if (iC == -1) {
                iC = nz3Var.h(jw3Var);
                jw3Var.a(iC);
            }
            V(iC);
            nz3Var.f(xy3Var, this.a);
        }

        @Override // defpackage.zw3
        public final void e(byte b) throws IOException {
            try {
                this.e.put(b);
            } catch (BufferOverflowException e) {
                throw new c(e);
            }
        }

        public final void e0(xy3 xy3Var) throws IOException {
            V(xy3Var.o());
            xy3Var.q(this);
        }

        @Override // defpackage.zw3
        public final void f(int i, long j) throws IOException {
            V((i << 3) | 0);
            u(j);
        }

        public final void f0(String str) throws IOException {
            int iPosition = this.e.position();
            try {
                int iZ = zw3.Z(str.length() * 3);
                int iZ2 = zw3.Z(str.length());
                if (iZ2 != iZ) {
                    V(j04.a(str));
                    try {
                        j04.c(str, this.e);
                        return;
                    } catch (IndexOutOfBoundsException e) {
                        throw new c(e);
                    }
                }
                int iPosition2 = this.e.position() + iZ2;
                this.e.position(iPosition2);
                try {
                    j04.c(str, this.e);
                    int iPosition3 = this.e.position();
                    this.e.position(iPosition);
                    V(iPosition3 - iPosition2);
                    this.e.position(iPosition3);
                } catch (IndexOutOfBoundsException e2) {
                    throw new c(e2);
                }
            } catch (m04 e3) {
                this.e.position(iPosition);
                k(str, e3);
            } catch (IllegalArgumentException e4) {
                throw new c(e4);
            }
        }

        @Override // defpackage.zw3
        public final void g(int i, sw3 sw3Var) throws IOException {
            V((i << 3) | 2);
            c0(sw3Var);
        }

        @Override // defpackage.zw3
        public final void h(int i, xy3 xy3Var) throws IOException {
            V((i << 3) | 2);
            e0(xy3Var);
        }

        @Override // defpackage.zw3
        public final void i(int i, xy3 xy3Var, nz3 nz3Var) throws IOException {
            V((i << 3) | 2);
            d0(xy3Var, nz3Var);
        }

        @Override // defpackage.zw3
        public final void j(int i, String str) throws IOException {
            V((i << 3) | 2);
            f0(str);
        }

        @Override // defpackage.zw3
        public final int l() {
            return this.e.remaining();
        }

        @Override // defpackage.zw3
        public final void q(int i, int i2) throws IOException {
            V((i << 3) | i2);
        }

        @Override // defpackage.zw3
        public final void r(int i, sw3 sw3Var) throws IOException {
            q(1, 3);
            D(2, i);
            g(3, sw3Var);
            q(1, 4);
        }

        @Override // defpackage.zw3
        public final void s(int i, xy3 xy3Var) throws IOException {
            q(1, 3);
            D(2, i);
            h(3, xy3Var);
            q(1, 4);
        }

        @Override // defpackage.zw3
        public final void t(int i, boolean z) throws IOException {
            V((i << 3) | 0);
            e(z ? (byte) 1 : (byte) 0);
        }

        @Override // defpackage.zw3
        public final void u(long j) throws IOException {
            while (((-128) & j) != 0) {
                try {
                    this.e.put((byte) ((((int) j) & 127) | 128));
                    j >>>= 7;
                } catch (BufferOverflowException e) {
                    throw new c(e);
                }
            }
            this.e.put((byte) j);
        }
    }

    public static final class e extends zw3 {
        public final ByteBuffer d;
        public final ByteBuffer e;
        public final long f;
        public final long g;
        public final long h;
        public final long i;
        public long j;

        public e(ByteBuffer byteBuffer) {
            super(null);
            this.d = byteBuffer;
            this.e = byteBuffer.duplicate().order(ByteOrder.LITTLE_ENDIAN);
            long jK = h04.f.k(byteBuffer, h04.j);
            this.f = jK;
            long jPosition = byteBuffer.position() + jK;
            this.g = jPosition;
            long jLimit = jK + byteBuffer.limit();
            this.h = jLimit;
            this.i = jLimit - 10;
            this.j = jPosition;
        }

        @Override // defpackage.zw3
        public final void A(int i, int i2) throws IOException {
            V((i << 3) | 0);
            if (i2 >= 0) {
                V(i2);
            } else {
                u(i2);
            }
        }

        @Override // defpackage.zw3
        public final void B(int i, long j) throws IOException {
            V((i << 3) | 1);
            E(j);
        }

        @Override // defpackage.zw3
        public final void D(int i, int i2) throws IOException {
            V((i << 3) | 0);
            V(i2);
        }

        @Override // defpackage.zw3
        public final void E(long j) throws IOException {
            this.e.putLong((int) (this.j - this.f), j);
            this.j += 8;
        }

        @Override // defpackage.zw3
        public final void I(int i, int i2) throws IOException {
            V((i << 3) | 5);
            W(i2);
        }

        @Override // defpackage.zw3
        public final void U(int i) throws IOException {
            if (i >= 0) {
                V(i);
            } else {
                u(i);
            }
        }

        @Override // defpackage.zw3
        public final void V(int i) throws IOException {
            if (this.j <= this.i) {
                while ((i & Base64.SIGN) != 0) {
                    long j = this.j;
                    this.j = j + 1;
                    h04.f.b(j, (byte) ((i & 127) | 128));
                    i >>>= 7;
                }
                long j2 = this.j;
                this.j = 1 + j2;
                h04.f.b(j2, (byte) i);
                return;
            }
            while (true) {
                long j3 = this.j;
                if (j3 >= this.h) {
                    throw new c(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.j), Long.valueOf(this.h), 1));
                }
                if ((i & Base64.SIGN) == 0) {
                    this.j = 1 + j3;
                    h04.f.b(j3, (byte) i);
                    return;
                } else {
                    this.j = j3 + 1;
                    h04.f.b(j3, (byte) ((i & 127) | 128));
                    i >>>= 7;
                }
            }
        }

        @Override // defpackage.zw3
        public final void W(int i) throws IOException {
            this.e.putInt((int) (this.j - this.f), i);
            this.j += 4;
        }

        @Override // defpackage.rw3
        public final void a(byte[] bArr, int i, int i2) throws IOException {
            c(bArr, i, i2);
        }

        @Override // defpackage.zw3
        public final void b() {
            this.d.position((int) (this.j - this.f));
        }

        @Override // defpackage.zw3
        public final void c(byte[] bArr, int i, int i2) throws IOException {
            if (bArr != null && i >= 0 && i2 >= 0 && bArr.length - i2 >= i) {
                long j = i2;
                long j2 = this.h - j;
                long j3 = this.j;
                if (j2 >= j3) {
                    h04.f.h(bArr, i, j3, j);
                    this.j += j;
                    return;
                }
            }
            Objects.requireNonNull(bArr, "value");
            throw new c(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.j), Long.valueOf(this.h), Integer.valueOf(i2)));
        }

        public final void c0(sw3 sw3Var) throws IOException {
            V(sw3Var.size());
            sw3Var.j(this);
        }

        public final void d0(xy3 xy3Var, nz3 nz3Var) throws IOException {
            jw3 jw3Var = (jw3) xy3Var;
            int iC = jw3Var.c();
            if (iC == -1) {
                iC = nz3Var.h(jw3Var);
                jw3Var.a(iC);
            }
            V(iC);
            nz3Var.f(xy3Var, this.a);
        }

        @Override // defpackage.zw3
        public final void e(byte b) throws IOException {
            long j = this.j;
            if (j >= this.h) {
                throw new c(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.j), Long.valueOf(this.h), 1));
            }
            this.j = 1 + j;
            h04.f.b(j, b);
        }

        public final void e0(xy3 xy3Var) throws IOException {
            V(xy3Var.o());
            xy3Var.q(this);
        }

        @Override // defpackage.zw3
        public final void f(int i, long j) throws IOException {
            V((i << 3) | 0);
            u(j);
        }

        public final void f0(String str) throws IOException {
            long j = this.j;
            try {
                int iZ = zw3.Z(str.length() * 3);
                int iZ2 = zw3.Z(str.length());
                if (iZ2 == iZ) {
                    int i = ((int) (this.j - this.f)) + iZ2;
                    this.e.position(i);
                    j04.c(str, this.e);
                    int iPosition = this.e.position() - i;
                    V(iPosition);
                    this.j += iPosition;
                    return;
                }
                int iA = j04.a(str);
                V(iA);
                this.e.position((int) (this.j - this.f));
                j04.c(str, this.e);
                this.j += iA;
            } catch (IndexOutOfBoundsException e) {
                throw new c(e);
            } catch (m04 e2) {
                this.j = j;
                this.e.position((int) (j - this.f));
                k(str, e2);
            } catch (IllegalArgumentException e3) {
                throw new c(e3);
            }
        }

        @Override // defpackage.zw3
        public final void g(int i, sw3 sw3Var) throws IOException {
            V((i << 3) | 2);
            c0(sw3Var);
        }

        @Override // defpackage.zw3
        public final void h(int i, xy3 xy3Var) throws IOException {
            V((i << 3) | 2);
            e0(xy3Var);
        }

        @Override // defpackage.zw3
        public final void i(int i, xy3 xy3Var, nz3 nz3Var) throws IOException {
            V((i << 3) | 2);
            d0(xy3Var, nz3Var);
        }

        @Override // defpackage.zw3
        public final void j(int i, String str) throws IOException {
            V((i << 3) | 2);
            f0(str);
        }

        @Override // defpackage.zw3
        public final int l() {
            return (int) (this.h - this.j);
        }

        @Override // defpackage.zw3
        public final void q(int i, int i2) throws IOException {
            V((i << 3) | i2);
        }

        @Override // defpackage.zw3
        public final void r(int i, sw3 sw3Var) throws IOException {
            q(1, 3);
            D(2, i);
            g(3, sw3Var);
            q(1, 4);
        }

        @Override // defpackage.zw3
        public final void s(int i, xy3 xy3Var) throws IOException {
            q(1, 3);
            D(2, i);
            h(3, xy3Var);
            q(1, 4);
        }

        @Override // defpackage.zw3
        public final void t(int i, boolean z) throws IOException {
            V((i << 3) | 0);
            e(z ? (byte) 1 : (byte) 0);
        }

        @Override // defpackage.zw3
        public final void u(long j) throws IOException {
            if (this.j <= this.i) {
                while (true) {
                    long j2 = j & (-128);
                    long j3 = this.j;
                    if (j2 == 0) {
                        this.j = 1 + j3;
                        h04.f.b(j3, (byte) j);
                        return;
                    } else {
                        this.j = j3 + 1;
                        h04.f.b(j3, (byte) ((((int) j) & 127) | 128));
                        j >>>= 7;
                    }
                }
            } else {
                while (true) {
                    long j4 = this.j;
                    if (j4 >= this.h) {
                        throw new c(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.j), Long.valueOf(this.h), 1));
                    }
                    if ((j & (-128)) == 0) {
                        this.j = 1 + j4;
                        h04.f.b(j4, (byte) j);
                        return;
                    } else {
                        this.j = j4 + 1;
                        h04.f.b(j4, (byte) ((((int) j) & 127) | 128));
                        j >>>= 7;
                    }
                }
            }
        }
    }

    public zw3() {
    }

    public zw3(ax3 ax3Var) {
    }

    public static int C(int i, long j) {
        return H(j) + X(i);
    }

    public static int F(int i, long j) {
        return H(j) + X(i);
    }

    public static int G(int i, long j) {
        return H(R(j)) + X(i);
    }

    public static int H(long j) {
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

    public static int J(int i) {
        return X(i) + 8;
    }

    public static int K(int i, int i2) {
        return Y(i2) + X(i);
    }

    public static int L(long j) {
        return H(R(j));
    }

    public static int M(int i) {
        return X(i) + 8;
    }

    public static int N(int i, int i2) {
        return Z(i2) + X(i);
    }

    public static int O(String str) {
        int length;
        try {
            length = j04.a(str);
        } catch (m04 unused) {
            length = str.getBytes(ux3.a).length;
        }
        return Z(length) + length;
    }

    public static int P(int i, int i2) {
        return Z(b0(i2)) + X(i);
    }

    public static int Q(int i) {
        return X(i) + 4;
    }

    public static long R(long j) {
        return (j >> 63) ^ (j << 1);
    }

    public static int S(int i) {
        return X(i) + 4;
    }

    public static int T(int i, int i2) {
        return Y(i2) + X(i);
    }

    public static int X(int i) {
        return Z(i << 3);
    }

    public static int Y(int i) {
        if (i >= 0) {
            return Z(i);
        }
        return 10;
    }

    public static int Z(int i) {
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

    public static int a0(int i) {
        return Z(b0(i));
    }

    public static int b0(int i) {
        return (i >> 31) ^ (i << 1);
    }

    public static int d(fy3 fy3Var) {
        int iA = fy3Var.a();
        return Z(iA) + iA;
    }

    public static int m(int i) {
        return X(i) + 4;
    }

    public static int n(int i, String str) {
        return O(str) + X(i);
    }

    public static int o(sw3 sw3Var) {
        int size = sw3Var.size();
        return Z(size) + size;
    }

    public static int p(xy3 xy3Var, nz3 nz3Var) {
        jw3 jw3Var = (jw3) xy3Var;
        int iC = jw3Var.c();
        if (iC == -1) {
            iC = nz3Var.h(jw3Var);
            jw3Var.a(iC);
        }
        return Z(iC) + iC;
    }

    public static int v(int i) {
        return X(i) + 8;
    }

    public static int w(int i) {
        return X(i) + 1;
    }

    public static int x(int i, sw3 sw3Var) {
        int iX = X(i);
        int size = sw3Var.size();
        return Z(size) + size + iX;
    }

    public static int y(int i, xy3 xy3Var) {
        int iX = X(i);
        int iO = xy3Var.o();
        return iX + Z(iO) + iO;
    }

    @Deprecated
    public static int z(int i, xy3 xy3Var, nz3 nz3Var) {
        int iX = X(i) << 1;
        jw3 jw3Var = (jw3) xy3Var;
        int iC = jw3Var.c();
        if (iC == -1) {
            iC = nz3Var.h(jw3Var);
            jw3Var.a(iC);
        }
        return iX + iC;
    }

    public abstract void A(int i, int i2) throws IOException;

    public abstract void B(int i, long j) throws IOException;

    public abstract void D(int i, int i2) throws IOException;

    public abstract void E(long j) throws IOException;

    public abstract void I(int i, int i2) throws IOException;

    public abstract void U(int i) throws IOException;

    public abstract void V(int i) throws IOException;

    public abstract void W(int i) throws IOException;

    public abstract void b() throws IOException;

    public abstract void c(byte[] bArr, int i, int i2) throws IOException;

    public abstract void e(byte b2) throws IOException;

    public abstract void f(int i, long j) throws IOException;

    public abstract void g(int i, sw3 sw3Var) throws IOException;

    public abstract void h(int i, xy3 xy3Var) throws IOException;

    public abstract void i(int i, xy3 xy3Var, nz3 nz3Var) throws IOException;

    public abstract void j(int i, String str) throws IOException;

    public final void k(String str, m04 m04Var) throws IOException {
        b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) m04Var);
        byte[] bytes = str.getBytes(ux3.a);
        try {
            V(bytes.length);
            a(bytes, 0, bytes.length);
        } catch (IndexOutOfBoundsException e2) {
            throw new c(e2);
        } catch (c e3) {
            throw e3;
        }
    }

    public abstract int l();

    public abstract void q(int i, int i2) throws IOException;

    public abstract void r(int i, sw3 sw3Var) throws IOException;

    public abstract void s(int i, xy3 xy3Var) throws IOException;

    public abstract void t(int i, boolean z) throws IOException;

    public abstract void u(long j) throws IOException;
}
