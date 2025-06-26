package defpackage;

import defpackage.c6;
import java.util.HashMap;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public class z5 extends h6 {
    public int E0 = 0;
    public boolean F0 = true;
    public int G0 = 0;

    @Override // defpackage.c6
    public void d(u5 u5Var) {
        b6[] b6VarArr;
        boolean z;
        int i;
        int i2;
        int i3;
        c6.a aVar = c6.a.MATCH_CONSTRAINT;
        b6[] b6VarArr2 = this.I;
        b6VarArr2[0] = this.A;
        b6VarArr2[2] = this.B;
        b6VarArr2[1] = this.C;
        b6VarArr2[3] = this.D;
        int i4 = 0;
        while (true) {
            b6VarArr = this.I;
            if (i4 >= b6VarArr.length) {
                break;
            }
            b6VarArr[i4].g = u5Var.l(b6VarArr[i4]);
            i4++;
        }
        int i5 = this.E0;
        if (i5 < 0 || i5 >= 4) {
            return;
        }
        b6 b6Var = b6VarArr[i5];
        for (int i6 = 0; i6 < this.D0; i6++) {
            c6 c6Var = this.C0[i6];
            if ((this.F0 || c6Var.e()) && ((((i2 = this.E0) == 0 || i2 == 1) && c6Var.o() == aVar && c6Var.A.d != null && c6Var.C.d != null) || (((i3 = this.E0) == 2 || i3 == 3) && c6Var.s() == aVar && c6Var.B.d != null && c6Var.D.d != null))) {
                z = true;
                break;
            }
        }
        z = false;
        boolean z2 = this.A.e() || this.C.e();
        boolean z3 = this.B.e() || this.D.e();
        int i7 = !z && (((i = this.E0) == 0 && z2) || ((i == 2 && z3) || ((i == 1 && z2) || (i == 3 && z3)))) ? 5 : 4;
        for (int i8 = 0; i8 < this.D0; i8++) {
            c6 c6Var2 = this.C0[i8];
            if (this.F0 || c6Var2.e()) {
                x5 x5VarL = u5Var.l(c6Var2.I[this.E0]);
                b6[] b6VarArr3 = c6Var2.I;
                int i9 = this.E0;
                b6VarArr3[i9].g = x5VarL;
                int i10 = (b6VarArr3[i9].d == null || b6VarArr3[i9].d.b != this) ? 0 : b6VarArr3[i9].e + 0;
                if (i9 == 0 || i9 == 2) {
                    x5 x5Var = b6Var.g;
                    int i11 = this.G0 - i10;
                    s5 s5VarM = u5Var.m();
                    x5 x5VarN = u5Var.n();
                    x5VarN.d = 0;
                    s5VarM.f(x5Var, x5VarL, x5VarN, i11);
                    u5Var.c(s5VarM);
                } else {
                    x5 x5Var2 = b6Var.g;
                    int i12 = this.G0 + i10;
                    s5 s5VarM2 = u5Var.m();
                    x5 x5VarN2 = u5Var.n();
                    x5VarN2.d = 0;
                    s5VarM2.e(x5Var2, x5VarL, x5VarN2, i12);
                    u5Var.c(s5VarM2);
                }
                u5Var.d(b6Var.g, x5VarL, this.G0 + i10, i7);
            }
        }
        int i13 = this.E0;
        if (i13 == 0) {
            u5Var.d(this.C.g, this.A.g, 0, 8);
            u5Var.d(this.A.g, this.M.C.g, 0, 4);
            u5Var.d(this.A.g, this.M.A.g, 0, 0);
            return;
        }
        if (i13 == 1) {
            u5Var.d(this.A.g, this.C.g, 0, 8);
            u5Var.d(this.A.g, this.M.A.g, 0, 4);
            u5Var.d(this.A.g, this.M.C.g, 0, 0);
        } else if (i13 == 2) {
            u5Var.d(this.D.g, this.B.g, 0, 8);
            u5Var.d(this.B.g, this.M.D.g, 0, 4);
            u5Var.d(this.B.g, this.M.B.g, 0, 0);
        } else if (i13 == 3) {
            u5Var.d(this.B.g, this.D.g, 0, 8);
            u5Var.d(this.B.g, this.M.B.g, 0, 4);
            u5Var.d(this.B.g, this.M.D.g, 0, 0);
        }
    }

    @Override // defpackage.c6
    public boolean e() {
        return true;
    }

    @Override // defpackage.h6, defpackage.c6
    public void i(c6 c6Var, HashMap<c6, c6> map) {
        super.i(c6Var, map);
        z5 z5Var = (z5) c6Var;
        this.E0 = z5Var.E0;
        this.F0 = z5Var.F0;
        this.G0 = z5Var.G0;
    }

    @Override // defpackage.c6
    public String toString() {
        String strS = jo.s(jo.z("[Barrier] "), this.f0, " {");
        for (int i = 0; i < this.D0; i++) {
            c6 c6Var = this.C0[i];
            if (i > 0) {
                strS = jo.n(strS, ", ");
            }
            StringBuilder sbZ = jo.z(strS);
            sbZ.append(c6Var.f0);
            strS = sbZ.toString();
        }
        return jo.n(strS, StringSubstitutor.DEFAULT_VAR_END);
    }
}
