package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class yi1 implements cb3<ak1> {
    public final mb3<zj1> a;

    public yi1(xi1 xi1Var, mb3<zj1> mb3Var) {
        this.a = mb3Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        zj1 zj1Var = this.a.get();
        Objects.requireNonNull(zj1Var, "Cannot return null from a non-@Nullable @Provides method");
        return zj1Var;
    }
}
