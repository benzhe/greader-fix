package defpackage;

/* loaded from: classes.dex */
public final class sh3 {
    public final int a;
    public final long[] b;
    public final int[] c;
    public final int d;
    public final long[] e;
    public final int[] f;

    public sh3(long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2) {
        c50.j(iArr.length == jArr2.length);
        c50.j(jArr.length == jArr2.length);
        c50.j(iArr2.length == jArr2.length);
        this.b = jArr;
        this.c = iArr;
        this.d = i;
        this.e = jArr2;
        this.f = iArr2;
        this.a = jArr.length;
    }

    public final int a(long j) {
        for (int iA = el3.a(this.e, j, false); iA >= 0; iA--) {
            if ((this.f[iA] & 1) != 0) {
                return iA;
            }
        }
        return -1;
    }

    public final int b(long j) {
        for (int iE = el3.e(this.e, j, true, false); iE < this.e.length; iE++) {
            if ((this.f[iE] & 1) != 0) {
                return iE;
            }
        }
        return -1;
    }
}
