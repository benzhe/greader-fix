package defpackage;

/* loaded from: classes2.dex */
public final class ra7 {
    public int a;
    public int b;
    public int c;
    public final int[] d = new int[10];

    public boolean a(int i) {
        return ((1 << i) & this.a) != 0;
    }

    public ra7 b(int i, int i2, int i3) {
        int[] iArr = this.d;
        if (i >= iArr.length) {
            return this;
        }
        int i4 = 1 << i;
        this.a |= i4;
        if ((i2 & 1) != 0) {
            this.b |= i4;
        } else {
            this.b &= ~i4;
        }
        if ((i2 & 2) != 0) {
            this.c |= i4;
        } else {
            this.c &= ~i4;
        }
        iArr[i] = i3;
        return this;
    }
}
