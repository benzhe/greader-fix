package defpackage;

import defpackage.g23;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class gy2 extends zw2<w03> {
    public gy2() {
        super(w03.class, new jy2(sw2.class));
    }

    @Override // defpackage.zw2
    public final String a() {
        return "type.googleapis.com/google.crypto.tink.AesGcmKey";
    }

    @Override // defpackage.zw2
    public final g23.a c() {
        return g23.a.SYMMETRIC;
    }

    @Override // defpackage.zw2
    public final bx2<z03, w03> e() {
        return new iy2(this, z03.class);
    }

    @Override // defpackage.zw2
    public final /* synthetic */ void f(e83 e83Var) throws GeneralSecurityException {
        w03 w03Var = (w03) e83Var;
        p43.a(w03Var.x());
        p43.b(w03Var.A().size());
    }

    @Override // defpackage.zw2
    public final /* synthetic */ e83 g(k53 k53Var) throws e73 {
        return w03.E(k53Var, e63.a());
    }
}
