package defpackage;

import defpackage.u5;
import defpackage.x5;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class s5 implements u5.a {
    public a d;
    public x5 a = null;
    public float b = 0.0f;
    public ArrayList<x5> c = new ArrayList<>();
    public boolean e = false;

    public interface a {
        int a();

        x5 b(int i);

        void c();

        void clear();

        float d(int i);

        void e(x5 x5Var, float f, boolean z);

        float f(x5 x5Var);

        boolean g(x5 x5Var);

        float h(s5 s5Var, boolean z);

        void i(x5 x5Var, float f);

        float j(x5 x5Var, boolean z);

        void k(float f);
    }

    public s5() {
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0021  */
    @Override // u5.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(defpackage.x5 r3) {
        /*
            r2 = this;
            int r0 = r3.d
            r1 = 1
            if (r0 != r1) goto L6
            goto L21
        L6:
            r1 = 2
            if (r0 != r1) goto Lc
            r0 = 1148846080(0x447a0000, float:1000.0)
            goto L23
        Lc:
            r1 = 3
            if (r0 != r1) goto L13
            r0 = 1232348160(0x49742400, float:1000000.0)
            goto L23
        L13:
            r1 = 4
            if (r0 != r1) goto L1a
            r0 = 1315859240(0x4e6e6b28, float:1.0E9)
            goto L23
        L1a:
            r1 = 5
            if (r0 != r1) goto L21
            r0 = 1399379109(0x5368d4a5, float:1.0E12)
            goto L23
        L21:
            r0 = 1065353216(0x3f800000, float:1.0)
        L23:
            s5$a r1 = r2.d
            r1.i(r3, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.s5.a(x5):void");
    }

    @Override // u5.a
    public x5 b(u5 u5Var, boolean[] zArr) {
        return i(zArr, null);
    }

    public s5 c(u5 u5Var, int i) {
        this.d.i(u5Var.k(i, "ep"), 1.0f);
        this.d.i(u5Var.k(i, "em"), -1.0f);
        return this;
    }

    @Override // u5.a
    public void clear() {
        this.d.clear();
        this.a = null;
        this.b = 0.0f;
    }

    public s5 d(x5 x5Var, x5 x5Var2, x5 x5Var3, x5 x5Var4, float f) {
        this.d.i(x5Var, -1.0f);
        this.d.i(x5Var2, 1.0f);
        this.d.i(x5Var3, f);
        this.d.i(x5Var4, -f);
        return this;
    }

    public s5 e(x5 x5Var, x5 x5Var2, x5 x5Var3, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.b = i;
        }
        if (z) {
            this.d.i(x5Var, 1.0f);
            this.d.i(x5Var2, -1.0f);
            this.d.i(x5Var3, -1.0f);
        } else {
            this.d.i(x5Var, -1.0f);
            this.d.i(x5Var2, 1.0f);
            this.d.i(x5Var3, 1.0f);
        }
        return this;
    }

    public s5 f(x5 x5Var, x5 x5Var2, x5 x5Var3, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.b = i;
        }
        if (z) {
            this.d.i(x5Var, 1.0f);
            this.d.i(x5Var2, -1.0f);
            this.d.i(x5Var3, 1.0f);
        } else {
            this.d.i(x5Var, -1.0f);
            this.d.i(x5Var2, 1.0f);
            this.d.i(x5Var3, -1.0f);
        }
        return this;
    }

    public s5 g(x5 x5Var, x5 x5Var2, x5 x5Var3, x5 x5Var4, float f) {
        this.d.i(x5Var3, 0.5f);
        this.d.i(x5Var4, 0.5f);
        this.d.i(x5Var, -0.5f);
        this.d.i(x5Var2, -0.5f);
        this.b = -f;
        return this;
    }

    public final boolean h(x5 x5Var) {
        return x5Var.l <= 1;
    }

    public final x5 i(boolean[] zArr, x5 x5Var) {
        x5.a aVar;
        int iA = this.d.a();
        x5 x5Var2 = null;
        float f = 0.0f;
        for (int i = 0; i < iA; i++) {
            float fD = this.d.d(i);
            if (fD < 0.0f) {
                x5 x5VarB = this.d.b(i);
                if ((zArr == null || !zArr[x5VarB.b]) && x5VarB != x5Var && (((aVar = x5VarB.i) == x5.a.SLACK || aVar == x5.a.ERROR) && fD < f)) {
                    f = fD;
                    x5Var2 = x5VarB;
                }
            }
        }
        return x5Var2;
    }

    public void j(x5 x5Var) {
        x5 x5Var2 = this.a;
        if (x5Var2 != null) {
            this.d.i(x5Var2, -1.0f);
            this.a = null;
        }
        float fJ = this.d.j(x5Var, true) * (-1.0f);
        this.a = x5Var;
        if (fJ == 1.0f) {
            return;
        }
        this.b /= fJ;
        this.d.k(fJ);
    }

    public void k(x5 x5Var, boolean z) {
        if (x5Var.f) {
            float f = this.d.f(x5Var);
            this.b = (x5Var.e * f) + this.b;
            this.d.j(x5Var, z);
            if (z) {
                x5Var.b(this);
            }
        }
    }

    public void l(s5 s5Var, boolean z) {
        float fH = this.d.h(s5Var, z);
        this.b = (s5Var.b * fH) + this.b;
        if (z) {
            s5Var.a.b(this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x007f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            r9 = this;
            x5 r0 = r9.a
            if (r0 != 0) goto L7
            java.lang.String r0 = "0"
            goto L16
        L7:
            java.lang.String r0 = ""
            java.lang.StringBuilder r0 = defpackage.jo.z(r0)
            x5 r1 = r9.a
            r0.append(r1)
            java.lang.String r0 = r0.toString()
        L16:
            java.lang.String r1 = " = "
            java.lang.String r0 = defpackage.jo.n(r0, r1)
            float r1 = r9.b
            r2 = 0
            r3 = 0
            int r1 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            if (r1 == 0) goto L33
            java.lang.StringBuilder r0 = defpackage.jo.z(r0)
            float r1 = r9.b
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r1 = 1
            goto L34
        L33:
            r1 = 0
        L34:
            s5$a r4 = r9.d
            int r4 = r4.a()
        L3a:
            if (r3 >= r4) goto L9a
            s5$a r5 = r9.d
            x5 r5 = r5.b(r3)
            if (r5 != 0) goto L45
            goto L97
        L45:
            s5$a r6 = r9.d
            float r6 = r6.d(r3)
            int r7 = (r6 > r2 ? 1 : (r6 == r2 ? 0 : -1))
            if (r7 != 0) goto L50
            goto L97
        L50:
            java.lang.String r5 = r5.toString()
            r8 = -1082130432(0xffffffffbf800000, float:-1.0)
            if (r1 != 0) goto L63
            int r1 = (r6 > r2 ? 1 : (r6 == r2 ? 0 : -1))
            if (r1 >= 0) goto L74
            java.lang.String r1 = "- "
            java.lang.String r0 = defpackage.jo.n(r0, r1)
            goto L72
        L63:
            if (r7 <= 0) goto L6c
            java.lang.String r1 = " + "
            java.lang.String r0 = defpackage.jo.n(r0, r1)
            goto L74
        L6c:
            java.lang.String r1 = " - "
            java.lang.String r0 = defpackage.jo.n(r0, r1)
        L72:
            float r6 = r6 * r8
        L74:
            r1 = 1065353216(0x3f800000, float:1.0)
            int r1 = (r6 > r1 ? 1 : (r6 == r1 ? 0 : -1))
            if (r1 != 0) goto L7f
            java.lang.String r0 = defpackage.jo.n(r0, r5)
            goto L96
        L7f:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r0)
            r1.append(r6)
            java.lang.String r0 = " "
            r1.append(r0)
            r1.append(r5)
            java.lang.String r0 = r1.toString()
        L96:
            r1 = 1
        L97:
            int r3 = r3 + 1
            goto L3a
        L9a:
            if (r1 != 0) goto La2
            java.lang.String r1 = "0.0"
            java.lang.String r0 = defpackage.jo.n(r0, r1)
        La2:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.s5.toString():java.lang.String");
    }

    public s5(t5 t5Var) {
        this.d = new r5(this, t5Var);
    }
}
