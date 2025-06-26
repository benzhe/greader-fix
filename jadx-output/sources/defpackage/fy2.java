package defpackage;

import defpackage.g23;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class fy2 extends zw2<r03> {
    public fy2() {
        super(r03.class, new dy2(sw2.class));
    }

    @Override // defpackage.zw2
    public final String a() {
        return "type.googleapis.com/google.crypto.tink.AesEaxKey";
    }

    @Override // defpackage.zw2
    public final g23.a c() {
        return g23.a.SYMMETRIC;
    }

    @Override // defpackage.zw2
    public final bx2<s03, r03> e() {
        return new hy2(this, s03.class);
    }

    @Override // defpackage.zw2
    public final /* synthetic */ void f(e83 e83Var) throws GeneralSecurityException {
        r03 r03Var = (r03) e83Var;
        p43.a(r03Var.x());
        p43.b(r03Var.B().size());
        if (r03Var.D().x() != 12 && r03Var.D().x() != 16) {
            throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
        }
    }

    @Override // defpackage.zw2
    public final /* synthetic */ e83 g(k53 k53Var) throws e73 {
        return r03.G(k53Var, e63.a());
    }
}
