package defpackage;

import defpackage.g23;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class ry2 extends zw2<q23> {
    public ry2() {
        super(q23.class, new qy2(sw2.class));
    }

    @Override // defpackage.zw2
    public final String a() {
        return "type.googleapis.com/google.crypto.tink.KmsAeadKey";
    }

    @Override // defpackage.zw2
    public final g23.a c() {
        return g23.a.REMOTE;
    }

    @Override // defpackage.zw2
    public final bx2<t23, q23> e() {
        return new ty2(this, t23.class);
    }

    @Override // defpackage.zw2
    public final /* synthetic */ void f(e83 e83Var) throws GeneralSecurityException {
        p43.a(((q23) e83Var).x());
    }

    @Override // defpackage.zw2
    public final /* synthetic */ e83 g(k53 k53Var) throws e73 {
        return q23.E(k53Var, e63.a());
    }
}
