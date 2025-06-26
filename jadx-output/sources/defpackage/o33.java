package defpackage;

import java.security.InvalidKeyException;

/* loaded from: classes.dex */
public final class o33 extends r33 {
    public o33(byte[] bArr) throws InvalidKeyException {
        super(bArr);
    }

    @Override // defpackage.r33
    public final p33 b(byte[] bArr, int i) throws InvalidKeyException {
        return new n33(bArr, i);
    }
}
