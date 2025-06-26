package defpackage;

import java.security.GeneralSecurityException;
import java.security.Provider;
import javax.crypto.Cipher;

/* loaded from: classes.dex */
public final class d43 implements a43<Cipher> {
    @Override // defpackage.a43
    public final /* synthetic */ Cipher a(String str, Provider provider) throws GeneralSecurityException {
        return provider == null ? Cipher.getInstance(str) : Cipher.getInstance(str, provider);
    }
}
