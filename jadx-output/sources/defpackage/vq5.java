package defpackage;

import defpackage.fq5;

/* loaded from: classes.dex */
public class vq5 extends eq5 {
    public vq5(eu5 eu5Var, bd6 bd6Var) {
        super(eu5Var, fq5.a.NOT_IN, bd6Var);
        bx5.c(lu5.f(bd6Var), "NotInFilter expects an ArrayValue", new Object[0]);
    }

    @Override // defpackage.eq5, defpackage.fq5
    public boolean b(yt5 yt5Var) {
        bd6 bd6VarB;
        return (lu5.d(this.b.N(), lu5.b) || (bd6VarB = yt5Var.b(this.c)) == null || lu5.d(this.b.N(), bd6VarB)) ? false : true;
    }
}
