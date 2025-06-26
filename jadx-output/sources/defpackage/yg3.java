package defpackage;

import java.io.IOException;

/* loaded from: classes.dex */
public final class yg3 {
    public final al3 a = new al3(8);
    public int b;

    public final long a(gg3 gg3Var) throws InterruptedException, IOException {
        eg3 eg3Var = (eg3) gg3Var;
        int i = 0;
        eg3Var.b(this.a.a, 0, 1);
        int i2 = this.a.a[0] & 255;
        if (i2 == 0) {
            return Long.MIN_VALUE;
        }
        int i3 = 128;
        int i4 = 0;
        while ((i2 & i3) == 0) {
            i3 >>= 1;
            i4++;
        }
        int i5 = i2 & (~i3);
        eg3Var.b(this.a.a, 1, i4);
        while (i < i4) {
            i++;
            i5 = (this.a.a[i] & 255) + (i5 << 8);
        }
        this.b = i4 + 1 + this.b;
        return i5;
    }
}
