package defpackage;

import defpackage.fj4;
import defpackage.gp4;
import defpackage.lq4;
import defpackage.sf5;

/* loaded from: classes.dex */
public final class dj4 implements fj4.b {
    public static final sf5<?> b;
    public final bj4 a;

    static {
        sf5.b bVarA = sf5.a(fj4.b.class);
        bVarA.a(new ig5(bj4.class, 1, 0));
        bVarA.d(cj4.a);
        b = bVarA.b();
    }

    public dj4(bj4 bj4Var) {
        this.a = bj4Var;
    }

    @Override // fj4.b
    public final void a(gp4 gp4Var) throws NumberFormatException {
        bj4 bj4Var = this.a;
        gp4.a aVarP = gp4.p(gp4Var);
        lq4.a aVarP2 = lq4.p(gp4Var.q());
        if (aVarP2.g) {
            aVarP2.f();
            aVarP2.g = false;
        }
        lq4.s((lq4) aVarP2.f);
        aVarP.l(aVarP2);
        bj4Var.a((gp4) ((pk4) aVarP.j()));
    }
}
