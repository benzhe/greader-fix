package defpackage;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class lz2 implements vw2 {
    public final hx2<vw2> a;

    public lz2(hx2<vw2> hx2Var) {
        this.a = hx2Var;
    }

    @Override // defpackage.vw2
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        return c50.C2(this.a.b.a(), this.a.b.a.a(bArr, bArr2));
    }
}
