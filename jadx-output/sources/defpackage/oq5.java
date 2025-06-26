package defpackage;

import defpackage.fq5;

/* loaded from: classes.dex */
public class oq5 extends eq5 {
    public final bu5 d;

    public oq5(eu5 eu5Var, fq5.a aVar, bd6 bd6Var) {
        super(eu5Var, aVar, bd6Var);
        bx5.c(lu5.k(bd6Var), "KeyFieldFilter expects a ReferenceValue", new Object[0]);
        this.d = bu5.k(this.b.V());
    }

    @Override // defpackage.eq5, defpackage.fq5
    public boolean b(yt5 yt5Var) {
        return d(yt5Var.a.compareTo(this.d));
    }
}
