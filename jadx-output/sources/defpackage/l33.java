package defpackage;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;

/* loaded from: classes.dex */
public final class l33 extends ThreadLocal<Cipher> {
    @Override // java.lang.ThreadLocal
    public final Cipher initialValue() {
        try {
            return b43.e.a("AES/CTR/NOPADDING");
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }
}
