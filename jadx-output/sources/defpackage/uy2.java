package defpackage;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class uy2 extends ax2<sw2, u23> {
    public uy2(Class cls) {
        super(cls);
    }

    @Override // defpackage.ax2
    public final /* synthetic */ sw2 a(u23 u23Var) throws GeneralSecurityException {
        u23 u23Var2 = u23Var;
        String strX = u23Var2.A().x();
        return new sy2(u23Var2.A().y(), gx2.a(strX).b(strX));
    }
}
