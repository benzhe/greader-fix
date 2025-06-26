package defpackage;

import java.util.Map;

/* loaded from: classes.dex */
public final class fq2 implements pp2 {
    public final aq2 a;
    public final yp2 b;

    public fq2(aq2 aq2Var, yp2 yp2Var) {
        this.a = aq2Var;
        this.b = yp2Var;
    }

    @Override // defpackage.pp2
    public final String a(qp2 qp2Var) {
        aq2 aq2Var = this.a;
        Map<String, String> mapE = qp2Var.e();
        this.b.a(mapE);
        return aq2Var.a(mapE);
    }

    @Override // defpackage.pp2
    public final void b(qp2 qp2Var) {
    }
}
