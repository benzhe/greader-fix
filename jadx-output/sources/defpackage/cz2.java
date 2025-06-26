package defpackage;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.interfaces.ECPrivateKey;
import java.security.spec.ECPrivateKeySpec;

/* loaded from: classes.dex */
public final class cz2 extends ax2<ww2, r13> {
    public cz2(Class cls) {
        super(cls);
    }

    @Override // defpackage.ax2
    public final /* synthetic */ ww2 a(r13 r13Var) throws GeneralSecurityException {
        r13 r13Var2 = r13Var;
        o13 o13VarD = r13Var2.D().D();
        v13 v13VarX = o13VarD.x();
        v33 v33VarU1 = c50.u1(v13VarX.x());
        byte[] bArrD = r13Var2.B().d();
        return new t33((ECPrivateKey) b43.i.a("EC").generatePrivate(new ECPrivateKeySpec(new BigInteger(1, bArrD), c50.T1(v33VarU1))), v13VarX.z().d(), c50.J1(v13VarX.y()), c50.v1(o13VarD.z()), new mz2(o13VarD.y().x()));
    }
}
