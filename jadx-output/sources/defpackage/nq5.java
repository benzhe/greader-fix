package defpackage;

import defpackage.fq5;

/* loaded from: classes.dex */
public class nq5 extends eq5 {
    public nq5(eu5 eu5Var, bd6 bd6Var) {
        super(eu5Var, fq5.a.IN, bd6Var);
        bx5.c(lu5.f(bd6Var), "InFilter expects an ArrayValue", new Object[0]);
    }

    @Override // defpackage.eq5, defpackage.fq5
    public boolean b(yt5 yt5Var) {
        bd6 bd6VarB = yt5Var.b(this.c);
        return bd6VarB != null && lu5.d(this.b.N(), bd6VarB);
    }
}
