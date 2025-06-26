package defpackage;

import java.security.GeneralSecurityException;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public final class bz2 implements sw2 {
    public static final ThreadLocal<Cipher> b = new az2();
    public final SecretKey a;

    public bz2(byte[] bArr) throws GeneralSecurityException {
        p43.b(bArr.length);
        this.a = new SecretKeySpec(bArr, "AES");
    }

    @Override // defpackage.sw2
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException, ClassNotFoundException {
        AlgorithmParameterSpec ivParameterSpec;
        if (bArr.length > 2147483619) {
            throw new GeneralSecurityException("plaintext too long");
        }
        byte[] bArr3 = new byte[bArr.length + 12 + 16];
        byte[] bArrA = o43.a(12);
        System.arraycopy(bArrA, 0, bArr3, 0, 12);
        int length = bArrA.length;
        try {
            Class.forName("javax.crypto.spec.GCMParameterSpec");
            ivParameterSpec = new GCMParameterSpec(128, bArrA, 0, length);
        } catch (ClassNotFoundException unused) {
            if (!c50.o3()) {
                throw new GeneralSecurityException("cannot use AES-GCM: javax.crypto.spec.GCMParameterSpec not found");
            }
            ivParameterSpec = new IvParameterSpec(bArrA, 0, length);
        }
        ThreadLocal<Cipher> threadLocal = b;
        threadLocal.get().init(1, this.a, ivParameterSpec);
        if (bArr2 != null && bArr2.length != 0) {
            threadLocal.get().updateAAD(bArr2);
        }
        int iDoFinal = threadLocal.get().doFinal(bArr, 0, bArr.length, bArr3, 12);
        if (iDoFinal == bArr.length + 16) {
            return bArr3;
        }
        throw new GeneralSecurityException(String.format("encryption failed; GCM tag must be %s bytes, but got only %s bytes", 16, Integer.valueOf(iDoFinal - bArr.length)));
    }
}
