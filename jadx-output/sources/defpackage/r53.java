package defpackage;

import java.io.OutputStream;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class r53 extends OutputStream {
    public static final byte[] j = new byte[0];
    public int g;
    public int i;
    public final int e = 128;
    public final ArrayList<k53> f = new ArrayList<>();
    public byte[] h = new byte[128];

    public final synchronized k53 a() {
        int i = this.i;
        byte[] bArr = this.h;
        if (i >= bArr.length) {
            this.f.add(new t53(this.h));
            this.h = j;
        } else if (i > 0) {
            byte[] bArr2 = new byte[i];
            System.arraycopy(bArr, 0, bArr2, 0, Math.min(bArr.length, i));
            this.f.add(new t53(bArr2));
        }
        this.g += this.i;
        this.i = 0;
        return k53.N(this.f);
    }

    public final void b(int i) {
        this.f.add(new t53(this.h));
        int length = this.g + this.h.length;
        this.g = length;
        this.h = new byte[Math.max(this.e, Math.max(i, length >>> 1))];
        this.i = 0;
    }

    public final String toString() {
        int i;
        Object[] objArr = new Object[2];
        objArr[0] = Integer.toHexString(System.identityHashCode(this));
        synchronized (this) {
            i = this.g + this.i;
        }
        objArr[1] = Integer.valueOf(i);
        return String.format("<ByteString.Output@%s size=%d>", objArr);
    }

    @Override // java.io.OutputStream
    public final synchronized void write(int i) {
        if (this.i == this.h.length) {
            b(1);
        }
        byte[] bArr = this.h;
        int i2 = this.i;
        this.i = i2 + 1;
        bArr[i2] = (byte) i;
    }

    @Override // java.io.OutputStream
    public final synchronized void write(byte[] bArr, int i, int i2) {
        byte[] bArr2 = this.h;
        int length = bArr2.length;
        int i3 = this.i;
        if (i2 <= length - i3) {
            System.arraycopy(bArr, i, bArr2, i3, i2);
            this.i += i2;
            return;
        }
        int length2 = bArr2.length - i3;
        System.arraycopy(bArr, i, bArr2, i3, length2);
        int i4 = i2 - length2;
        b(i4);
        System.arraycopy(bArr, i + length2, this.h, 0, i4);
        this.i = i4;
    }
}
