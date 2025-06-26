package defpackage;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class y33 implements sw2 {
    public final i43 a;
    public final fx2 b;

    public y33(i43 i43Var, fx2 fx2Var, int i) {
        this.a = i43Var;
        this.b = fx2Var;
    }

    @Override // defpackage.sw2
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArrA = this.a.a(bArr);
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        return c50.C2(bArrA, this.b.a(c50.C2(bArr2, bArrA, Arrays.copyOf(ByteBuffer.allocate(8).putLong(bArr2.length * 8).array(), 8))));
    }
}
