package defpackage;

import java.security.GeneralSecurityException;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public final class tz2 extends ax2<fx2, y13> {
    public tz2(Class cls) {
        super(cls);
    }

    @Override // defpackage.ax2
    public final /* synthetic */ fx2 a(y13 y13Var) throws GeneralSecurityException {
        y13 y13Var2 = y13Var;
        x13 x13VarY = y13Var2.D().y();
        SecretKeySpec secretKeySpec = new SecretKeySpec(y13Var2.B().d(), "HMAC");
        int iX = y13Var2.D().x();
        int i = vz2.a[x13VarY.ordinal()];
        if (i == 1) {
            return new l43(new j43("HMACSHA1", secretKeySpec), iX);
        }
        if (i == 2) {
            return new l43(new j43("HMACSHA256", secretKeySpec), iX);
        }
        if (i == 3) {
            return new l43(new j43("HMACSHA512", secretKeySpec), iX);
        }
        throw new GeneralSecurityException("unknown hash");
    }
}
