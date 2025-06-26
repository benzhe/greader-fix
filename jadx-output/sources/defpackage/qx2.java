package defpackage;

import defpackage.px2;
import java.security.GeneralSecurityException;
import java.util.Set;

/* loaded from: classes.dex */
public final class qx2 implements px2.a {
    public final /* synthetic */ mx2 a;
    public final /* synthetic */ zw2 b;

    public qx2(mx2 mx2Var, zw2 zw2Var) {
        this.a = mx2Var;
        this.b = zw2Var;
    }

    @Override // px2.a
    public final <Q> yw2<Q> b(Class<Q> cls) throws GeneralSecurityException {
        try {
            return new nx2(this.a, this.b, cls);
        } catch (IllegalArgumentException e) {
            throw new GeneralSecurityException("Primitive type not supported", e);
        }
    }

    @Override // px2.a
    public final yw2<?> c() {
        mx2 mx2Var = this.a;
        return new nx2(mx2Var, this.b, mx2Var.c);
    }

    @Override // px2.a
    public final Class<?> d() {
        return this.a.getClass();
    }

    @Override // px2.a
    public final Class<?> e() {
        return this.b.getClass();
    }

    @Override // px2.a
    public final Set<Class<?>> f() {
        return this.a.d();
    }
}
