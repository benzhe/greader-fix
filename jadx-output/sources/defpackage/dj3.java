package defpackage;

/* loaded from: classes.dex */
public final class dj3 implements yi3 {
    public final /* synthetic */ int e;
    public final /* synthetic */ aj3 f;

    public dj3(aj3 aj3Var, int i) {
        this.f = aj3Var;
        this.e = i;
    }

    @Override // defpackage.yi3
    public final void f(se3 se3Var, Object obj) {
        aj3 aj3Var = this.f;
        int i = this.e;
        if (aj3Var.l == null) {
            int iG = se3Var.g();
            for (int i2 = 0; i2 < iG; i2++) {
                se3Var.c(i2, aj3Var.g);
            }
            if (aj3Var.k == -1) {
                aj3Var.k = se3Var.h();
            } else {
                cj3 cj3Var = se3Var.h() != aj3Var.k ? new cj3(1) : null;
                aj3Var.l = cj3Var;
            }
            aj3Var.l = cj3Var;
        }
        if (aj3Var.l != null) {
            return;
        }
        aj3Var.f.remove(aj3Var.e[i]);
        if (i == 0) {
            aj3Var.i = se3Var;
            aj3Var.j = obj;
        }
        if (aj3Var.f.isEmpty()) {
            aj3Var.h.f(aj3Var.i, aj3Var.j);
        }
    }
}
