package defpackage;

import defpackage.px2;
import java.security.GeneralSecurityException;
import java.util.Set;

/* loaded from: classes.dex */
public final class rx2 implements px2.a {
    public final /* synthetic */ zw2 a;

    public rx2(zw2 zw2Var) {
        this.a = zw2Var;
    }

    @Override // px2.a
    public final <Q> yw2<Q> b(Class<Q> cls) throws GeneralSecurityException {
        try {
            return new xw2(this.a, cls);
        } catch (IllegalArgumentException e) {
            throw new GeneralSecurityException("Primitive type not supported", e);
        }
    }

    @Override // px2.a
    public final yw2<?> c() {
        zw2 zw2Var = this.a;
        return new xw2(zw2Var, zw2Var.c);
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
        return this.a.d();
    }
}
