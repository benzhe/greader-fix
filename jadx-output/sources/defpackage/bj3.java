package defpackage;

import java.io.IOException;
import java.util.ArrayList;
import java.util.IdentityHashMap;

/* loaded from: classes.dex */
public final class bj3 implements wi3, xi3 {
    public final xi3[] e;
    public final IdentityHashMap<ri3, Integer> f = new IdentityHashMap<>();
    public wi3 g;
    public int h;
    public nj3 i;
    public xi3[] j;
    public jj3 k;

    public bj3(xi3... xi3VarArr) {
        this.e = xi3VarArr;
    }

    @Override // defpackage.xi3, defpackage.jj3
    public final long a() {
        return this.k.a();
    }

    @Override // defpackage.xi3, defpackage.jj3
    public final boolean b(long j) {
        return this.k.b(j);
    }

    @Override // defpackage.xi3
    public final long c() {
        long jC = this.e[0].c();
        int i = 1;
        while (true) {
            xi3[] xi3VarArr = this.e;
            if (i >= xi3VarArr.length) {
                if (jC != -9223372036854775807L) {
                    for (xi3 xi3Var : this.j) {
                        if (xi3Var != this.e[0] && xi3Var.i(jC) != jC) {
                            throw new IllegalStateException("Children seeked to different positions");
                        }
                    }
                }
                return jC;
            }
            if (xi3VarArr[i].c() != -9223372036854775807L) {
                throw new IllegalStateException("Child reported discontinuity");
            }
            i++;
        }
    }

    @Override // defpackage.xi3
    public final long d() {
        long jMin = Long.MAX_VALUE;
        for (xi3 xi3Var : this.j) {
            long jD = xi3Var.d();
            if (jD != Long.MIN_VALUE) {
                jMin = Math.min(jMin, jD);
            }
        }
        if (jMin == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return jMin;
    }

    @Override // defpackage.wi3
    public final /* synthetic */ void e(jj3 jj3Var) {
        if (this.i != null) {
            this.g.e(this);
        }
    }

    @Override // defpackage.xi3
    public final long f(yj3[] yj3VarArr, boolean[] zArr, ri3[] ri3VarArr, boolean[] zArr2, long j) {
        ri3[] ri3VarArr2 = ri3VarArr;
        int[] iArr = new int[yj3VarArr.length];
        int[] iArr2 = new int[yj3VarArr.length];
        for (int i = 0; i < yj3VarArr.length; i++) {
            iArr[i] = ri3VarArr2[i] == null ? -1 : this.f.get(ri3VarArr2[i]).intValue();
            iArr2[i] = -1;
            if (yj3VarArr[i] != null) {
                kj3 kj3VarB = yj3VarArr[i].b();
                int i2 = 0;
                while (true) {
                    xi3[] xi3VarArr = this.e;
                    if (i2 >= xi3VarArr.length) {
                        break;
                    }
                    if (xi3VarArr[i2].h().a(kj3VarB) != -1) {
                        iArr2[i] = i2;
                        break;
                    }
                    i2++;
                }
            }
        }
        this.f.clear();
        int length = yj3VarArr.length;
        ri3[] ri3VarArr3 = new ri3[length];
        ri3[] ri3VarArr4 = new ri3[yj3VarArr.length];
        yj3[] yj3VarArr2 = new yj3[yj3VarArr.length];
        ArrayList arrayList = new ArrayList(this.e.length);
        long j2 = j;
        int i3 = 0;
        while (i3 < this.e.length) {
            for (int i4 = 0; i4 < yj3VarArr.length; i4++) {
                yj3 yj3Var = null;
                ri3VarArr4[i4] = iArr[i4] == i3 ? ri3VarArr2[i4] : null;
                if (iArr2[i4] == i3) {
                    yj3Var = yj3VarArr[i4];
                }
                yj3VarArr2[i4] = yj3Var;
            }
            int i5 = i3;
            yj3[] yj3VarArr3 = yj3VarArr2;
            ArrayList arrayList2 = arrayList;
            long jF = this.e[i3].f(yj3VarArr2, zArr, ri3VarArr4, zArr2, j2);
            if (i5 == 0) {
                j2 = jF;
            } else if (jF != j2) {
                throw new IllegalStateException("Children enabled at different positions");
            }
            boolean z = false;
            for (int i6 = 0; i6 < yj3VarArr.length; i6++) {
                if (iArr2[i6] == i5) {
                    c50.D(ri3VarArr4[i6] != null);
                    ri3VarArr3[i6] = ri3VarArr4[i6];
                    this.f.put(ri3VarArr4[i6], Integer.valueOf(i5));
                    z = true;
                } else if (iArr[i6] == i5) {
                    c50.D(ri3VarArr4[i6] == null);
                }
            }
            if (z) {
                arrayList2.add(this.e[i5]);
            }
            i3 = i5 + 1;
            arrayList = arrayList2;
            yj3VarArr2 = yj3VarArr3;
            ri3VarArr2 = ri3VarArr;
        }
        ri3[] ri3VarArr5 = ri3VarArr2;
        ArrayList arrayList3 = arrayList;
        System.arraycopy(ri3VarArr3, 0, ri3VarArr5, 0, length);
        xi3[] xi3VarArr2 = new xi3[arrayList3.size()];
        this.j = xi3VarArr2;
        arrayList3.toArray(xi3VarArr2);
        this.k = new ji3(this.j);
        return j2;
    }

    @Override // defpackage.xi3
    public final void g(long j) {
        for (xi3 xi3Var : this.j) {
            xi3Var.g(j);
        }
    }

    @Override // defpackage.xi3
    public final nj3 h() {
        return this.i;
    }

    @Override // defpackage.xi3
    public final long i(long j) {
        long jI = this.j[0].i(j);
        int i = 1;
        while (true) {
            xi3[] xi3VarArr = this.j;
            if (i >= xi3VarArr.length) {
                return jI;
            }
            if (xi3VarArr[i].i(jI) != jI) {
                throw new IllegalStateException("Children seeked to different positions");
            }
            i++;
        }
    }

    @Override // defpackage.wi3
    public final void j(xi3 xi3Var) {
        int i = this.h - 1;
        this.h = i;
        if (i > 0) {
            return;
        }
        int i2 = 0;
        for (xi3 xi3Var2 : this.e) {
            i2 += xi3Var2.h().a;
        }
        kj3[] kj3VarArr = new kj3[i2];
        int i3 = 0;
        for (xi3 xi3Var3 : this.e) {
            nj3 nj3VarH = xi3Var3.h();
            int i4 = nj3VarH.a;
            int i5 = 0;
            while (i5 < i4) {
                kj3VarArr[i3] = nj3VarH.b[i5];
                i5++;
                i3++;
            }
        }
        this.i = new nj3(kj3VarArr);
        this.g.j(this);
    }

    @Override // defpackage.xi3
    public final void k(wi3 wi3Var, long j) {
        this.g = wi3Var;
        xi3[] xi3VarArr = this.e;
        this.h = xi3VarArr.length;
        for (xi3 xi3Var : xi3VarArr) {
            xi3Var.k(this, j);
        }
    }

    @Override // defpackage.xi3
    public final void l() throws IOException {
        for (xi3 xi3Var : this.e) {
            xi3Var.l();
        }
    }
}
