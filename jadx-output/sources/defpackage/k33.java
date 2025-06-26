package defpackage;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public final class k33 implements sw2 {
    public static final ThreadLocal<Cipher> b = new m33();
    public final SecretKey a;

    public k33(byte[] bArr) throws GeneralSecurityException {
        p43.b(bArr.length);
        this.a = new SecretKeySpec(bArr, "AES");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003b  */
    @Override // defpackage.sw2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte[] a(byte[] r12, byte[] r13) throws java.lang.IllegalAccessException, java.security.GeneralSecurityException, java.lang.IllegalArgumentException {
        /*
            r11 = this;
            int r0 = r12.length
            r1 = 2147483619(0x7fffffe3, float:NaN)
            if (r0 > r1) goto L91
            int r0 = r12.length
            r1 = 12
            int r0 = r0 + r1
            r2 = 16
            int r0 = r0 + r2
            byte[] r0 = new byte[r0]
            byte[] r3 = defpackage.o43.a(r1)
            r9 = 0
            java.lang.System.arraycopy(r3, r9, r0, r9, r1)
            int r1 = r3.length
            boolean r4 = defpackage.c50.o3()
            if (r4 == 0) goto L3b
            java.lang.String r4 = "android.os.Build$VERSION"
            java.lang.Class r4 = java.lang.Class.forName(r4)     // Catch: java.lang.Throwable -> L30
            java.lang.String r5 = "SDK_INT"
            java.lang.reflect.Field r4 = r4.getDeclaredField(r5)     // Catch: java.lang.Throwable -> L30
            r5 = 0
            int r4 = r4.getInt(r5)     // Catch: java.lang.Throwable -> L30
            goto L31
        L30:
            r4 = -1
        L31:
            r5 = 19
            if (r4 > r5) goto L3b
            javax.crypto.spec.IvParameterSpec r4 = new javax.crypto.spec.IvParameterSpec
            r4.<init>(r3, r9, r1)
            goto L42
        L3b:
            javax.crypto.spec.GCMParameterSpec r4 = new javax.crypto.spec.GCMParameterSpec
            r5 = 128(0x80, float:1.8E-43)
            r4.<init>(r5, r3, r9, r1)
        L42:
            java.lang.ThreadLocal<javax.crypto.Cipher> r1 = defpackage.k33.b
            java.lang.Object r3 = r1.get()
            javax.crypto.Cipher r3 = (javax.crypto.Cipher) r3
            javax.crypto.SecretKey r5 = r11.a
            r10 = 1
            r3.init(r10, r5, r4)
            if (r13 == 0) goto L5e
            int r3 = r13.length
            if (r3 == 0) goto L5e
            java.lang.Object r3 = r1.get()
            javax.crypto.Cipher r3 = (javax.crypto.Cipher) r3
            r3.updateAAD(r13)
        L5e:
            java.lang.Object r13 = r1.get()
            r3 = r13
            javax.crypto.Cipher r3 = (javax.crypto.Cipher) r3
            r5 = 0
            int r6 = r12.length
            r8 = 12
            r4 = r12
            r7 = r0
            int r13 = r3.doFinal(r4, r5, r6, r7, r8)
            int r1 = r12.length
            int r1 = r1 + r2
            if (r13 != r1) goto L74
            return r0
        L74:
            int r12 = r12.length
            int r13 = r13 - r12
            java.security.GeneralSecurityException r12 = new java.security.GeneralSecurityException
            r0 = 2
            java.lang.Object[] r0 = new java.lang.Object[r0]
            java.lang.Integer r1 = java.lang.Integer.valueOf(r2)
            r0[r9] = r1
            java.lang.Integer r13 = java.lang.Integer.valueOf(r13)
            r0[r10] = r13
            java.lang.String r13 = "encryption failed; GCM tag must be %s bytes, but got only %s bytes"
            java.lang.String r13 = java.lang.String.format(r13, r0)
            r12.<init>(r13)
            throw r12
        L91:
            java.security.GeneralSecurityException r12 = new java.security.GeneralSecurityException
            java.lang.String r13 = "plaintext too long"
            r12.<init>(r13)
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.k33.a(byte[], byte[]):byte[]");
    }
}
