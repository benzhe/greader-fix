package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import java.io.ByteArrayInputStream;
import java.io.Flushable;
import java.io.IOException;
import java.io.OutputStream;
import org.apache.commons.codec.binary.Base64;

/* loaded from: classes.dex */
public final class rl5 implements Flushable {
    public final byte[] e;
    public final int f;
    public int g = 0;
    public final OutputStream h;

    public static class a extends IOException {
        public a() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }
    }

    public rl5(OutputStream outputStream, byte[] bArr) {
        this.h = outputStream;
        this.e = bArr;
        this.f = bArr.length;
    }

    public static int a(int i, boolean z) {
        return e(i) + 1;
    }

    public static int b(int i, pl5 pl5Var) {
        return e(i) + d(pl5Var.a.length) + pl5Var.a.length;
    }

    public static int c(int i, int i2) {
        return e(i) + (i2 >= 0 ? d(i2) : 10);
    }

    public static int d(int i) {
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

    public static int e(int i) {
        return d((i << 3) | 0);
    }

    public static int f(int i, int i2) {
        return e(i) + d(i2);
    }

    public static int g(int i, long j) {
        return e(i) + (((-128) & j) == 0 ? 1 : ((-16384) & j) == 0 ? 2 : ((-2097152) & j) == 0 ? 3 : ((-268435456) & j) == 0 ? 4 : ((-34359738368L) & j) == 0 ? 5 : ((-4398046511104L) & j) == 0 ? 6 : ((-562949953421312L) & j) == 0 ? 7 : ((-72057594037927936L) & j) == 0 ? 8 : (j & Long.MIN_VALUE) == 0 ? 9 : 10);
    }

    public static rl5 i(OutputStream outputStream) {
        return new rl5(outputStream, new byte[RecyclerView.a0.FLAG_APPEARED_IN_PRE_LAYOUT]);
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        if (this.h != null) {
            k();
        }
    }

    public final void k() throws IOException {
        OutputStream outputStream = this.h;
        if (outputStream == null) {
            throw new a();
        }
        outputStream.write(this.e, 0, this.g);
        this.g = 0;
    }

    public void l(int i, boolean z) throws IOException {
        p((i << 3) | 0);
        o(z ? 1 : 0);
    }

    public void m(int i, pl5 pl5Var) throws IOException {
        p((i << 3) | 2);
        p(pl5Var.a.length);
        byte[] bArr = pl5Var.a;
        int length = bArr.length;
        int i2 = this.f;
        int i3 = this.g;
        int i4 = i2 - i3;
        if (i4 >= length) {
            System.arraycopy(bArr, 0, this.e, i3, length);
            this.g += length;
            return;
        }
        System.arraycopy(bArr, 0, this.e, i3, i4);
        int i5 = i4 + 0;
        int i6 = length - i4;
        this.g = this.f;
        k();
        if (i6 <= this.f) {
            System.arraycopy(pl5Var.a, i5, this.e, 0, i6);
            this.g = i6;
            return;
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(pl5Var.a);
        long j = i5;
        if (j != byteArrayInputStream.skip(j)) {
            throw new IllegalStateException("Skip failed.");
        }
        while (i6 > 0) {
            int iMin = Math.min(i6, this.f);
            int i7 = byteArrayInputStream.read(this.e, 0, iMin);
            if (i7 != iMin) {
                throw new IllegalStateException("Read failed.");
            }
            this.h.write(this.e, 0, i7);
            i6 -= i7;
        }
    }

    public void n(int i, int i2) throws IOException {
        p((i << 3) | 0);
        if (i2 >= 0) {
            p(i2);
        } else {
            q(i2);
        }
    }

    public void o(int i) throws IOException {
        byte b = (byte) i;
        if (this.g == this.f) {
            k();
        }
        byte[] bArr = this.e;
        int i2 = this.g;
        this.g = i2 + 1;
        bArr[i2] = b;
    }

    public void p(int i) throws IOException {
        while ((i & Base64.SIGN) != 0) {
            o((i & 127) | 128);
            i >>>= 7;
        }
        o(i);
    }

    public void q(long j) throws IOException {
        while (((-128) & j) != 0) {
            o((((int) j) & 127) | 128);
            j >>>= 7;
        }
        o((int) j);
    }

    public void r(int i, int i2) throws IOException {
        p((i << 3) | i2);
    }

    public void s(int i, int i2) throws IOException {
        p((i << 3) | 0);
        p(i2);
    }

    public void t(int i, long j) throws IOException {
        p((i << 3) | 0);
        q(j);
    }
}
