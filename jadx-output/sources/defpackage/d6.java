package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import defpackage.c6;
import defpackage.d0;
import defpackage.m6;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes.dex */
public class d6 extends k6 {
    public int I0;
    public int J0;
    public m6 D0 = new m6(this);
    public p6 E0 = new p6(this);
    public m6.b F0 = null;
    public boolean G0 = false;
    public u5 H0 = new u5();
    public int K0 = 0;
    public int L0 = 0;
    public a6[] M0 = new a6[4];
    public a6[] N0 = new a6[4];
    public int O0 = 263;
    public boolean P0 = false;
    public boolean Q0 = false;

    @Override // defpackage.c6
    public void J(boolean z, boolean z2) {
        super.J(z, z2);
        int size = this.C0.size();
        for (int i = 0; i < size; i++) {
            this.C0.get(i).J(z, z2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x0219 A[PHI: r0 r14
      0x0219: PHI (r0v25 boolean) = (r0v24 boolean), (r0v27 boolean), (r0v27 boolean), (r0v27 boolean) binds: [B:92:0x01e3, B:100:0x0203, B:101:0x0205, B:103:0x020b] A[DONT_GENERATE, DONT_INLINE]
      0x0219: PHI (r14v5 boolean) = (r14v4 boolean), (r14v7 boolean), (r14v7 boolean), (r14v7 boolean) binds: [B:92:0x01e3, B:100:0x0203, B:101:0x0205, B:103:0x020b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01e2  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01e5  */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11, types: [boolean] */
    /* JADX WARN: Type inference failed for: r4v13 */
    @Override // defpackage.k6
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void L() {
        /*
            Method dump skipped, instructions count: 565
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.d6.L():void");
    }

    public void M(c6 c6Var, int i) {
        if (i == 0) {
            int i2 = this.K0 + 1;
            a6[] a6VarArr = this.N0;
            if (i2 >= a6VarArr.length) {
                this.N0 = (a6[]) Arrays.copyOf(a6VarArr, a6VarArr.length * 2);
            }
            a6[] a6VarArr2 = this.N0;
            int i3 = this.K0;
            a6VarArr2[i3] = new a6(c6Var, 0, this.G0);
            this.K0 = i3 + 1;
            return;
        }
        if (i == 1) {
            int i4 = this.L0 + 1;
            a6[] a6VarArr3 = this.M0;
            if (i4 >= a6VarArr3.length) {
                this.M0 = (a6[]) Arrays.copyOf(a6VarArr3, a6VarArr3.length * 2);
            }
            a6[] a6VarArr4 = this.M0;
            int i5 = this.L0;
            a6VarArr4[i5] = new a6(c6Var, 1, this.G0);
            this.L0 = i5 + 1;
        }
    }

    public boolean N(u5 u5Var) {
        c6.a aVar = c6.a.FIXED;
        c6.a aVar2 = c6.a.WRAP_CONTENT;
        d(u5Var);
        int size = this.C0.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            c6 c6Var = this.C0.get(i);
            boolean[] zArr = c6Var.K;
            zArr[0] = false;
            zArr[1] = false;
            if (c6Var instanceof z5) {
                z = true;
            }
        }
        if (z) {
            for (int i2 = 0; i2 < size; i2++) {
                c6 c6Var2 = this.C0.get(i2);
                if (c6Var2 instanceof z5) {
                    z5 z5Var = (z5) c6Var2;
                    for (int i3 = 0; i3 < z5Var.D0; i3++) {
                        c6 c6Var3 = z5Var.C0[i3];
                        int i4 = z5Var.E0;
                        if (i4 == 0 || i4 == 1) {
                            c6Var3.K[0] = true;
                        } else if (i4 == 2 || i4 == 3) {
                            c6Var3.K[1] = true;
                        }
                    }
                }
            }
        }
        for (int i5 = 0; i5 < size; i5++) {
            c6 c6Var4 = this.C0.get(i5);
            Objects.requireNonNull(c6Var4);
            if ((c6Var4 instanceof j6) || (c6Var4 instanceof f6)) {
                c6Var4.d(u5Var);
            }
        }
        for (int i6 = 0; i6 < size; i6++) {
            c6 c6Var5 = this.C0.get(i6);
            if (c6Var5 instanceof d6) {
                c6.a[] aVarArr = c6Var5.L;
                c6.a aVar3 = aVarArr[0];
                c6.a aVar4 = aVarArr[1];
                if (aVar3 == aVar2) {
                    aVarArr[0] = aVar;
                }
                if (aVar4 == aVar2) {
                    aVarArr[1] = aVar;
                }
                c6Var5.d(u5Var);
                if (aVar3 == aVar2) {
                    c6Var5.E(aVar3);
                }
                if (aVar4 == aVar2) {
                    c6Var5.H(aVar4);
                }
            } else {
                c6.a aVar5 = c6.a.MATCH_PARENT;
                c6Var5.h = -1;
                c6Var5.i = -1;
                if (this.L[0] != aVar2 && c6Var5.L[0] == aVar5) {
                    int i7 = c6Var5.A.e;
                    int iT = t() - c6Var5.C.e;
                    b6 b6Var = c6Var5.A;
                    b6Var.g = u5Var.l(b6Var);
                    b6 b6Var2 = c6Var5.C;
                    b6Var2.g = u5Var.l(b6Var2);
                    u5Var.e(c6Var5.A.g, i7);
                    u5Var.e(c6Var5.C.g, iT);
                    c6Var5.h = 2;
                    c6Var5.R = i7;
                    int i8 = iT - i7;
                    c6Var5.N = i8;
                    int i9 = c6Var5.Y;
                    if (i8 < i9) {
                        c6Var5.N = i9;
                    }
                }
                if (this.L[1] != aVar2 && c6Var5.L[1] == aVar5) {
                    int i10 = c6Var5.B.e;
                    int iN = n() - c6Var5.D.e;
                    b6 b6Var3 = c6Var5.B;
                    b6Var3.g = u5Var.l(b6Var3);
                    b6 b6Var4 = c6Var5.D;
                    b6Var4.g = u5Var.l(b6Var4);
                    u5Var.e(c6Var5.B.g, i10);
                    u5Var.e(c6Var5.D.g, iN);
                    if (c6Var5.X > 0 || c6Var5.e0 == 8) {
                        b6 b6Var5 = c6Var5.E;
                        b6Var5.g = u5Var.l(b6Var5);
                        u5Var.e(c6Var5.E.g, c6Var5.X + i10);
                    }
                    c6Var5.i = 2;
                    c6Var5.S = i10;
                    int i11 = iN - i10;
                    c6Var5.O = i11;
                    int i12 = c6Var5.Z;
                    if (i11 < i12) {
                        c6Var5.O = i12;
                    }
                }
                if (!((c6Var5 instanceof j6) || (c6Var5 instanceof f6))) {
                    c6Var5.d(u5Var);
                }
            }
        }
        if (this.K0 > 0) {
            d0.h.a(this, u5Var, 0);
        }
        if (this.L0 > 0) {
            d0.h.a(this, u5Var, 1);
        }
        return true;
    }

    public boolean O(boolean z, int i) {
        boolean z2;
        p6 p6Var = this.E0;
        c6.a aVar = c6.a.MATCH_PARENT;
        c6.a aVar2 = c6.a.WRAP_CONTENT;
        c6.a aVar3 = c6.a.FIXED;
        boolean z3 = true;
        boolean z4 = z & true;
        c6.a aVarM = p6Var.a.m(0);
        c6.a aVarM2 = p6Var.a.m(1);
        int iU = p6Var.a.u();
        int iV = p6Var.a.v();
        if (z4 && (aVarM == aVar2 || aVarM2 == aVar2)) {
            Iterator<x6> it = p6Var.e.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                x6 next = it.next();
                if (next.f == i && !next.k()) {
                    z4 = false;
                    break;
                }
            }
            if (i == 0) {
                if (z4 && aVarM == aVar2) {
                    d6 d6Var = p6Var.a;
                    d6Var.L[0] = aVar3;
                    d6Var.I(p6Var.d(d6Var, 0));
                    d6 d6Var2 = p6Var.a;
                    d6Var2.d.e.c(d6Var2.t());
                }
            } else if (z4 && aVarM2 == aVar2) {
                d6 d6Var3 = p6Var.a;
                d6Var3.L[1] = aVar3;
                d6Var3.D(p6Var.d(d6Var3, 1));
                d6 d6Var4 = p6Var.a;
                d6Var4.e.e.c(d6Var4.n());
            }
        }
        if (i == 0) {
            d6 d6Var5 = p6Var.a;
            c6.a[] aVarArr = d6Var5.L;
            if (aVarArr[0] == aVar3 || aVarArr[0] == aVar) {
                int iT = d6Var5.t() + iU;
                p6Var.a.d.i.c(iT);
                p6Var.a.d.e.c(iT - iU);
                z2 = true;
            }
            z2 = false;
        } else {
            d6 d6Var6 = p6Var.a;
            c6.a[] aVarArr2 = d6Var6.L;
            if (aVarArr2[1] == aVar3 || aVarArr2[1] == aVar) {
                int iN = d6Var6.n() + iV;
                p6Var.a.e.i.c(iN);
                p6Var.a.e.e.c(iN - iV);
                z2 = true;
            }
            z2 = false;
        }
        p6Var.g();
        Iterator<x6> it2 = p6Var.e.iterator();
        while (it2.hasNext()) {
            x6 next2 = it2.next();
            if (next2.f == i && (next2.b != p6Var.a || next2.g)) {
                next2.e();
            }
        }
        Iterator<x6> it3 = p6Var.e.iterator();
        while (it3.hasNext()) {
            x6 next3 = it3.next();
            if (next3.f == i && (z2 || next3.b != p6Var.a)) {
                if (!next3.h.j || !next3.i.j || (!(next3 instanceof n6) && !next3.e.j)) {
                    z3 = false;
                    break;
                }
            }
        }
        p6Var.a.E(aVarM);
        p6Var.a.H(aVarM2);
        return z3;
    }

    public void P() {
        this.E0.b = true;
    }

    public void Q(m6.b bVar) {
        this.F0 = bVar;
        this.E0.f = bVar;
    }

    public void R(int i) {
        this.O0 = i;
        u5.p = i6.a(i, RecyclerView.a0.FLAG_TMP_DETACHED);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void S() {
        /*
            r7 = this;
            m6 r0 = r7.D0
            java.util.ArrayList<c6> r1 = r0.a
            r1.clear()
            java.util.ArrayList<c6> r1 = r7.C0
            int r1 = r1.size()
            r2 = 0
        Le:
            if (r2 >= r1) goto L3c
            java.util.ArrayList<c6> r3 = r7.C0
            java.lang.Object r3 = r3.get(r2)
            c6 r3 = (defpackage.c6) r3
            c6$a r4 = r3.o()
            c6$a r5 = c6.a.MATCH_CONSTRAINT
            if (r4 == r5) goto L34
            c6$a r4 = r3.o()
            c6$a r6 = c6.a.MATCH_PARENT
            if (r4 == r6) goto L34
            c6$a r4 = r3.s()
            if (r4 == r5) goto L34
            c6$a r4 = r3.s()
            if (r4 != r6) goto L39
        L34:
            java.util.ArrayList<c6> r4 = r0.a
            r4.add(r3)
        L39:
            int r2 = r2 + 1
            goto Le
        L3c:
            r7.P()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.d6.S():void");
    }

    @Override // defpackage.k6, defpackage.c6
    public void z() {
        this.H0.t();
        this.I0 = 0;
        this.J0 = 0;
        super.z();
    }
}
