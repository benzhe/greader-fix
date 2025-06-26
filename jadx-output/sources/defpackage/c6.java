package defpackage;

import defpackage.b6;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Objects;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes.dex */
public class c6 {
    public b6 A;
    public c6 A0;
    public b6 B;
    public c6 B0;
    public b6 C;
    public b6 D;
    public b6 E;
    public b6 F;
    public b6 G;
    public b6 H;
    public b6[] I;
    public ArrayList<b6> J;
    public boolean[] K;
    public a[] L;
    public c6 M;
    public int N;
    public int O;
    public float P;
    public int Q;
    public int R;
    public int S;
    public int T;
    public int U;
    public int V;
    public int W;
    public int X;
    public int Y;
    public int Z;
    public float a0;
    public n6 b;
    public float b0;
    public n6 c;
    public Object c0;
    public int d0;
    public int e0;
    public String f0;
    public String g0;
    public int h0;
    public int i0;
    public int j0;
    public int k0;
    public boolean l0;
    public boolean m0;
    public boolean n0;
    public boolean o0;
    public boolean p0;
    public boolean q0;
    public boolean r0;
    public boolean s;
    public boolean s0;
    public boolean t;
    public int t0;
    public int u0;
    public boolean v0;
    public boolean w0;
    public float[] x0;
    public c6[] y0;
    public boolean z;
    public c6[] z0;
    public boolean a = false;
    public u6 d = new u6(this);
    public w6 e = new w6(this);
    public boolean[] f = {true, true};
    public int[] g = {0, 0, 0, 0};
    public int h = -1;
    public int i = -1;
    public int j = 0;
    public int k = 0;
    public int[] l = new int[2];
    public int m = 0;
    public int n = 0;
    public float o = 1.0f;
    public int p = 0;
    public int q = 0;
    public float r = 1.0f;
    public int u = -1;
    public float v = 1.0f;
    public int[] w = {Integer.MAX_VALUE, Integer.MAX_VALUE};
    public float x = 0.0f;
    public boolean y = false;

    public enum a {
        FIXED,
        WRAP_CONTENT,
        MATCH_CONSTRAINT,
        MATCH_PARENT
    }

    public c6() {
        b6 b6Var = new b6(this, b6.a.LEFT);
        this.A = b6Var;
        b6 b6Var2 = new b6(this, b6.a.TOP);
        this.B = b6Var2;
        b6 b6Var3 = new b6(this, b6.a.RIGHT);
        this.C = b6Var3;
        b6 b6Var4 = new b6(this, b6.a.BOTTOM);
        this.D = b6Var4;
        b6 b6Var5 = new b6(this, b6.a.BASELINE);
        this.E = b6Var5;
        this.F = new b6(this, b6.a.CENTER_X);
        this.G = new b6(this, b6.a.CENTER_Y);
        b6 b6Var6 = new b6(this, b6.a.CENTER);
        this.H = b6Var6;
        this.I = new b6[]{b6Var, b6Var3, b6Var2, b6Var4, b6Var5, b6Var6};
        ArrayList<b6> arrayList = new ArrayList<>();
        this.J = arrayList;
        this.K = new boolean[2];
        a aVar = a.FIXED;
        this.L = new a[]{aVar, aVar};
        this.M = null;
        this.N = 0;
        this.O = 0;
        this.P = 0.0f;
        this.Q = -1;
        this.R = 0;
        this.S = 0;
        this.T = 0;
        this.U = 0;
        this.V = 0;
        this.W = 0;
        this.X = 0;
        this.a0 = 0.5f;
        this.b0 = 0.5f;
        this.d0 = 0;
        this.e0 = 0;
        this.f0 = null;
        this.g0 = null;
        this.r0 = false;
        this.s0 = false;
        this.t0 = 0;
        this.u0 = 0;
        this.x0 = new float[]{-1.0f, -1.0f};
        this.y0 = new c6[]{null, null};
        this.z0 = new c6[]{null, null};
        this.A0 = null;
        this.B0 = null;
        arrayList.add(this.A);
        this.J.add(this.B);
        this.J.add(this.C);
        this.J.add(this.D);
        this.J.add(this.F);
        this.J.add(this.G);
        this.J.add(this.H);
        this.J.add(this.E);
    }

    public void A() {
        c6 c6Var = this.M;
        if (c6Var != null && (c6Var instanceof d6)) {
            Objects.requireNonNull((d6) c6Var);
        }
        int size = this.J.size();
        for (int i = 0; i < size; i++) {
            this.J.get(i).h();
        }
    }

    public void B(t5 t5Var) {
        this.A.i();
        this.B.i();
        this.C.i();
        this.D.i();
        this.E.i();
        this.H.i();
        this.F.i();
        this.G.i();
    }

    public void C(int i) {
        this.X = i;
        this.y = i > 0;
    }

    public void D(int i) {
        this.O = i;
        int i2 = this.Z;
        if (i < i2) {
            this.O = i2;
        }
    }

    public void E(a aVar) {
        this.L[0] = aVar;
    }

    public void F(int i) {
        if (i < 0) {
            this.Z = 0;
        } else {
            this.Z = i;
        }
    }

    public void G(int i) {
        if (i < 0) {
            this.Y = 0;
        } else {
            this.Y = i;
        }
    }

    public void H(a aVar) {
        this.L[1] = aVar;
    }

    public void I(int i) {
        this.N = i;
        int i2 = this.Y;
        if (i < i2) {
            this.N = i2;
        }
    }

    public void J(boolean z, boolean z2) {
        int i;
        int i2;
        a aVar = a.FIXED;
        u6 u6Var = this.d;
        boolean z3 = z & u6Var.g;
        w6 w6Var = this.e;
        boolean z4 = z2 & w6Var.g;
        int i3 = u6Var.h.g;
        int i4 = w6Var.h.g;
        int i5 = u6Var.i.g;
        int i6 = w6Var.i.g;
        int i7 = i6 - i4;
        if (i5 - i3 < 0 || i7 < 0 || i3 == Integer.MIN_VALUE || i3 == Integer.MAX_VALUE || i4 == Integer.MIN_VALUE || i4 == Integer.MAX_VALUE || i5 == Integer.MIN_VALUE || i5 == Integer.MAX_VALUE || i6 == Integer.MIN_VALUE || i6 == Integer.MAX_VALUE) {
            i5 = 0;
            i6 = 0;
            i3 = 0;
            i4 = 0;
        }
        int i8 = i5 - i3;
        int i9 = i6 - i4;
        if (z3) {
            this.R = i3;
        }
        if (z4) {
            this.S = i4;
        }
        if (this.e0 == 8) {
            this.N = 0;
            this.O = 0;
            return;
        }
        if (z3) {
            if (this.L[0] == aVar && i8 < (i2 = this.N)) {
                i8 = i2;
            }
            this.N = i8;
            int i10 = this.Y;
            if (i8 < i10) {
                this.N = i10;
            }
        }
        if (z4) {
            if (this.L[1] == aVar && i9 < (i = this.O)) {
                i9 = i;
            }
            this.O = i9;
            int i11 = this.Z;
            if (i9 < i11) {
                this.O = i11;
            }
        }
    }

    public void K(u5 u5Var) {
        int i;
        int i2;
        int iO = u5Var.o(this.A);
        int iO2 = u5Var.o(this.B);
        int iO3 = u5Var.o(this.C);
        int iO4 = u5Var.o(this.D);
        u6 u6Var = this.d;
        q6 q6Var = u6Var.h;
        if (q6Var.j) {
            q6 q6Var2 = u6Var.i;
            if (q6Var2.j) {
                iO = q6Var.g;
                iO3 = q6Var2.g;
            }
        }
        w6 w6Var = this.e;
        q6 q6Var3 = w6Var.h;
        if (q6Var3.j) {
            q6 q6Var4 = w6Var.i;
            if (q6Var4.j) {
                iO2 = q6Var3.g;
                iO4 = q6Var4.g;
            }
        }
        int i3 = iO4 - iO2;
        if (iO3 - iO < 0 || i3 < 0 || iO == Integer.MIN_VALUE || iO == Integer.MAX_VALUE || iO2 == Integer.MIN_VALUE || iO2 == Integer.MAX_VALUE || iO3 == Integer.MIN_VALUE || iO3 == Integer.MAX_VALUE || iO4 == Integer.MIN_VALUE || iO4 == Integer.MAX_VALUE) {
            iO4 = 0;
            iO = 0;
            iO2 = 0;
            iO3 = 0;
        }
        int i4 = iO3 - iO;
        int i5 = iO4 - iO2;
        this.R = iO;
        this.S = iO2;
        if (this.e0 == 8) {
            this.N = 0;
            this.O = 0;
            return;
        }
        a[] aVarArr = this.L;
        a aVar = aVarArr[0];
        a aVar2 = a.FIXED;
        if (aVar == aVar2 && i4 < (i2 = this.N)) {
            i4 = i2;
        }
        if (aVarArr[1] == aVar2 && i5 < (i = this.O)) {
            i5 = i;
        }
        this.N = i4;
        this.O = i5;
        int i6 = this.Z;
        if (i5 < i6) {
            this.O = i6;
        }
        int i7 = this.Y;
        if (i4 < i7) {
            this.N = i7;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:205:0x030c  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x0310  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0313  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x032c  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x03f8  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x040e  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x0459  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x046b  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x046d  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x0470  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x0527  */
    /* JADX WARN: Removed duplicated region for block: B:295:0x052d  */
    /* JADX WARN: Removed duplicated region for block: B:299:0x0558  */
    /* JADX WARN: Removed duplicated region for block: B:302:0x0562  */
    /* JADX WARN: Removed duplicated region for block: B:308:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void d(defpackage.u5 r48) {
        /*
            Method dump skipped, instructions count: 1524
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.c6.d(u5):void");
    }

    public boolean e() {
        return this.e0 != 8;
    }

    /* JADX WARN: Removed duplicated region for block: B:179:0x027c  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x02bd  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x02d6 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:190:0x02d7  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x03a5 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x03be  */
    /* JADX WARN: Removed duplicated region for block: B:275:0x03cd A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x0401  */
    /* JADX WARN: Removed duplicated region for block: B:298:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:301:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x017c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void f(defpackage.u5 r29, boolean r30, boolean r31, boolean r32, boolean r33, defpackage.x5 r34, defpackage.x5 r35, c6.a r36, boolean r37, defpackage.b6 r38, defpackage.b6 r39, int r40, int r41, int r42, int r43, float r44, boolean r45, boolean r46, boolean r47, boolean r48, int r49, int r50, int r51, int r52, float r53, boolean r54) {
        /*
            Method dump skipped, instructions count: 1034
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.c6.f(u5, boolean, boolean, boolean, boolean, x5, x5, c6$a, boolean, b6, b6, int, int, int, int, float, boolean, boolean, boolean, boolean, int, int, int, int, float, boolean):void");
    }

    public void g(b6.a aVar, c6 c6Var, b6.a aVar2, int i) {
        boolean z;
        b6.a aVar3 = b6.a.CENTER_Y;
        b6.a aVar4 = b6.a.CENTER_X;
        b6.a aVar5 = b6.a.LEFT;
        b6.a aVar6 = b6.a.TOP;
        b6.a aVar7 = b6.a.RIGHT;
        b6.a aVar8 = b6.a.BOTTOM;
        b6.a aVar9 = b6.a.CENTER;
        if (aVar == aVar9) {
            if (aVar2 != aVar9) {
                if (aVar2 == aVar5 || aVar2 == aVar7) {
                    g(aVar5, c6Var, aVar2, 0);
                    g(aVar7, c6Var, aVar2, 0);
                    k(aVar9).a(c6Var.k(aVar2), 0);
                    return;
                } else {
                    if (aVar2 == aVar6 || aVar2 == aVar8) {
                        g(aVar6, c6Var, aVar2, 0);
                        g(aVar8, c6Var, aVar2, 0);
                        k(aVar9).a(c6Var.k(aVar2), 0);
                        return;
                    }
                    return;
                }
            }
            b6 b6VarK = k(aVar5);
            b6 b6VarK2 = k(aVar7);
            b6 b6VarK3 = k(aVar6);
            b6 b6VarK4 = k(aVar8);
            boolean z2 = true;
            if ((b6VarK == null || !b6VarK.f()) && (b6VarK2 == null || !b6VarK2.f())) {
                g(aVar5, c6Var, aVar5, 0);
                g(aVar7, c6Var, aVar7, 0);
                z = true;
            } else {
                z = false;
            }
            if ((b6VarK3 == null || !b6VarK3.f()) && (b6VarK4 == null || !b6VarK4.f())) {
                g(aVar6, c6Var, aVar6, 0);
                g(aVar8, c6Var, aVar8, 0);
            } else {
                z2 = false;
            }
            if (z && z2) {
                k(aVar9).a(c6Var.k(aVar9), 0);
                return;
            } else if (z) {
                k(aVar4).a(c6Var.k(aVar4), 0);
                return;
            } else {
                if (z2) {
                    k(aVar3).a(c6Var.k(aVar3), 0);
                    return;
                }
                return;
            }
        }
        if (aVar == aVar4 && (aVar2 == aVar5 || aVar2 == aVar7)) {
            b6 b6VarK5 = k(aVar5);
            b6 b6VarK6 = c6Var.k(aVar2);
            b6 b6VarK7 = k(aVar7);
            b6VarK5.a(b6VarK6, 0);
            b6VarK7.a(b6VarK6, 0);
            k(aVar4).a(b6VarK6, 0);
            return;
        }
        if (aVar == aVar3 && (aVar2 == aVar6 || aVar2 == aVar8)) {
            b6 b6VarK8 = c6Var.k(aVar2);
            k(aVar6).a(b6VarK8, 0);
            k(aVar8).a(b6VarK8, 0);
            k(aVar3).a(b6VarK8, 0);
            return;
        }
        if (aVar == aVar4 && aVar2 == aVar4) {
            k(aVar5).a(c6Var.k(aVar5), 0);
            k(aVar7).a(c6Var.k(aVar7), 0);
            k(aVar4).a(c6Var.k(aVar2), 0);
            return;
        }
        if (aVar == aVar3 && aVar2 == aVar3) {
            k(aVar6).a(c6Var.k(aVar6), 0);
            k(aVar8).a(c6Var.k(aVar8), 0);
            k(aVar3).a(c6Var.k(aVar2), 0);
            return;
        }
        b6 b6VarK9 = k(aVar);
        b6 b6VarK10 = c6Var.k(aVar2);
        if (b6VarK9.g(b6VarK10)) {
            b6.a aVar10 = b6.a.BASELINE;
            if (aVar == aVar10) {
                b6 b6VarK11 = k(aVar6);
                b6 b6VarK12 = k(aVar8);
                if (b6VarK11 != null) {
                    b6VarK11.h();
                }
                if (b6VarK12 != null) {
                    b6VarK12.h();
                }
                i = 0;
            } else if (aVar == aVar6 || aVar == aVar8) {
                b6 b6VarK13 = k(aVar10);
                if (b6VarK13 != null) {
                    b6VarK13.h();
                }
                b6 b6VarK14 = k(aVar9);
                if (b6VarK14.d != b6VarK10) {
                    b6VarK14.h();
                }
                b6 b6VarD = k(aVar).d();
                b6 b6VarK15 = k(aVar3);
                if (b6VarK15.f()) {
                    b6VarD.h();
                    b6VarK15.h();
                }
            } else if (aVar == aVar5 || aVar == aVar7) {
                b6 b6VarK16 = k(aVar9);
                if (b6VarK16.d != b6VarK10) {
                    b6VarK16.h();
                }
                b6 b6VarD2 = k(aVar).d();
                b6 b6VarK17 = k(aVar4);
                if (b6VarK17.f()) {
                    b6VarD2.h();
                    b6VarK17.h();
                }
            }
            b6VarK9.a(b6VarK10, i);
        }
    }

    public void h(b6 b6Var, b6 b6Var2, int i) {
        if (b6Var.b == this) {
            g(b6Var.c, b6Var2.b, b6Var2.c, i);
        }
    }

    public void i(c6 c6Var, HashMap<c6, c6> map) {
        this.h = c6Var.h;
        this.i = c6Var.i;
        this.j = c6Var.j;
        this.k = c6Var.k;
        int[] iArr = this.l;
        int[] iArr2 = c6Var.l;
        iArr[0] = iArr2[0];
        iArr[1] = iArr2[1];
        this.m = c6Var.m;
        this.n = c6Var.n;
        this.p = c6Var.p;
        this.q = c6Var.q;
        this.r = c6Var.r;
        this.s = c6Var.s;
        this.t = c6Var.t;
        this.u = c6Var.u;
        this.v = c6Var.v;
        int[] iArr3 = c6Var.w;
        this.w = Arrays.copyOf(iArr3, iArr3.length);
        this.x = c6Var.x;
        this.y = c6Var.y;
        this.z = c6Var.z;
        this.A.h();
        this.B.h();
        this.C.h();
        this.D.h();
        this.E.h();
        this.F.h();
        this.G.h();
        this.H.h();
        this.L = (a[]) Arrays.copyOf(this.L, 2);
        this.M = this.M == null ? null : map.get(c6Var.M);
        this.N = c6Var.N;
        this.O = c6Var.O;
        this.P = c6Var.P;
        this.Q = c6Var.Q;
        this.R = c6Var.R;
        this.S = c6Var.S;
        this.T = c6Var.T;
        this.U = c6Var.U;
        this.V = c6Var.V;
        this.W = c6Var.W;
        this.X = c6Var.X;
        this.Y = c6Var.Y;
        this.Z = c6Var.Z;
        this.a0 = c6Var.a0;
        this.b0 = c6Var.b0;
        this.c0 = c6Var.c0;
        this.d0 = c6Var.d0;
        this.e0 = c6Var.e0;
        this.f0 = c6Var.f0;
        this.g0 = c6Var.g0;
        this.h0 = c6Var.h0;
        this.i0 = c6Var.i0;
        this.j0 = c6Var.j0;
        this.k0 = c6Var.k0;
        this.l0 = c6Var.l0;
        this.m0 = c6Var.m0;
        this.n0 = c6Var.n0;
        this.o0 = c6Var.o0;
        this.p0 = c6Var.p0;
        this.q0 = c6Var.q0;
        this.r0 = c6Var.r0;
        this.s0 = c6Var.s0;
        this.t0 = c6Var.t0;
        this.u0 = c6Var.u0;
        this.v0 = c6Var.v0;
        this.w0 = c6Var.w0;
        float[] fArr = this.x0;
        float[] fArr2 = c6Var.x0;
        fArr[0] = fArr2[0];
        fArr[1] = fArr2[1];
        c6[] c6VarArr = this.y0;
        c6[] c6VarArr2 = c6Var.y0;
        c6VarArr[0] = c6VarArr2[0];
        c6VarArr[1] = c6VarArr2[1];
        c6[] c6VarArr3 = this.z0;
        c6[] c6VarArr4 = c6Var.z0;
        c6VarArr3[0] = c6VarArr4[0];
        c6VarArr3[1] = c6VarArr4[1];
        c6 c6Var2 = c6Var.A0;
        this.A0 = c6Var2 == null ? null : map.get(c6Var2);
        c6 c6Var3 = c6Var.B0;
        this.B0 = c6Var3 != null ? map.get(c6Var3) : null;
    }

    public void j(u5 u5Var) {
        u5Var.l(this.A);
        u5Var.l(this.B);
        u5Var.l(this.C);
        u5Var.l(this.D);
        if (this.X > 0) {
            u5Var.l(this.E);
        }
    }

    public b6 k(b6.a aVar) {
        switch (aVar) {
            case NONE:
                return null;
            case LEFT:
                return this.A;
            case TOP:
                return this.B;
            case RIGHT:
                return this.C;
            case BOTTOM:
                return this.D;
            case BASELINE:
                return this.E;
            case CENTER:
                return this.H;
            case CENTER_X:
                return this.F;
            case CENTER_Y:
                return this.G;
            default:
                throw new AssertionError(aVar.name());
        }
    }

    public int l() {
        return v() + this.O;
    }

    public a m(int i) {
        if (i == 0) {
            return o();
        }
        if (i == 1) {
            return s();
        }
        return null;
    }

    public int n() {
        if (this.e0 == 8) {
            return 0;
        }
        return this.O;
    }

    public a o() {
        return this.L[0];
    }

    public c6 p(int i) {
        b6 b6Var;
        b6 b6Var2;
        if (i != 0) {
            if (i == 1 && (b6Var2 = (b6Var = this.D).d) != null && b6Var2.d == b6Var) {
                return b6Var2.b;
            }
            return null;
        }
        b6 b6Var3 = this.C;
        b6 b6Var4 = b6Var3.d;
        if (b6Var4 == null || b6Var4.d != b6Var3) {
            return null;
        }
        return b6Var4.b;
    }

    public c6 q(int i) {
        b6 b6Var;
        b6 b6Var2;
        if (i != 0) {
            if (i == 1 && (b6Var2 = (b6Var = this.B).d) != null && b6Var2.d == b6Var) {
                return b6Var2.b;
            }
            return null;
        }
        b6 b6Var3 = this.A;
        b6 b6Var4 = b6Var3.d;
        if (b6Var4 == null || b6Var4.d != b6Var3) {
            return null;
        }
        return b6Var4.b;
    }

    public int r() {
        return u() + this.N;
    }

    public a s() {
        return this.L[1];
    }

    public int t() {
        if (this.e0 == 8) {
            return 0;
        }
        return this.N;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.g0 != null ? jo.s(jo.z("type: "), this.g0, StringUtils.SPACE) : "");
        sb.append(this.f0 != null ? jo.s(jo.z("id: "), this.f0, StringUtils.SPACE) : "");
        sb.append("(");
        sb.append(this.R);
        sb.append(", ");
        sb.append(this.S);
        sb.append(") - (");
        sb.append(this.N);
        sb.append(" x ");
        return jo.q(sb, this.O, ")");
    }

    public int u() {
        c6 c6Var = this.M;
        return (c6Var == null || !(c6Var instanceof d6)) ? this.R : ((d6) c6Var).I0 + this.R;
    }

    public int v() {
        c6 c6Var = this.M;
        return (c6Var == null || !(c6Var instanceof d6)) ? this.S : ((d6) c6Var).J0 + this.S;
    }

    public final boolean w(int i) {
        int i2 = i * 2;
        b6[] b6VarArr = this.I;
        if (b6VarArr[i2].d != null && b6VarArr[i2].d.d != b6VarArr[i2]) {
            int i3 = i2 + 1;
            if (b6VarArr[i3].d != null && b6VarArr[i3].d.d == b6VarArr[i3]) {
                return true;
            }
        }
        return false;
    }

    public boolean x() {
        b6 b6Var = this.A;
        b6 b6Var2 = b6Var.d;
        if (b6Var2 != null && b6Var2.d == b6Var) {
            return true;
        }
        b6 b6Var3 = this.C;
        b6 b6Var4 = b6Var3.d;
        return b6Var4 != null && b6Var4.d == b6Var3;
    }

    public boolean y() {
        b6 b6Var = this.B;
        b6 b6Var2 = b6Var.d;
        if (b6Var2 != null && b6Var2.d == b6Var) {
            return true;
        }
        b6 b6Var3 = this.D;
        b6 b6Var4 = b6Var3.d;
        return b6Var4 != null && b6Var4.d == b6Var3;
    }

    public void z() {
        this.A.h();
        this.B.h();
        this.C.h();
        this.D.h();
        this.E.h();
        this.F.h();
        this.G.h();
        this.H.h();
        this.M = null;
        this.x = 0.0f;
        this.N = 0;
        this.O = 0;
        this.P = 0.0f;
        this.Q = -1;
        this.R = 0;
        this.S = 0;
        this.V = 0;
        this.W = 0;
        this.X = 0;
        this.Y = 0;
        this.Z = 0;
        this.a0 = 0.5f;
        this.b0 = 0.5f;
        a[] aVarArr = this.L;
        a aVar = a.FIXED;
        aVarArr[0] = aVar;
        aVarArr[1] = aVar;
        this.c0 = null;
        this.d0 = 0;
        this.e0 = 0;
        this.g0 = null;
        this.p0 = false;
        this.q0 = false;
        this.t0 = 0;
        this.u0 = 0;
        this.v0 = false;
        this.w0 = false;
        float[] fArr = this.x0;
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        this.h = -1;
        this.i = -1;
        int[] iArr = this.w;
        iArr[0] = Integer.MAX_VALUE;
        iArr[1] = Integer.MAX_VALUE;
        this.j = 0;
        this.k = 0;
        this.o = 1.0f;
        this.r = 1.0f;
        this.n = Integer.MAX_VALUE;
        this.q = Integer.MAX_VALUE;
        this.m = 0;
        this.p = 0;
        this.u = -1;
        this.v = 1.0f;
        this.r0 = false;
        this.s0 = false;
        boolean[] zArr = this.f;
        zArr[0] = true;
        zArr[1] = true;
        boolean[] zArr2 = this.K;
        zArr2[0] = false;
        zArr2[1] = false;
    }
}
