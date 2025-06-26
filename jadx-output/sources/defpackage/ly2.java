package defpackage;

import defpackage.g23;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class ly2 extends zw2<a13> {
    public ly2() {
        super(a13.class, new ky2(sw2.class));
    }

    @Override // defpackage.zw2
    public final String a() {
        return "type.googleapis.com/google.crypto.tink.AesGcmSivKey";
    }

    @Override // defpackage.zw2
    public final g23.a c() {
        return g23.a.SYMMETRIC;
    }

    @Override // defpackage.zw2
    public final bx2<d13, a13> e() {
        return new ny2(this, d13.class);
    }

    @Override // defpackage.zw2
    public final /* synthetic */ void f(e83 e83Var) throws GeneralSecurityException {
        a13 a13Var = (a13) e83Var;
        p43.a(a13Var.x());
        p43.b(a13Var.A().size());
    }

    @Override // defpackage.zw2
    public final /* synthetic */ e83 g(k53 k53Var) throws e73 {
        return a13.E(k53Var, e63.a());
    }
}
