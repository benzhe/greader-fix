package defpackage;

import defpackage.g23;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zx2 extends zw2<k03> {
    public zx2() {
        super(k03.class, new cy2(i43.class));
    }

    public static void h(k03 k03Var) throws GeneralSecurityException {
        p43.a(k03Var.x());
        p43.b(k03Var.B().size());
        i(k03Var.D());
    }

    public static void i(o03 o03Var) throws GeneralSecurityException {
        if (o03Var.x() < 12 || o03Var.x() > 16) {
            throw new GeneralSecurityException("invalid IV size");
        }
    }

    @Override // defpackage.zw2
    public final String a() {
        return "type.googleapis.com/google.crypto.tink.AesCtrKey";
    }

    @Override // defpackage.zw2
    public final g23.a c() {
        return g23.a.SYMMETRIC;
    }

    @Override // defpackage.zw2
    public final bx2<n03, k03> e() {
        return new by2(this, n03.class);
    }

    @Override // defpackage.zw2
    public final /* synthetic */ void f(e83 e83Var) throws GeneralSecurityException {
        h((k03) e83Var);
    }

    @Override // defpackage.zw2
    public final /* synthetic */ e83 g(k53 k53Var) throws e73 {
        return k03.H(k53Var, e63.a());
    }
}
