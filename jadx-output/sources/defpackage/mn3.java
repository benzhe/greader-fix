package defpackage;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes.dex */
public final class mn3 extends fn3 {
    public MessageDigest c;

    @Override // defpackage.fn3
    public final byte[] a(String str) throws UnsupportedEncodingException {
        byte[] bArr;
        byte[] bArrArray;
        String[] strArrSplit = str.split(StringUtils.SPACE);
        int length = 4;
        if (strArrSplit.length == 1) {
            int iP3 = c50.p3(strArrSplit[0]);
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
            byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
            byteBufferAllocate.putInt(iP3);
            bArrArray = byteBufferAllocate.array();
        } else {
            if (strArrSplit.length < 5) {
                bArr = new byte[strArrSplit.length << 1];
                for (int i = 0; i < strArrSplit.length; i++) {
                    int iP32 = c50.p3(strArrSplit[i]);
                    int i2 = (iP32 >> 16) ^ (65535 & iP32);
                    byte[] bArr2 = {(byte) i2, (byte) (i2 >> 8)};
                    int i3 = i << 1;
                    bArr[i3] = bArr2[0];
                    bArr[i3 + 1] = bArr2[1];
                }
            } else {
                bArr = new byte[strArrSplit.length];
                for (int i4 = 0; i4 < strArrSplit.length; i4++) {
                    int iP33 = c50.p3(strArrSplit[i4]);
                    bArr[i4] = (byte) ((iP33 >> 24) ^ (((iP33 & Base64.BASELENGTH) ^ ((iP33 >> 8) & Base64.BASELENGTH)) ^ ((iP33 >> 16) & Base64.BASELENGTH)));
                }
            }
            bArrArray = bArr;
        }
        this.c = b();
        synchronized (this.a) {
            MessageDigest messageDigest = this.c;
            if (messageDigest == null) {
                return new byte[0];
            }
            messageDigest.reset();
            this.c.update(bArrArray);
            byte[] bArrDigest = this.c.digest();
            if (bArrDigest.length <= 4) {
                length = bArrDigest.length;
            }
            byte[] bArr3 = new byte[length];
            System.arraycopy(bArrDigest, 0, bArr3, 0, length);
            return bArr3;
        }
    }
}
