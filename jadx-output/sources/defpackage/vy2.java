package defpackage;

import defpackage.g23;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class vy2 extends zw2<u23> {
    public vy2() {
        super(u23.class, new uy2(sw2.class));
    }

    @Override // defpackage.zw2
    public final String a() {
        return "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey";
    }

    @Override // defpackage.zw2
    public final g23.a c() {
        return g23.a.REMOTE;
    }

    @Override // defpackage.zw2
    public final bx2<x23, u23> e() {
        return new xy2(this, x23.class);
    }

    @Override // defpackage.zw2
    public final /* synthetic */ void f(e83 e83Var) throws GeneralSecurityException {
        p43.a(((u23) e83Var).x());
    }

    @Override // defpackage.zw2
    public final /* synthetic */ e83 g(k53 k53Var) throws e73 {
        return u23.E(k53Var, e63.a());
    }
}
