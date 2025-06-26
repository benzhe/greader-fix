package defpackage;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class vk3 {
    public int a;
    public long[] b = new long[32];

    public final void a(long j) {
        int i = this.a;
        long[] jArr = this.b;
        if (i == jArr.length) {
            this.b = Arrays.copyOf(jArr, i << 1);
        }
        long[] jArr2 = this.b;
        int i2 = this.a;
        this.a = i2 + 1;
        jArr2[i2] = j;
    }

    public final long b(int i) {
        if (i < 0 || i >= this.a) {
            throw new IndexOutOfBoundsException(jo.N(46, "Invalid index ", i, ", size is ", this.a));
        }
        return this.b[i];
    }
}
