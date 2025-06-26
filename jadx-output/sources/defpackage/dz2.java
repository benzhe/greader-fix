package defpackage;

import defpackage.g23;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class dz2 extends mx2<r13, s13> {
    public dz2() {
        super(r13.class, s13.class, new cz2(ww2.class));
    }

    @Override // defpackage.zw2
    public final String a() {
        return "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey";
    }

    @Override // defpackage.zw2
    public final g23.a c() {
        return g23.a.ASYMMETRIC_PRIVATE;
    }

    @Override // defpackage.zw2
    public final bx2<n13, r13> e() {
        return new gz2(this, n13.class);
    }

    @Override // defpackage.zw2
    public final void f(e83 e83Var) throws GeneralSecurityException {
        r13 r13Var = (r13) e83Var;
        if (r13Var.B().size() == 0) {
            throw new GeneralSecurityException("invalid ECIES private key");
        }
        p43.a(r13Var.x());
        c50.f2(r13Var.D().D());
    }

    @Override // defpackage.zw2
    public final /* synthetic */ e83 g(k53 k53Var) throws e73 {
        return r13.G(k53Var, e63.a());
    }
}
