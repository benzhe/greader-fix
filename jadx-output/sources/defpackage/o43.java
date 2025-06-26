package defpackage;

import java.security.SecureRandom;

/* loaded from: classes.dex */
public final class o43 {
    public static final ThreadLocal<SecureRandom> a = new n43();

    public static byte[] a(int i) {
        byte[] bArr = new byte[i];
        a.get().nextBytes(bArr);
        return bArr;
    }
}
