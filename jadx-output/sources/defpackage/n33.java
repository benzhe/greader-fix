package defpackage;

import java.security.InvalidKeyException;

/* loaded from: classes.dex */
public final class n33 extends p33 {
    public n33(byte[] bArr, int i) throws InvalidKeyException {
        super(bArr, i);
    }

    @Override // defpackage.p33
    public final int[] f(int[] iArr, int i) {
        if (iArr.length != 3) {
            throw new IllegalArgumentException(String.format("ChaCha20 uses 96-bit nonces, but got a %d-bit nonce", Integer.valueOf(iArr.length << 5)));
        }
        int[] iArr2 = new int[16];
        p33.e(iArr2, this.a);
        iArr2[12] = i;
        System.arraycopy(iArr, 0, iArr2, 13, iArr.length);
        return iArr2;
    }

    @Override // defpackage.p33
    public final int g() {
        return 12;
    }
}
