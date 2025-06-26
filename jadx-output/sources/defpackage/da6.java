package defpackage;

import defpackage.la6;

/* loaded from: classes.dex */
public class da6 implements ga6 {
    public final f45<String> a;

    public da6(f45<String> f45Var) {
        this.a = f45Var;
    }

    @Override // defpackage.ga6
    public boolean a(Exception exc) {
        return false;
    }

    @Override // defpackage.ga6
    public boolean b(ma6 ma6Var) {
        if (!(ma6Var.f() == la6.a.UNREGISTERED) && !ma6Var.j() && !ma6Var.h()) {
            return false;
        }
        this.a.b(ma6Var.c());
        return true;
    }
}
