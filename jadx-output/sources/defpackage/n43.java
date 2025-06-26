package defpackage;

import java.security.SecureRandom;

/* loaded from: classes.dex */
public final class n43 extends ThreadLocal<SecureRandom> {
    @Override // java.lang.ThreadLocal
    public final SecureRandom initialValue() {
        SecureRandom secureRandom = new SecureRandom();
        secureRandom.nextLong();
        return secureRandom;
    }
}
