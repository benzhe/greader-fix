package defpackage;

import java.security.GeneralSecurityException;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public class xz2 implements kx2<fx2, fx2> {

    public static class a implements fx2 {
        public final hx2<fx2> a;
        public final byte[] b = {0};

        public a(hx2 hx2Var, wz2 wz2Var) {
            this.a = hx2Var;
        }

        @Override // defpackage.fx2
        public final byte[] a(byte[] bArr) throws GeneralSecurityException {
            return this.a.b.d.equals(y23.LEGACY) ? c50.C2(this.a.b.a(), this.a.b.a.a(c50.C2(bArr, this.b))) : c50.C2(this.a.b.a(), this.a.b.a.a(bArr));
        }
    }

    static {
        Logger.getLogger(xz2.class.getName());
    }

    @Override // defpackage.kx2
    public final Class<fx2> a() {
        return fx2.class;
    }

    @Override // defpackage.kx2
    public final /* synthetic */ fx2 b(hx2<fx2> hx2Var) throws GeneralSecurityException {
        return new a(hx2Var, null);
    }

    @Override // defpackage.kx2
    public final Class<fx2> c() {
        return fx2.class;
    }
}
