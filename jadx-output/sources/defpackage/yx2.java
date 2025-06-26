package defpackage;

import defpackage.g23;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class yx2 extends zw2<g03> {
    public yx2() {
        super(g03.class, new xx2(sw2.class));
    }

    @Override // defpackage.zw2
    public final String a() {
        return "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey";
    }

    @Override // defpackage.zw2
    public final g23.a c() {
        return g23.a.SYMMETRIC;
    }

    @Override // defpackage.zw2
    public final bx2<j03, g03> e() {
        return new ay2(this, j03.class);
    }

    @Override // defpackage.zw2
    public final /* synthetic */ void f(e83 e83Var) throws GeneralSecurityException {
        g03 g03Var = (g03) e83Var;
        p43.a(g03Var.x());
        new zx2();
        zx2.h(g03Var.B());
        new qz2();
        qz2.h(g03Var.D());
    }

    @Override // defpackage.zw2
    public final /* synthetic */ e83 g(k53 k53Var) throws e73 {
        return g03.G(k53Var, e63.a());
    }
}
