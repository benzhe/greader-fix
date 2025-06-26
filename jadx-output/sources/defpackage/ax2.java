package defpackage;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public abstract class ax2<PrimitiveT, KeyT> {
    public final Class<PrimitiveT> a;

    public ax2(Class<PrimitiveT> cls) {
        this.a = cls;
    }

    public abstract PrimitiveT a(KeyT keyt) throws GeneralSecurityException;
}
