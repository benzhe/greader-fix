package defpackage;

import defpackage.b6;
import defpackage.c6;
import java.util.HashMap;

/* loaded from: classes.dex */
public class f6 extends c6 {
    public float C0 = -1.0f;
    public int D0 = -1;
    public int E0 = -1;
    public b6 F0 = this.B;
    public int G0 = 0;

    public f6() {
        this.J.clear();
        this.J.add(this.F0);
        int length = this.I.length;
        for (int i = 0; i < length; i++) {
            this.I[i] = this.F0;
        }
    }

    @Override // defpackage.c6
    public void K(u5 u5Var) {
        if (this.M == null) {
            return;
        }
        int iO = u5Var.o(this.F0);
        if (this.G0 == 1) {
            this.R = iO;
            this.S = 0;
            D(this.M.n());
            I(0);
            return;
        }
        this.R = 0;
        this.S = iO;
        I(this.M.t());
        D(0);
    }

    public void L(int i) {
        if (this.G0 == i) {
            return;
        }
        this.G0 = i;
        this.J.clear();
        if (this.G0 == 1) {
            this.F0 = this.A;
        } else {
            this.F0 = this.B;
        }
        this.J.add(this.F0);
        int length = this.I.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.I[i2] = this.F0;
        }
    }

    @Override // defpackage.c6
    public void d(u5 u5Var) {
        c6.a aVar = c6.a.WRAP_CONTENT;
        d6 d6Var = (d6) this.M;
        if (d6Var == null) {
            return;
        }
        b6 b6VarK = d6Var.k(b6.a.LEFT);
        b6 b6VarK2 = d6Var.k(b6.a.RIGHT);
        c6 c6Var = this.M;
        boolean z = c6Var != null && c6Var.L[0] == aVar;
        if (this.G0 == 0) {
            b6VarK = d6Var.k(b6.a.TOP);
            b6VarK2 = d6Var.k(b6.a.BOTTOM);
            c6 c6Var2 = this.M;
            z = c6Var2 != null && c6Var2.L[1] == aVar;
        }
        if (this.D0 != -1) {
            x5 x5VarL = u5Var.l(this.F0);
            u5Var.d(x5VarL, u5Var.l(b6VarK), this.D0, 8);
            if (z) {
                u5Var.f(u5Var.l(b6VarK2), x5VarL, 0, 5);
                return;
            }
            return;
        }
        if (this.E0 != -1) {
            x5 x5VarL2 = u5Var.l(this.F0);
            x5 x5VarL3 = u5Var.l(b6VarK2);
            u5Var.d(x5VarL2, x5VarL3, -this.E0, 8);
            if (z) {
                u5Var.f(x5VarL2, u5Var.l(b6VarK), 0, 5);
                u5Var.f(x5VarL3, x5VarL2, 0, 5);
                return;
            }
            return;
        }
        if (this.C0 != -1.0f) {
            x5 x5VarL4 = u5Var.l(this.F0);
            x5 x5VarL5 = u5Var.l(b6VarK2);
            float f = this.C0;
            s5 s5VarM = u5Var.m();
            s5VarM.d.i(x5VarL4, -1.0f);
            s5VarM.d.i(x5VarL5, f);
            u5Var.c(s5VarM);
        }
    }

    @Override // defpackage.c6
    public boolean e() {
        return true;
    }

    @Override // defpackage.c6
    public void i(c6 c6Var, HashMap<c6, c6> map) {
        super.i(c6Var, map);
        f6 f6Var = (f6) c6Var;
        this.C0 = f6Var.C0;
        this.D0 = f6Var.D0;
        this.E0 = f6Var.E0;
        L(f6Var.G0);
    }

    @Override // defpackage.c6
    public b6 k(b6.a aVar) {
        switch (aVar) {
            case NONE:
            case BASELINE:
            case CENTER:
            case CENTER_X:
            case CENTER_Y:
                return null;
            case LEFT:
            case RIGHT:
                if (this.G0 == 1) {
                    return this.F0;
                }
                break;
            case TOP:
            case BOTTOM:
                if (this.G0 == 0) {
                    return this.F0;
                }
                break;
        }
        throw new AssertionError(aVar.name());
    }
}
