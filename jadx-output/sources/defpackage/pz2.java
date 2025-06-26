package defpackage;

import defpackage.g23;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class pz2 extends zw2<a03> {
    public pz2() {
        super(a03.class, new oz2(fx2.class));
    }

    public static void h(f03 f03Var) throws GeneralSecurityException {
        if (f03Var.x() < 10) {
            throw new GeneralSecurityException("tag size too short");
        }
        if (f03Var.x() > 16) {
            throw new GeneralSecurityException("tag size too long");
        }
    }

    @Override // defpackage.zw2
    public final String a() {
        return "type.googleapis.com/google.crypto.tink.AesCmacKey";
    }

    @Override // defpackage.zw2
    public final g23.a c() {
        return g23.a.SYMMETRIC;
    }

    @Override // defpackage.zw2
    public final bx2<b03, a03> e() {
        return new rz2(b03.class);
    }

    @Override // defpackage.zw2
    public final void f(e83 e83Var) throws GeneralSecurityException {
        a03 a03Var = (a03) e83Var;
        p43.a(a03Var.x());
        if (a03Var.B().size() != 32) {
            throw new GeneralSecurityException("AesCmacKey size wrong, must be 32 bytes");
        }
        h(a03Var.D());
    }

    @Override // defpackage.zw2
    public final /* synthetic */ e83 g(k53 k53Var) throws e73 {
        return a03.G(k53Var, e63.a());
    }
}
