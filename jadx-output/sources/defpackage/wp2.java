package defpackage;

import java.util.Map;

/* loaded from: classes.dex */
public final class wp2 implements pp2 {
    public final mp2 a;
    public final aq2 b;
    public final yp2 c;

    public wp2(mp2 mp2Var, aq2 aq2Var, yp2 yp2Var) {
        this.a = mp2Var;
        this.b = aq2Var;
        this.c = yp2Var;
    }

    @Override // defpackage.pp2
    public final String a(qp2 qp2Var) {
        aq2 aq2Var = this.b;
        Map<String, String> mapE = qp2Var.e();
        this.c.a(mapE);
        return aq2Var.a(mapE);
    }

    @Override // defpackage.pp2
    public final void b(qp2 qp2Var) {
        this.a.a(a(qp2Var));
    }
}
