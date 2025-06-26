package defpackage;

import defpackage.g23;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class ez2 extends zw2<s13> {
    public ez2() {
        super(s13.class, new iz2(vw2.class));
    }

    @Override // defpackage.zw2
    public final String a() {
        return "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey";
    }

    @Override // defpackage.zw2
    public final g23.a c() {
        return g23.a.ASYMMETRIC_PUBLIC;
    }

    @Override // defpackage.zw2
    public final /* synthetic */ void f(e83 e83Var) throws GeneralSecurityException {
        s13 s13Var = (s13) e83Var;
        p43.a(s13Var.x());
        c50.f2(s13Var.D());
    }

    @Override // defpackage.zw2
    public final /* synthetic */ e83 g(k53 k53Var) throws e73 {
        return s13.J(k53Var, e63.a());
    }
}
