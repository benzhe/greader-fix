package defpackage;

import java.util.Set;

/* loaded from: classes.dex */
public abstract class pf5 implements tf5 {
    @Override // defpackage.tf5
    public <T> T a(Class<T> cls) {
        s96<T> s96VarB = b(cls);
        if (s96VarB == null) {
            return null;
        }
        return s96VarB.get();
    }

    @Override // defpackage.tf5
    public <T> Set<T> d(Class<T> cls) {
        return c(cls).get();
    }
}
