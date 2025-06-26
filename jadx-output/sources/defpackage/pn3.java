package defpackage;

import java.nio.charset.Charset;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public final class pn3 extends fn3 {
    public MessageDigest c;
    public final int d;
    public final int e;

    public pn3(int i) {
        int i2 = i / 8;
        this.d = i % 8 > 0 ? i2 + 1 : i2;
        this.e = i;
    }

    @Override // defpackage.fn3
    public final byte[] a(String str) {
        synchronized (this.a) {
            MessageDigest messageDigestB = b();
            this.c = messageDigestB;
            if (messageDigestB == null) {
                return new byte[0];
            }
            messageDigestB.reset();
            this.c.update(str.getBytes(Charset.forName("UTF-8")));
            byte[] bArrDigest = this.c.digest();
            int length = bArrDigest.length;
            int length2 = this.d;
            if (length <= length2) {
                length2 = bArrDigest.length;
            }
            byte[] bArr = new byte[length2];
            System.arraycopy(bArrDigest, 0, bArr, 0, length2);
            if (this.e % 8 > 0) {
                long j = 0;
                for (int i = 0; i < length2; i++) {
                    if (i > 0) {
                        j <<= 8;
                    }
                    j += bArr[i] & 255;
                }
                long j2 = j >>> (8 - (this.e % 8));
                for (int i2 = this.d - 1; i2 >= 0; i2--) {
                    bArr[i2] = (byte) (255 & j2);
                    j2 >>>= 8;
                }
            }
            return bArr;
        }
    }
}
