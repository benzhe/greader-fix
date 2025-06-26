package defpackage;

import java.security.GeneralSecurityException;
import java.security.Provider;
import javax.crypto.Mac;

/* loaded from: classes.dex */
public final class g43 implements a43<Mac> {
    @Override // defpackage.a43
    public final /* synthetic */ Mac a(String str, Provider provider) throws GeneralSecurityException {
        return provider == null ? Mac.getInstance(str) : Mac.getInstance(str, provider);
    }
}
