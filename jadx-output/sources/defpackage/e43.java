package defpackage;

import java.security.GeneralSecurityException;
import java.security.KeyPairGenerator;
import java.security.Provider;

/* loaded from: classes.dex */
public final class e43 implements a43<KeyPairGenerator> {
    @Override // defpackage.a43
    public final /* synthetic */ KeyPairGenerator a(String str, Provider provider) throws GeneralSecurityException {
        return provider == null ? KeyPairGenerator.getInstance(str) : KeyPairGenerator.getInstance(str, provider);
    }
}
