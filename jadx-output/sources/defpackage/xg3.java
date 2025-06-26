package defpackage;

import java.io.IOException;

/* loaded from: classes.dex */
public final class xg3 {
    public static final long[] d = {128, 64, 32, 16, 8, 4, 2, 1};
    public final byte[] a = new byte[8];
    public int b;
    public int c;

    public static long b(byte[] bArr, int i, boolean z) {
        long j = bArr[0] & 255;
        if (z) {
            j &= ~d[i - 1];
        }
        for (int i2 = 1; i2 < i; i2++) {
            j = (j << 8) | (bArr[i2] & 255);
        }
        return j;
    }

    public static int c(int i) {
        int i2 = 0;
        while (true) {
            long[] jArr = d;
            if (i2 >= jArr.length) {
                return -1;
            }
            if ((jArr[i2] & i) != 0) {
                return i2 + 1;
            }
            i2++;
        }
    }

    public final long a(gg3 gg3Var, boolean z, boolean z2, int i) throws InterruptedException, IOException {
        if (this.b == 0) {
            if (!((eg3) gg3Var).c(this.a, 0, 1, z)) {
                return -1L;
            }
            int iC = c(this.a[0] & 255);
            this.c = iC;
            if (iC == -1) {
                throw new IllegalStateException("No valid varint length mask found");
            }
            this.b = 1;
        }
        int i2 = this.c;
        if (i2 > i) {
            this.b = 0;
            return -2L;
        }
        if (i2 != 1) {
            ((eg3) gg3Var).c(this.a, 1, i2 - 1, false);
        }
        this.b = 0;
        return b(this.a, this.c, z2);
    }
}
