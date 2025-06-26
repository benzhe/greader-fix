package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class nm2 implements cb3<xr0> {
    public final mb3<or0> a;

    public nm2(im2 im2Var, mb3<or0> mb3Var) {
        this.a = mb3Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        xr0 xr0Var = this.a.get().c;
        Objects.requireNonNull(xr0Var, "Cannot return null from a non-@Nullable @Provides method");
        return xr0Var;
    }
}
