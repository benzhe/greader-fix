package defpackage;

import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import javax.crypto.Mac;

/* loaded from: classes.dex */
public final class m43 extends ThreadLocal<Mac> {
    public final /* synthetic */ j43 a;

    public m43(j43 j43Var) {
        this.a = j43Var;
    }

    @Override // java.lang.ThreadLocal
    public final Mac initialValue() throws InvalidKeyException {
        try {
            Mac macA = b43.f.a(this.a.b);
            macA.init(this.a.c);
            return macA;
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }
}
