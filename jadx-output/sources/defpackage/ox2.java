package defpackage;

import defpackage.px2;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.Set;

/* loaded from: classes.dex */
public final class ox2 implements px2.a {
    public final /* synthetic */ yw2 a;

    public ox2(yw2 yw2Var) {
        this.a = yw2Var;
    }

    @Override // px2.a
    public final <Q> yw2<Q> b(Class<Q> cls) throws GeneralSecurityException {
        if (((xw2) this.a).b.equals(cls)) {
            return this.a;
        }
        throw new InternalError("This should never be called, as we always first check supportedPrimitives.");
    }

    @Override // px2.a
    public final yw2<?> c() {
        return this.a;
    }

    @Override // px2.a
    public final Class<?> d() {
        return this.a.getClass();
    }

    @Override // px2.a
    public final Class<?> e() {
        return null;
    }

    @Override // px2.a
    public final Set<Class<?>> f() {
        return Collections.singleton(((xw2) this.a).b);
    }
}
