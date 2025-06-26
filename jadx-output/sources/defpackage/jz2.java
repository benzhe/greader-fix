package defpackage;

import java.security.GeneralSecurityException;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public class jz2 implements kx2<ww2, ww2> {

    public static class a implements ww2 {
        public a(hx2<ww2> hx2Var) {
        }
    }

    static {
        Logger.getLogger(jz2.class.getName());
    }

    @Override // defpackage.kx2
    public final Class<ww2> a() {
        return ww2.class;
    }

    @Override // defpackage.kx2
    public final /* synthetic */ ww2 b(hx2<ww2> hx2Var) throws GeneralSecurityException {
        return new a(hx2Var);
    }

    @Override // defpackage.kx2
    public final Class<ww2> c() {
        return ww2.class;
    }
}
