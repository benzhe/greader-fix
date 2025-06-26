package defpackage;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class mz2 implements q33 {
    public final String a;
    public final int b;
    public w03 c;
    public g03 d;
    public int e;

    public mz2(i23 i23Var) throws GeneralSecurityException {
        String strX = i23Var.x();
        this.a = strX;
        if (strX.equals(vx2.b)) {
            try {
                z03 z03VarZ = z03.z(i23Var.y(), e63.a());
                this.c = (w03) px2.i(i23Var);
                this.b = z03VarZ.x();
                return;
            } catch (e73 e) {
                throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesGcmKeyFormat", e);
            }
        }
        if (!strX.equals(vx2.a)) {
            String strValueOf = String.valueOf(strX);
            throw new GeneralSecurityException(strValueOf.length() != 0 ? "unsupported AEAD DEM key type: ".concat(strValueOf) : new String("unsupported AEAD DEM key type: "));
        }
        try {
            j03 j03VarA = j03.A(i23Var.y(), e63.a());
            this.d = (g03) px2.i(i23Var);
            this.e = j03VarA.x().x();
            this.b = this.e + j03VarA.y().x();
        } catch (e73 e2) {
            throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat", e2);
        }
    }
}
