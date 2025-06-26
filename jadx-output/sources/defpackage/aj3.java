package defpackage;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class aj3 implements zi3 {
    public final zi3[] e;
    public final ArrayList<zi3> f;
    public yi3 h;
    public se3 i;
    public Object j;
    public cj3 l;
    public final te3 g = new te3();
    public int k = -1;

    public aj3(zi3... zi3VarArr) {
        this.e = zi3VarArr;
        this.f = new ArrayList<>(Arrays.asList(zi3VarArr));
    }

    @Override // defpackage.zi3
    public final void a(de3 de3Var, boolean z, yi3 yi3Var) {
        this.h = yi3Var;
        int i = 0;
        while (true) {
            zi3[] zi3VarArr = this.e;
            if (i >= zi3VarArr.length) {
                return;
            }
            zi3VarArr[i].a(de3Var, false, new dj3(this, i));
            i++;
        }
    }

    @Override // defpackage.zi3
    public final xi3 b(int i, ik3 ik3Var) {
        int length = this.e.length;
        xi3[] xi3VarArr = new xi3[length];
        for (int i2 = 0; i2 < length; i2++) {
            xi3VarArr[i2] = this.e[i2].b(i, ik3Var);
        }
        return new bj3(xi3VarArr);
    }

    @Override // defpackage.zi3
    public final void c(xi3 xi3Var) {
        bj3 bj3Var = (bj3) xi3Var;
        int i = 0;
        while (true) {
            zi3[] zi3VarArr = this.e;
            if (i >= zi3VarArr.length) {
                return;
            }
            zi3VarArr[i].c(bj3Var.e[i]);
            i++;
        }
    }

    @Override // defpackage.zi3
    public final void d() throws IOException {
        cj3 cj3Var = this.l;
        if (cj3Var != null) {
            throw cj3Var;
        }
        for (zi3 zi3Var : this.e) {
            zi3Var.d();
        }
    }

    @Override // defpackage.zi3
    public final void e() {
        for (zi3 zi3Var : this.e) {
            zi3Var.e();
        }
    }
}
