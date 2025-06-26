package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class az0 implements cb3<r11> {
    public final mb3<sy0> a;

    public az0(ry0 ry0Var, mb3<sy0> mb3Var) {
        this.a = mb3Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        sy0 sy0Var = this.a.get();
        Objects.requireNonNull(sy0Var, "Cannot return null from a non-@Nullable @Provides method");
        return sy0Var;
    }
}
