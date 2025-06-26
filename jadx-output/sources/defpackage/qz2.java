package defpackage;

import defpackage.g23;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class qz2 extends zw2<y13> {
    public qz2() {
        super(y13.class, new tz2(fx2.class));
    }

    public static void h(y13 y13Var) throws GeneralSecurityException {
        p43.a(y13Var.x());
        if (y13Var.B().size() < 16) {
            throw new GeneralSecurityException("key too short");
        }
        i(y13Var.D());
    }

    public static void i(c23 c23Var) throws GeneralSecurityException {
        if (c23Var.x() < 10) {
            throw new GeneralSecurityException("tag size too small");
        }
        int i = vz2.a[c23Var.y().ordinal()];
        if (i == 1) {
            if (c23Var.x() > 20) {
                throw new GeneralSecurityException("tag size too big");
            }
        } else if (i == 2) {
            if (c23Var.x() > 32) {
                throw new GeneralSecurityException("tag size too big");
            }
        } else {
            if (i != 3) {
                throw new GeneralSecurityException("unknown hash type");
            }
            if (c23Var.x() > 64) {
                throw new GeneralSecurityException("tag size too big");
            }
        }
    }

    @Override // defpackage.zw2
    public final String a() {
        return "type.googleapis.com/google.crypto.tink.HmacKey";
    }

    @Override // defpackage.zw2
    public final g23.a c() {
        return g23.a.SYMMETRIC;
    }

    @Override // defpackage.zw2
    public final bx2<b23, y13> e() {
        return new sz2(this, b23.class);
    }

    @Override // defpackage.zw2
    public final /* synthetic */ void f(e83 e83Var) throws GeneralSecurityException {
        h((y13) e83Var);
    }

    @Override // defpackage.zw2
    public final /* synthetic */ e83 g(k53 k53Var) throws e73 {
        return y13.H(k53Var, e63.a());
    }
}
