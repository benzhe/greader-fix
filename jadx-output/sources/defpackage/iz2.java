package defpackage;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPublicKeySpec;

/* loaded from: classes.dex */
public final class iz2 extends ax2<vw2, s13> {
    public iz2(Class cls) {
        super(cls);
    }

    @Override // defpackage.ax2
    public final vw2 a(s13 s13Var) throws GeneralSecurityException {
        s13 s13Var2 = s13Var;
        o13 o13VarD = s13Var2.D();
        v13 v13VarX = o13VarD.x();
        v33 v33VarU1 = c50.u1(v13VarX.x());
        byte[] bArrD = s13Var2.E().d();
        byte[] bArrD2 = s13Var2.F().d();
        ECParameterSpec eCParameterSpecT1 = c50.T1(v33VarU1);
        ECPoint eCPoint = new ECPoint(new BigInteger(1, bArrD), new BigInteger(1, bArrD2));
        c50.q2(eCPoint, eCParameterSpecT1.getCurve());
        return new s33((ECPublicKey) b43.i.a("EC").generatePublic(new ECPublicKeySpec(eCPoint, eCParameterSpecT1)), v13VarX.z().d(), c50.J1(v13VarX.y()), c50.v1(o13VarD.z()), new mz2(o13VarD.y().x()));
    }
}
