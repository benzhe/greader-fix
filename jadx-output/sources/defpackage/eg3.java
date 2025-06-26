package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class eg3 implements gg3 {
    public static final byte[] g = new byte[RecyclerView.a0.FLAG_APPEARED_IN_PRE_LAYOUT];
    public final ek3 a;
    public final long b;
    public long c;
    public byte[] d = new byte[65536];
    public int e;
    public int f;

    public eg3(ek3 ek3Var, long j, long j2) {
        this.a = ek3Var;
        this.c = j;
        this.b = j2;
    }

    public final int a(byte[] bArr, int i, int i2, int i3, boolean z) throws InterruptedException, IOException {
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        int i4 = this.a.read(bArr, i + i3, i2 - i3);
        if (i4 != -1) {
            return i3 + i4;
        }
        if (i3 == 0 && z) {
            return -1;
        }
        throw new EOFException();
    }

    public final void b(byte[] bArr, int i, int i2) throws InterruptedException, IOException {
        if (g(i2)) {
            System.arraycopy(this.d, this.e - i2, bArr, i, i2);
        }
    }

    public final boolean c(byte[] bArr, int i, int i2, boolean z) throws InterruptedException, IOException {
        int iMin;
        int i3 = this.f;
        if (i3 == 0) {
            iMin = 0;
        } else {
            iMin = Math.min(i3, i2);
            System.arraycopy(this.d, 0, bArr, i, iMin);
            e(iMin);
        }
        int iA = iMin;
        while (iA < i2 && iA != -1) {
            iA = a(bArr, i, i2, iA, z);
        }
        f(iA);
        return iA != -1;
    }

    public final void d(int i) throws InterruptedException, IOException {
        int iMin = Math.min(this.f, i);
        e(iMin);
        int iA = iMin;
        while (iA < i && iA != -1) {
            byte[] bArr = g;
            iA = a(bArr, -iA, Math.min(i, bArr.length + iA), iA, false);
        }
        f(iA);
    }

    public final void e(int i) {
        int i2 = this.f - i;
        this.f = i2;
        this.e = 0;
        byte[] bArr = this.d;
        byte[] bArr2 = i2 < bArr.length - 524288 ? new byte[65536 + i2] : bArr;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        this.d = bArr2;
    }

    public final void f(int i) {
        if (i != -1) {
            this.c += i;
        }
    }

    public final boolean g(int i) throws InterruptedException, IOException {
        int i2 = this.e + i;
        byte[] bArr = this.d;
        if (i2 > bArr.length) {
            int i3 = el3.a;
            this.d = Arrays.copyOf(this.d, Math.max(65536 + i2, Math.min(bArr.length << 1, i2 + 524288)));
        }
        int iMin = Math.min(this.f - this.e, i);
        while (iMin < i) {
            iMin = a(this.d, this.e, i, iMin, false);
            if (iMin == -1) {
                return false;
            }
        }
        int i4 = this.e + i;
        this.e = i4;
        this.f = Math.max(this.f, i4);
        return true;
    }
}
