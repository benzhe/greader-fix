package defpackage;

import java.util.logging.Logger;

/* loaded from: classes2.dex */
public final class e97 {
    public static final Logger a = Logger.getLogger(e97.class.getName());
    public static final byte[] b = "-bin".getBytes(kd5.a);

    public static boolean a(byte[] bArr, byte[] bArr2) {
        int length = bArr.length - bArr2.length;
        if (length < 0) {
            return false;
        }
        for (int i = length; i < bArr.length; i++) {
            if (bArr[i] != bArr2[i - length]) {
                return false;
            }
        }
        return true;
    }
}
