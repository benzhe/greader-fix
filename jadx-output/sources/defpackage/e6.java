package defpackage;

import defpackage.c6;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
public class e6 extends j6 {
    public c6[] m1;
    public int P0 = -1;
    public int Q0 = -1;
    public int R0 = -1;
    public int S0 = -1;
    public int T0 = -1;
    public int U0 = -1;
    public float V0 = 0.5f;
    public float W0 = 0.5f;
    public float X0 = 0.5f;
    public float Y0 = 0.5f;
    public float Z0 = 0.5f;
    public float a1 = 0.5f;
    public int b1 = 0;
    public int c1 = 0;
    public int d1 = 2;
    public int e1 = 2;
    public int f1 = 0;
    public int g1 = -1;
    public int h1 = 0;
    public ArrayList<a> i1 = new ArrayList<>();
    public c6[] j1 = null;
    public c6[] k1 = null;
    public int[] l1 = null;
    public int n1 = 0;

    public class a {
        public int a;
        public b6 d;
        public b6 e;
        public b6 f;
        public b6 g;
        public int h;
        public int i;
        public int j;
        public int k;
        public int q;
        public c6 b = null;
        public int c = 0;
        public int l = 0;
        public int m = 0;
        public int n = 0;
        public int o = 0;
        public int p = 0;

        public a(int i, b6 b6Var, b6 b6Var2, b6 b6Var3, b6 b6Var4, int i2) {
            this.a = 0;
            this.h = 0;
            this.i = 0;
            this.j = 0;
            this.k = 0;
            this.q = 0;
            this.a = i;
            this.d = b6Var;
            this.e = b6Var2;
            this.f = b6Var3;
            this.g = b6Var4;
            this.h = e6.this.I0;
            this.i = e6.this.E0;
            this.j = e6.this.J0;
            this.k = e6.this.F0;
            this.q = i2;
        }

        public void a(c6 c6Var) {
            c6.a aVar = c6.a.MATCH_CONSTRAINT;
            if (this.a == 0) {
                int iO = e6.this.O(c6Var, this.q);
                if (c6Var.o() == aVar) {
                    this.p++;
                    iO = 0;
                }
                e6 e6Var = e6.this;
                this.l = iO + (c6Var.e0 != 8 ? e6Var.b1 : 0) + this.l;
                int iN = e6Var.N(c6Var, this.q);
                if (this.b == null || this.c < iN) {
                    this.b = c6Var;
                    this.c = iN;
                    this.m = iN;
                }
            } else {
                int iO2 = e6.this.O(c6Var, this.q);
                int iN2 = e6.this.N(c6Var, this.q);
                if (c6Var.s() == aVar) {
                    this.p++;
                    iN2 = 0;
                }
                this.m = iN2 + (c6Var.e0 != 8 ? e6.this.c1 : 0) + this.m;
                if (this.b == null || this.c < iO2) {
                    this.b = c6Var;
                    this.c = iO2;
                    this.l = iO2;
                }
            }
            this.o++;
        }

        public void b(boolean z, int i, boolean z2) {
            int i2;
            float f;
            c6 c6Var;
            int i3;
            float f2;
            int i4 = this.o;
            for (int i5 = 0; i5 < i4; i5++) {
                int i6 = this.n + i5;
                e6 e6Var = e6.this;
                if (i6 >= e6Var.n1) {
                    break;
                }
                c6 c6Var2 = e6Var.m1[i6];
                if (c6Var2 != null) {
                    c6Var2.A();
                }
            }
            if (i4 == 0 || this.b == null) {
                return;
            }
            boolean z3 = z2 && i == 0;
            int i7 = -1;
            int i8 = -1;
            for (int i9 = 0; i9 < i4; i9++) {
                int i10 = this.n + (z ? (i4 - 1) - i9 : i9);
                e6 e6Var2 = e6.this;
                if (i10 >= e6Var2.n1) {
                    break;
                }
                if (e6Var2.m1[i10].e0 == 0) {
                    if (i7 == -1) {
                        i7 = i9;
                    }
                    i8 = i9;
                }
            }
            c6 c6Var3 = null;
            if (this.a != 0) {
                c6 c6Var4 = this.b;
                e6 e6Var3 = e6.this;
                c6Var4.t0 = e6Var3.P0;
                int i11 = this.h;
                if (i > 0) {
                    i11 += e6Var3.b1;
                }
                if (z) {
                    c6Var4.C.a(this.f, i11);
                    if (z2) {
                        c6Var4.A.a(this.d, this.j);
                    }
                    if (i > 0) {
                        this.f.b.A.a(c6Var4.C, 0);
                    }
                } else {
                    c6Var4.A.a(this.d, i11);
                    if (z2) {
                        c6Var4.C.a(this.f, this.j);
                    }
                    if (i > 0) {
                        this.d.b.C.a(c6Var4.A, 0);
                    }
                }
                int i12 = 0;
                while (i12 < i4) {
                    int i13 = this.n + i12;
                    e6 e6Var4 = e6.this;
                    if (i13 >= e6Var4.n1) {
                        return;
                    }
                    c6 c6Var5 = e6Var4.m1[i13];
                    if (i12 == 0) {
                        c6Var5.h(c6Var5.B, this.e, this.i);
                        e6 e6Var5 = e6.this;
                        int i14 = e6Var5.Q0;
                        float f3 = e6Var5.W0;
                        if (this.n != 0 || (i2 = e6Var5.S0) == -1) {
                            if (z2 && (i2 = e6Var5.U0) != -1) {
                                f = e6Var5.a1;
                            }
                            c6Var5.u0 = i14;
                            c6Var5.b0 = f3;
                        } else {
                            f = e6Var5.Y0;
                        }
                        f3 = f;
                        i14 = i2;
                        c6Var5.u0 = i14;
                        c6Var5.b0 = f3;
                    }
                    if (i12 == i4 - 1) {
                        c6Var5.h(c6Var5.D, this.g, this.k);
                    }
                    if (c6Var3 != null) {
                        c6Var5.B.a(c6Var3.D, e6.this.c1);
                        if (i12 == i7) {
                            c6Var5.B.j(this.i);
                        }
                        c6Var3.D.a(c6Var5.B, 0);
                        if (i12 == i8 + 1) {
                            c6Var3.D.j(this.k);
                        }
                    }
                    if (c6Var5 != c6Var4) {
                        if (z) {
                            int i15 = e6.this.d1;
                            if (i15 == 0) {
                                c6Var5.C.a(c6Var4.C, 0);
                            } else if (i15 == 1) {
                                c6Var5.A.a(c6Var4.A, 0);
                            } else if (i15 == 2) {
                                c6Var5.A.a(c6Var4.A, 0);
                                c6Var5.C.a(c6Var4.C, 0);
                            }
                        } else {
                            int i16 = e6.this.d1;
                            if (i16 == 0) {
                                c6Var5.A.a(c6Var4.A, 0);
                            } else if (i16 == 1) {
                                c6Var5.C.a(c6Var4.C, 0);
                            } else if (i16 == 2) {
                                if (z3) {
                                    c6Var5.A.a(this.d, this.h);
                                    c6Var5.C.a(this.f, this.j);
                                } else {
                                    c6Var5.A.a(c6Var4.A, 0);
                                    c6Var5.C.a(c6Var4.C, 0);
                                }
                            }
                        }
                    }
                    i12++;
                    c6Var3 = c6Var5;
                }
                return;
            }
            c6 c6Var6 = this.b;
            e6 e6Var6 = e6.this;
            c6Var6.u0 = e6Var6.Q0;
            int i17 = this.i;
            if (i > 0) {
                i17 += e6Var6.c1;
            }
            c6Var6.B.a(this.e, i17);
            if (z2) {
                c6Var6.D.a(this.g, this.k);
            }
            if (i > 0) {
                this.e.b.D.a(c6Var6.B, 0);
            }
            if (e6.this.e1 != 3 || c6Var6.y) {
                c6Var = c6Var6;
            } else {
                for (int i18 = 0; i18 < i4; i18++) {
                    int i19 = this.n + (z ? (i4 - 1) - i18 : i18);
                    e6 e6Var7 = e6.this;
                    if (i19 >= e6Var7.n1) {
                        break;
                    }
                    c6Var = e6Var7.m1[i19];
                    if (c6Var.y) {
                        break;
                    }
                }
                c6Var = c6Var6;
            }
            int i20 = 0;
            while (i20 < i4) {
                int i21 = z ? (i4 - 1) - i20 : i20;
                int i22 = this.n + i21;
                e6 e6Var8 = e6.this;
                if (i22 >= e6Var8.n1) {
                    return;
                }
                c6 c6Var7 = e6Var8.m1[i22];
                if (i20 == 0) {
                    c6Var7.h(c6Var7.A, this.d, this.h);
                }
                if (i21 == 0) {
                    e6 e6Var9 = e6.this;
                    int i23 = e6Var9.P0;
                    float f4 = e6Var9.V0;
                    if (this.n != 0 || (i3 = e6Var9.R0) == -1) {
                        if (z2 && (i3 = e6Var9.T0) != -1) {
                            f2 = e6Var9.Z0;
                        }
                        c6Var7.t0 = i23;
                        c6Var7.a0 = f4;
                    } else {
                        f2 = e6Var9.X0;
                    }
                    f4 = f2;
                    i23 = i3;
                    c6Var7.t0 = i23;
                    c6Var7.a0 = f4;
                }
                if (i20 == i4 - 1) {
                    c6Var7.h(c6Var7.C, this.f, this.j);
                }
                if (c6Var3 != null) {
                    c6Var7.A.a(c6Var3.C, e6.this.b1);
                    if (i20 == i7) {
                        c6Var7.A.j(this.h);
                    }
                    c6Var3.C.a(c6Var7.A, 0);
                    if (i20 == i8 + 1) {
                        c6Var3.C.j(this.j);
                    }
                }
                if (c6Var7 != c6Var6) {
                    int i24 = e6.this.e1;
                    if (i24 == 3 && c6Var.y && c6Var7 != c6Var && c6Var7.y) {
                        c6Var7.E.a(c6Var.E, 0);
                    } else if (i24 == 0) {
                        c6Var7.B.a(c6Var6.B, 0);
                    } else if (i24 == 1) {
                        c6Var7.D.a(c6Var6.D, 0);
                    } else if (z3) {
                        c6Var7.B.a(this.e, this.i);
                        c6Var7.D.a(this.g, this.k);
                    } else {
                        c6Var7.B.a(c6Var6.B, 0);
                        c6Var7.D.a(c6Var6.D, 0);
                    }
                }
                i20++;
                c6Var3 = c6Var7;
            }
        }

        public int c() {
            return this.a == 1 ? this.m - e6.this.c1 : this.m;
        }

        public int d() {
            return this.a == 0 ? this.l - e6.this.b1 : this.l;
        }

        public void e(int i) {
            c6.a aVar = c6.a.FIXED;
            c6.a aVar2 = c6.a.MATCH_CONSTRAINT;
            int i2 = this.p;
            if (i2 == 0) {
                return;
            }
            int i3 = this.o;
            int i4 = i / i2;
            for (int i5 = 0; i5 < i3; i5++) {
                int i6 = this.n;
                int i7 = i6 + i5;
                e6 e6Var = e6.this;
                if (i7 >= e6Var.n1) {
                    break;
                }
                c6 c6Var = e6Var.m1[i6 + i5];
                if (this.a == 0) {
                    if (c6Var != null && c6Var.o() == aVar2 && c6Var.j == 0) {
                        e6.this.M(c6Var, aVar, i4, c6Var.s(), c6Var.n());
                    }
                } else if (c6Var != null && c6Var.s() == aVar2 && c6Var.k == 0) {
                    e6.this.M(c6Var, c6Var.o(), c6Var.t(), aVar, i4);
                }
            }
            this.l = 0;
            this.m = 0;
            this.b = null;
            this.c = 0;
            int i8 = this.o;
            for (int i9 = 0; i9 < i8; i9++) {
                int i10 = this.n + i9;
                e6 e6Var2 = e6.this;
                if (i10 >= e6Var2.n1) {
                    return;
                }
                c6 c6Var2 = e6Var2.m1[i10];
                if (this.a == 0) {
                    int iT = c6Var2.t();
                    e6 e6Var3 = e6.this;
                    int i11 = e6Var3.b1;
                    if (c6Var2.e0 == 8) {
                        i11 = 0;
                    }
                    this.l = iT + i11 + this.l;
                    int iN = e6Var3.N(c6Var2, this.q);
                    if (this.b == null || this.c < iN) {
                        this.b = c6Var2;
                        this.c = iN;
                        this.m = iN;
                    }
                } else {
                    int iO = e6Var2.O(c6Var2, this.q);
                    int iN2 = e6.this.N(c6Var2, this.q);
                    int i12 = e6.this.c1;
                    if (c6Var2.e0 == 8) {
                        i12 = 0;
                    }
                    this.m = iN2 + i12 + this.m;
                    if (this.b == null || this.c < iO) {
                        this.b = c6Var2;
                        this.c = iO;
                        this.l = iO;
                    }
                }
            }
        }

        public void f(int i, b6 b6Var, b6 b6Var2, b6 b6Var3, b6 b6Var4, int i2, int i3, int i4, int i5, int i6) {
            this.a = i;
            this.d = b6Var;
            this.e = b6Var2;
            this.f = b6Var3;
            this.g = b6Var4;
            this.h = i2;
            this.i = i3;
            this.j = i4;
            this.k = i5;
            this.q = i6;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:123:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:305:0x05ef  */
    /* JADX WARN: Removed duplicated region for block: B:306:0x05f1  */
    /* JADX WARN: Removed duplicated region for block: B:312:0x05ff  */
    /* JADX WARN: Removed duplicated region for block: B:313:0x0601  */
    /* JADX WARN: Removed duplicated region for block: B:320:0x061b  */
    /* JADX WARN: Removed duplicated region for block: B:321:0x061d  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:190:0x029e -> B:191:0x02a9). Please report as a decompilation issue!!! */
    @Override // defpackage.j6
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void L(int r34, int r35, int r36, int r37) {
        /*
            Method dump skipped, instructions count: 1569
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.e6.L(int, int, int, int):void");
    }

    public final int N(c6 c6Var, int i) {
        if (c6Var == null) {
            return 0;
        }
        if (c6Var.s() == c6.a.MATCH_CONSTRAINT) {
            int i2 = c6Var.k;
            if (i2 == 0) {
                return 0;
            }
            if (i2 == 2) {
                int i3 = (int) (c6Var.r * i);
                if (i3 != c6Var.n()) {
                    M(c6Var, c6Var.o(), c6Var.t(), c6.a.FIXED, i3);
                }
                return i3;
            }
            if (i2 == 1) {
                return c6Var.n();
            }
            if (i2 == 3) {
                return (int) ((c6Var.t() * c6Var.P) + 0.5f);
            }
        }
        return c6Var.n();
    }

    public final int O(c6 c6Var, int i) {
        if (c6Var == null) {
            return 0;
        }
        if (c6Var.o() == c6.a.MATCH_CONSTRAINT) {
            int i2 = c6Var.j;
            if (i2 == 0) {
                return 0;
            }
            if (i2 == 2) {
                int i3 = (int) (c6Var.o * i);
                if (i3 != c6Var.t()) {
                    M(c6Var, c6.a.FIXED, i3, c6Var.s(), c6Var.n());
                }
                return i3;
            }
            if (i2 == 1) {
                return c6Var.t();
            }
            if (i2 == 3) {
                return (int) ((c6Var.n() * c6Var.P) + 0.5f);
            }
        }
        return c6Var.t();
    }

    @Override // defpackage.c6
    public void d(u5 u5Var) {
        c6 c6Var;
        super.d(u5Var);
        c6 c6Var2 = this.M;
        boolean z = c6Var2 != null ? ((d6) c6Var2).G0 : false;
        int i = this.f1;
        if (i != 0) {
            if (i == 1) {
                int size = this.i1.size();
                int i2 = 0;
                while (i2 < size) {
                    this.i1.get(i2).b(z, i2, i2 == size + (-1));
                    i2++;
                }
            } else if (i == 2 && this.l1 != null && this.k1 != null && this.j1 != null) {
                for (int i3 = 0; i3 < this.n1; i3++) {
                    this.m1[i3].A();
                }
                int[] iArr = this.l1;
                int i4 = iArr[0];
                int i5 = iArr[1];
                c6 c6Var3 = null;
                for (int i6 = 0; i6 < i4; i6++) {
                    c6 c6Var4 = this.k1[z ? (i4 - i6) - 1 : i6];
                    if (c6Var4 != null && c6Var4.e0 != 8) {
                        if (i6 == 0) {
                            c6Var4.h(c6Var4.A, this.A, this.I0);
                            c6Var4.t0 = this.P0;
                            c6Var4.a0 = this.V0;
                        }
                        if (i6 == i4 - 1) {
                            c6Var4.h(c6Var4.C, this.C, this.J0);
                        }
                        if (i6 > 0) {
                            c6Var4.h(c6Var4.A, c6Var3.C, this.b1);
                            c6Var3.h(c6Var3.C, c6Var4.A, 0);
                        }
                        c6Var3 = c6Var4;
                    }
                }
                for (int i7 = 0; i7 < i5; i7++) {
                    c6 c6Var5 = this.j1[i7];
                    if (c6Var5 != null && c6Var5.e0 != 8) {
                        if (i7 == 0) {
                            c6Var5.h(c6Var5.B, this.B, this.E0);
                            c6Var5.u0 = this.Q0;
                            c6Var5.b0 = this.W0;
                        }
                        if (i7 == i5 - 1) {
                            c6Var5.h(c6Var5.D, this.D, this.F0);
                        }
                        if (i7 > 0) {
                            c6Var5.h(c6Var5.B, c6Var3.D, this.c1);
                            c6Var3.h(c6Var3.D, c6Var5.B, 0);
                        }
                        c6Var3 = c6Var5;
                    }
                }
                for (int i8 = 0; i8 < i4; i8++) {
                    for (int i9 = 0; i9 < i5; i9++) {
                        int i10 = (i9 * i4) + i8;
                        if (this.h1 == 1) {
                            i10 = (i8 * i5) + i9;
                        }
                        c6[] c6VarArr = this.m1;
                        if (i10 < c6VarArr.length && (c6Var = c6VarArr[i10]) != null && c6Var.e0 != 8) {
                            c6 c6Var6 = this.k1[i8];
                            c6 c6Var7 = this.j1[i9];
                            if (c6Var != c6Var6) {
                                c6Var.h(c6Var.A, c6Var6.A, 0);
                                c6Var.h(c6Var.C, c6Var6.C, 0);
                            }
                            if (c6Var != c6Var7) {
                                c6Var.h(c6Var.B, c6Var7.B, 0);
                                c6Var.h(c6Var.D, c6Var7.D, 0);
                            }
                        }
                    }
                }
            }
        } else if (this.i1.size() > 0) {
            this.i1.get(0).b(z, 0, true);
        }
        this.K0 = false;
    }

    @Override // defpackage.h6, defpackage.c6
    public void i(c6 c6Var, HashMap<c6, c6> map) {
        super.i(c6Var, map);
        e6 e6Var = (e6) c6Var;
        this.P0 = e6Var.P0;
        this.Q0 = e6Var.Q0;
        this.R0 = e6Var.R0;
        this.S0 = e6Var.S0;
        this.T0 = e6Var.T0;
        this.U0 = e6Var.U0;
        this.V0 = e6Var.V0;
        this.W0 = e6Var.W0;
        this.X0 = e6Var.X0;
        this.Y0 = e6Var.Y0;
        this.Z0 = e6Var.Z0;
        this.a1 = e6Var.a1;
        this.b1 = e6Var.b1;
        this.c1 = e6Var.c1;
        this.d1 = e6Var.d1;
        this.e1 = e6Var.e1;
        this.f1 = e6Var.f1;
        this.g1 = e6Var.g1;
        this.h1 = e6Var.h1;
    }
}
