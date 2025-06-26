package defpackage;

import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.Provider;

/* loaded from: classes.dex */
public final class f43 implements a43<KeyFactory> {
    @Override // defpackage.a43
    public final /* synthetic */ KeyFactory a(String str, Provider provider) throws GeneralSecurityException {
        return provider == null ? KeyFactory.getInstance(str) : KeyFactory.getInstance(str, provider);
    }
}
