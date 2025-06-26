package defpackage;

/* loaded from: classes2.dex */
public class s38 {
    public int[] a;

    public s38(int i, int i2, int i3, int i4, int[] iArr) {
        this.a = iArr;
    }

    public static int a(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        return i | (i2 << 4) | (((i4 << 4) | i3) << 8) | (((((i8 << 4) | i7) << 8) | ((i6 << 4) | i5)) << 16);
    }

    public int b(int i) {
        return (this.a[i >> 3] >> ((i & 7) << 2)) & 15;
    }
}
