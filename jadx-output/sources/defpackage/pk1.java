package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class pk1 implements cb3<wj1> {
    public final jk1 a;

    public pk1(jk1 jk1Var) {
        this.a = jk1Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        wj1 wj1Var = this.a.a;
        Objects.requireNonNull(wj1Var, "Cannot return null from a non-@Nullable @Provides method");
        return wj1Var;
    }
}
