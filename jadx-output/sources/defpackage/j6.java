package defpackage;

import androidx.constraintlayout.widget.ConstraintLayout;
import defpackage.c6;
import defpackage.m6;

/* loaded from: classes.dex */
public class j6 extends h6 {
    public int E0 = 0;
    public int F0 = 0;
    public int G0 = 0;
    public int H0 = 0;
    public int I0 = 0;
    public int J0 = 0;
    public boolean K0 = false;
    public int L0 = 0;
    public int M0 = 0;
    public m6.a N0 = new m6.a();
    public m6.b O0 = null;

    public void L(int i, int i2, int i3, int i4) {
    }

    public void M(c6 c6Var, c6.a aVar, int i, c6.a aVar2, int i2) {
        m6.b bVar;
        c6 c6Var2;
        while (true) {
            bVar = this.O0;
            if (bVar != null || (c6Var2 = this.M) == null) {
                break;
            } else {
                this.O0 = ((d6) c6Var2).F0;
            }
        }
        m6.a aVar3 = this.N0;
        aVar3.a = aVar;
        aVar3.b = aVar2;
        aVar3.c = i;
        aVar3.d = i2;
        ((ConstraintLayout.b) bVar).a(c6Var, aVar3);
        c6Var.I(this.N0.e);
        c6Var.D(this.N0.f);
        m6.a aVar4 = this.N0;
        c6Var.y = aVar4.h;
        c6Var.C(aVar4.g);
    }

    @Override // defpackage.h6, defpackage.g6
    public void c(d6 d6Var) {
        for (int i = 0; i < this.D0; i++) {
            c6 c6Var = this.C0[i];
        }
    }
}
