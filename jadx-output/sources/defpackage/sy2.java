package defpackage;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class sy2 implements sw2 {
    public static final byte[] c = new byte[0];
    public final i23 a;
    public final sw2 b;

    public sy2(i23 i23Var, sw2 sw2Var) {
        this.a = i23Var;
        this.b = sw2Var;
    }

    @Override // defpackage.sw2
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArrB = px2.i(this.a).b();
        byte[] bArrA = this.b.a(bArrB, c);
        String strX = this.a.x();
        k53 k53Var = k53.f;
        byte[] bArrA2 = ((sw2) px2.b(strX, k53.M(bArrB, 0, bArrB.length), sw2.class)).a(bArr, bArr2);
        return ByteBuffer.allocate(bArrA.length + 4 + bArrA2.length).putInt(bArrA.length).put(bArrA).put(bArrA2).array();
    }
}
