package defpackage;

/* loaded from: classes.dex */
public final class fg3 implements mg3 {
    public final int a;
    public final long[] b;
    public final long[] c;
    public final long d;

    public fg3(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.b = jArr;
        this.c = jArr3;
        int length = iArr.length;
        this.a = length;
        if (length <= 0) {
            this.d = 0L;
        } else {
            int i = length - 1;
            this.d = jArr2[i] + jArr3[i];
        }
    }

    @Override // defpackage.mg3
    public final boolean b() {
        return true;
    }

    @Override // defpackage.mg3
    public final long d(long j) {
        return this.b[el3.a(this.c, j, true)];
    }

    @Override // defpackage.mg3
    public final long g() {
        return this.d;
    }
}
