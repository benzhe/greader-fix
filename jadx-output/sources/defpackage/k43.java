package defpackage;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public final class k43 implements yz2 {
    public final SecretKey a;
    public byte[] b;
    public byte[] c;

    public k43(byte[] bArr) throws GeneralSecurityException {
        p43.b(bArr.length);
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        this.a = secretKeySpec;
        Cipher cipherA = b43.e.a("AES/ECB/NoPadding");
        cipherA.init(1, secretKeySpec);
        byte[] bArrE4 = c50.E4(cipherA.doFinal(new byte[16]));
        this.b = bArrE4;
        this.c = c50.E4(bArrE4);
    }

    @Override // defpackage.yz2
    public final byte[] a(byte[] bArr, int i) throws GeneralSecurityException {
        byte[] bArrK3;
        if (i > 16) {
            throw new InvalidAlgorithmParameterException("outputLength too large, max is 16 bytes");
        }
        Cipher cipherA = b43.e.a("AES/ECB/NoPadding");
        cipherA.init(1, this.a);
        int iMax = Math.max(1, (int) Math.ceil(bArr.length / 16.0d));
        if ((iMax << 4) == bArr.length) {
            bArrK3 = c50.B2(bArr, (iMax - 1) << 4, this.b, 0, 16);
        } else {
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, (iMax - 1) << 4, bArr.length);
            if (bArrCopyOfRange.length >= 16) {
                throw new IllegalArgumentException("x must be smaller than a block.");
            }
            byte[] bArrCopyOf = Arrays.copyOf(bArrCopyOfRange, 16);
            bArrCopyOf[bArrCopyOfRange.length] = Byte.MIN_VALUE;
            bArrK3 = c50.K3(bArrCopyOf, this.c);
        }
        byte[] bArrDoFinal = new byte[16];
        for (int i2 = 0; i2 < iMax - 1; i2++) {
            bArrDoFinal = cipherA.doFinal(c50.B2(bArrDoFinal, 0, bArr, i2 << 4, 16));
        }
        return Arrays.copyOf(cipherA.doFinal(c50.K3(bArrK3, bArrDoFinal)), i);
    }
}
