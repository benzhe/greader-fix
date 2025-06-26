package defpackage;

import java.nio.ByteBuffer;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public final class x33 {
    public static Cipher a;
    public static final Object b = new Object();
    public static final Object c = new Object();

    public static Cipher a() throws NoSuchPaddingException, NoSuchAlgorithmException {
        Cipher cipher;
        synchronized (c) {
            if (a == null) {
                a = Cipher.getInstance("AES/CBC/PKCS5Padding");
            }
            cipher = a;
        }
        return cipher;
    }

    public final byte[] b(byte[] bArr, String str) throws b33 {
        byte[] bArrDoFinal;
        if (bArr.length != 16) {
            throw new b33();
        }
        try {
            byte[] bArrJ3 = c50.j3(str, false);
            if (bArrJ3.length <= 16) {
                throw new b33();
            }
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bArrJ3.length);
            byteBufferAllocate.put(bArrJ3);
            byteBufferAllocate.flip();
            byte[] bArr2 = new byte[16];
            byte[] bArr3 = new byte[bArrJ3.length - 16];
            byteBufferAllocate.get(bArr2);
            byteBufferAllocate.get(bArr3);
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            synchronized (b) {
                a().init(2, secretKeySpec, new IvParameterSpec(bArr2));
                bArrDoFinal = a().doFinal(bArr3);
            }
            return bArrDoFinal;
        } catch (IllegalArgumentException e) {
            throw new b33(e);
        } catch (InvalidAlgorithmParameterException e2) {
            throw new b33(e2);
        } catch (InvalidKeyException e3) {
            throw new b33(e3);
        } catch (NoSuchAlgorithmException e4) {
            throw new b33(e4);
        } catch (BadPaddingException e5) {
            throw new b33(e5);
        } catch (IllegalBlockSizeException e6) {
            throw new b33(e6);
        } catch (NoSuchPaddingException e7) {
            throw new b33(e7);
        }
    }

    public final byte[] c(String str) throws b33 {
        try {
            byte[] bArrJ3 = c50.j3(str, false);
            if (bArrJ3.length != 32) {
                throw new b33();
            }
            byte[] bArr = new byte[16];
            ByteBuffer.wrap(bArrJ3, 4, 16).get(bArr);
            for (int i = 0; i < 16; i++) {
                bArr[i] = (byte) (bArr[i] ^ 68);
            }
            return bArr;
        } catch (IllegalArgumentException e) {
            throw new b33(e);
        }
    }

    public final String d(byte[] bArr, byte[] bArr2) throws b33 {
        byte[] bArrDoFinal;
        byte[] iv;
        if (bArr.length != 16) {
            throw new b33();
        }
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            synchronized (b) {
                a().init(1, secretKeySpec, (SecureRandom) null);
                bArrDoFinal = a().doFinal(bArr2);
                iv = a().getIV();
            }
            int length = bArrDoFinal.length + iv.length;
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length);
            byteBufferAllocate.put(iv).put(bArrDoFinal);
            byteBufferAllocate.flip();
            byte[] bArr3 = new byte[length];
            byteBufferAllocate.get(bArr3);
            return c50.P1(bArr3, false);
        } catch (InvalidKeyException e) {
            throw new b33(e);
        } catch (NoSuchAlgorithmException e2) {
            throw new b33(e2);
        } catch (BadPaddingException e3) {
            throw new b33(e3);
        } catch (IllegalBlockSizeException e4) {
            throw new b33(e4);
        } catch (NoSuchPaddingException e5) {
            throw new b33(e5);
        }
    }
}
