package defpackage;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;

/* loaded from: classes.dex */
public final class l43 implements fx2 {
    public final yz2 a;
    public final int b;

    public l43(yz2 yz2Var, int i) throws GeneralSecurityException {
        this.a = yz2Var;
        this.b = i;
        if (i < 10) {
            throw new InvalidAlgorithmParameterException("tag size too small, need at least 10 bytes");
        }
        yz2Var.a(new byte[0], i);
    }

    @Override // defpackage.fx2
    public final byte[] a(byte[] bArr) throws GeneralSecurityException {
        return this.a.a(bArr, this.b);
    }
}
