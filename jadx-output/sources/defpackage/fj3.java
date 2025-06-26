package defpackage;

import com.google.android.gms.internal.ads.zzht;

/* loaded from: classes.dex */
public final class fj3 {
    public int i;
    public int j;
    public int k;
    public int l;
    public zzht q;
    public int a = 1000;
    public int[] b = new int[1000];
    public long[] c = new long[1000];
    public long[] f = new long[1000];
    public int[] e = new int[1000];
    public int[] d = new int[1000];
    public qg3[] g = new qg3[1000];
    public zzht[] h = new zzht[1000];
    public long m = Long.MIN_VALUE;
    public long n = Long.MIN_VALUE;
    public boolean p = true;
    public boolean o = true;

    public final synchronized void a(long j, int i, long j2, int i2, qg3 qg3Var) {
        if (this.o) {
            if ((i & 1) == 0) {
                return;
            } else {
                this.o = false;
            }
        }
        c50.D(!this.p);
        synchronized (this) {
            this.n = Math.max(this.n, j);
            long[] jArr = this.f;
            int i3 = this.l;
            jArr[i3] = j;
            long[] jArr2 = this.c;
            jArr2[i3] = j2;
            this.d[i3] = i2;
            this.e[i3] = i;
            this.g[i3] = qg3Var;
            this.h[i3] = this.q;
            this.b[i3] = 0;
            int i4 = this.i + 1;
            this.i = i4;
            int i5 = this.a;
            if (i4 != i5) {
                int i6 = i3 + 1;
                this.l = i6;
                if (i6 == i5) {
                    this.l = 0;
                }
                return;
            }
            int i7 = i5 + 1000;
            int[] iArr = new int[i7];
            long[] jArr3 = new long[i7];
            long[] jArr4 = new long[i7];
            int[] iArr2 = new int[i7];
            int[] iArr3 = new int[i7];
            qg3[] qg3VarArr = new qg3[i7];
            zzht[] zzhtVarArr = new zzht[i7];
            int i8 = this.k;
            int i9 = i5 - i8;
            System.arraycopy(jArr2, i8, jArr3, 0, i9);
            System.arraycopy(this.f, this.k, jArr4, 0, i9);
            System.arraycopy(this.e, this.k, iArr2, 0, i9);
            System.arraycopy(this.d, this.k, iArr3, 0, i9);
            System.arraycopy(this.g, this.k, qg3VarArr, 0, i9);
            System.arraycopy(this.h, this.k, zzhtVarArr, 0, i9);
            System.arraycopy(this.b, this.k, iArr, 0, i9);
            int i10 = this.k;
            System.arraycopy(this.c, 0, jArr3, i9, i10);
            System.arraycopy(this.f, 0, jArr4, i9, i10);
            System.arraycopy(this.e, 0, iArr2, i9, i10);
            System.arraycopy(this.d, 0, iArr3, i9, i10);
            System.arraycopy(this.g, 0, qg3VarArr, i9, i10);
            System.arraycopy(this.h, 0, zzhtVarArr, i9, i10);
            System.arraycopy(this.b, 0, iArr, i9, i10);
            this.c = jArr3;
            this.f = jArr4;
            this.e = iArr2;
            this.d = iArr3;
            this.g = qg3VarArr;
            this.h = zzhtVarArr;
            this.b = iArr;
            this.k = 0;
            int i11 = this.a;
            this.l = i11;
            this.i = i11;
            this.a = i7;
        }
    }

    public final synchronized boolean b() {
        return this.i != 0;
    }
}
