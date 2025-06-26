package defpackage;

import defpackage.g23;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class wy2 extends zw2<d33> {
    public wy2() {
        super(d33.class, new zy2(sw2.class));
    }

    @Override // defpackage.zw2
    public final String a() {
        return "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key";
    }

    @Override // defpackage.zw2
    public final g23.a c() {
        return g23.a.SYMMETRIC;
    }

    @Override // defpackage.zw2
    public final bx2<e33, d33> e() {
        return new yy2(this, e33.class);
    }

    @Override // defpackage.zw2
    public final /* synthetic */ void f(e83 e83Var) throws GeneralSecurityException {
        d33 d33Var = (d33) e83Var;
        p43.a(d33Var.x());
        if (d33Var.A().size() != 32) {
            throw new GeneralSecurityException("invalid XChaCha20Poly1305Key: incorrect key length");
        }
    }

    @Override // defpackage.zw2
    public final /* synthetic */ e83 g(k53 k53Var) throws e73 {
        return d33.E(k53Var, e63.a());
    }
}
