package defpackage;

import defpackage.n91;

/* loaded from: classes.dex */
public final class u91 implements cb3<n91.a> {
    public final n91 a;

    public u91(n91 n91Var) {
        this.a = n91Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        n91 n91Var = this.a;
        n91.a aVar = new n91.a();
        aVar.a = n91Var.a;
        aVar.b = n91Var.b;
        aVar.d = n91Var.d;
        aVar.c = n91Var.c;
        return aVar;
    }
}
