package defpackage;

import java.security.GeneralSecurityException;
import java.util.Arrays;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public final class j33 implements sw2 {
    public static final ThreadLocal<Cipher> e = new i33();
    public static final ThreadLocal<Cipher> f = new l33();
    public final byte[] a;
    public final byte[] b;
    public final SecretKeySpec c;
    public final int d;

    public j33(byte[] bArr, int i) throws GeneralSecurityException {
        if (i != 12 && i != 16) {
            throw new IllegalArgumentException("IV size should be either 12 or 16 bytes");
        }
        this.d = i;
        p43.b(bArr.length);
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        this.c = secretKeySpec;
        Cipher cipher = e.get();
        cipher.init(1, secretKeySpec);
        byte[] bArrD = d(cipher.doFinal(new byte[16]));
        this.a = bArrD;
        this.b = d(bArrD);
    }

    public static byte[] c(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        byte[] bArr3 = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr3[i] = (byte) (bArr[i] ^ bArr2[i]);
        }
        return bArr3;
    }

    public static byte[] d(byte[] bArr) {
        byte[] bArr2 = new byte[16];
        int i = 0;
        while (i < 15) {
            int i2 = i + 1;
            bArr2[i] = (byte) ((bArr[i] << 1) ^ ((bArr[i2] & 255) >>> 7));
            i = i2;
        }
        bArr2[15] = (byte) ((bArr[15] << 1) ^ ((bArr[0] & 128) != 0 ? 135 : 0));
        return bArr2;
    }

    @Override // defpackage.sw2
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int length = bArr.length;
        int i = this.d;
        if (length > (Integer.MAX_VALUE - i) - 16) {
            throw new GeneralSecurityException("plaintext too long");
        }
        byte[] bArr3 = new byte[bArr.length + i + 16];
        byte[] bArrA = o43.a(i);
        System.arraycopy(bArrA, 0, bArr3, 0, this.d);
        Cipher cipher = e.get();
        cipher.init(1, this.c);
        byte[] bArrB = b(cipher, 0, bArrA, 0, bArrA.length);
        byte[] bArr4 = bArr2 == null ? new byte[0] : bArr2;
        byte[] bArrB2 = b(cipher, 1, bArr4, 0, bArr4.length);
        Cipher cipher2 = f.get();
        cipher2.init(1, this.c, new IvParameterSpec(bArrB));
        cipher2.doFinal(bArr, 0, bArr.length, bArr3, this.d);
        byte[] bArrB3 = b(cipher, 2, bArr3, this.d, bArr.length);
        int length2 = bArr.length + this.d;
        for (int i2 = 0; i2 < 16; i2++) {
            bArr3[length2 + i2] = (byte) ((bArrB2[i2] ^ bArrB[i2]) ^ bArrB3[i2]);
        }
        return bArr3;
    }

    public final byte[] b(Cipher cipher, int i, byte[] bArr, int i2, int i3) throws BadPaddingException, IllegalBlockSizeException {
        byte[] bArrC;
        byte[] bArr2 = new byte[16];
        bArr2[15] = (byte) i;
        if (i3 == 0) {
            return cipher.doFinal(c(bArr2, this.a));
        }
        byte[] bArrDoFinal = cipher.doFinal(bArr2);
        int i4 = 0;
        while (i3 - i4 > 16) {
            for (int i5 = 0; i5 < 16; i5++) {
                bArrDoFinal[i5] = (byte) (bArrDoFinal[i5] ^ bArr[(i2 + i4) + i5]);
            }
            bArrDoFinal = cipher.doFinal(bArrDoFinal);
            i4 += 16;
        }
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, i4 + i2, i2 + i3);
        if (bArrCopyOfRange.length == 16) {
            bArrC = c(bArrCopyOfRange, this.a);
        } else {
            byte[] bArrCopyOf = Arrays.copyOf(this.b, 16);
            for (int i6 = 0; i6 < bArrCopyOfRange.length; i6++) {
                bArrCopyOf[i6] = (byte) (bArrCopyOf[i6] ^ bArrCopyOfRange[i6]);
            }
            bArrCopyOf[bArrCopyOfRange.length] = (byte) (bArrCopyOf[bArrCopyOfRange.length] ^ 128);
            bArrC = bArrCopyOf;
        }
        return cipher.doFinal(c(bArrDoFinal, bArrC));
    }
}
