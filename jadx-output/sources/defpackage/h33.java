package defpackage;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public final class h33 implements i43 {
    public static final ThreadLocal<Cipher> d = new g33();
    public final SecretKeySpec a;
    public final int b;
    public final int c;

    public h33(byte[] bArr, int i) throws GeneralSecurityException {
        p43.b(bArr.length);
        this.a = new SecretKeySpec(bArr, "AES");
        int blockSize = d.get().getBlockSize();
        this.c = blockSize;
        if (i < 12 || i > blockSize) {
            throw new GeneralSecurityException("invalid IV size");
        }
        this.b = i;
    }

    @Override // defpackage.i43
    public final byte[] a(byte[] bArr) throws GeneralSecurityException {
        int length = bArr.length;
        int i = this.b;
        if (length > Integer.MAX_VALUE - i) {
            throw new GeneralSecurityException(jo.M(43, "plaintext length can not exceed ", Integer.MAX_VALUE - this.b));
        }
        byte[] bArr2 = new byte[bArr.length + i];
        byte[] bArrA = o43.a(i);
        System.arraycopy(bArrA, 0, bArr2, 0, this.b);
        int length2 = bArr.length;
        int i2 = this.b;
        Cipher cipher = d.get();
        byte[] bArr3 = new byte[this.c];
        System.arraycopy(bArrA, 0, bArr3, 0, this.b);
        cipher.init(1, this.a, new IvParameterSpec(bArr3));
        if (cipher.doFinal(bArr, 0, length2, bArr2, i2) == length2) {
            return bArr2;
        }
        throw new GeneralSecurityException("stored output's length does not match input's length");
    }
}
