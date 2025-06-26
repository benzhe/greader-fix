package defpackage;

import defpackage.g23;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class my2 extends zw2<e13> {
    public my2() {
        super(e13.class, new py2(sw2.class));
    }

    @Override // defpackage.zw2
    public final String a() {
        return "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key";
    }

    @Override // defpackage.zw2
    public final g23.a c() {
        return g23.a.SYMMETRIC;
    }

    @Override // defpackage.zw2
    public final bx2<i13, e13> e() {
        return new oy2(this, i13.class);
    }

    @Override // defpackage.zw2
    public final /* synthetic */ void f(e83 e83Var) throws GeneralSecurityException {
        e13 e13Var = (e13) e83Var;
        p43.a(e13Var.x());
        if (e13Var.A().size() != 32) {
            throw new GeneralSecurityException("invalid ChaCha20Poly1305Key: incorrect key length");
        }
    }

    @Override // defpackage.zw2
    public final /* synthetic */ e83 g(k53 k53Var) throws e73 {
        return e13.E(k53Var, e63.a());
    }
}
