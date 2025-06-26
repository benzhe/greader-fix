package defpackage;

import java.security.GeneralSecurityException;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public class ux2 implements kx2<sw2, sw2> {

    public static class a implements sw2 {
        public final hx2<sw2> a;

        public a(hx2 hx2Var, wx2 wx2Var) {
            this.a = hx2Var;
        }

        @Override // defpackage.sw2
        public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
            return c50.C2(this.a.b.a(), this.a.b.a.a(bArr, bArr2));
        }
    }

    static {
        Logger.getLogger(ux2.class.getName());
    }

    @Override // defpackage.kx2
    public final Class<sw2> a() {
        return sw2.class;
    }

    @Override // defpackage.kx2
    public final /* synthetic */ sw2 b(hx2<sw2> hx2Var) throws GeneralSecurityException {
        return new a(hx2Var, null);
    }

    @Override // defpackage.kx2
    public final Class<sw2> c() {
        return sw2.class;
    }
}
