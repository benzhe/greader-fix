package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class u76 implements Object<bf5> {
    public final t76 a;

    public u76(t76 t76Var) {
        this.a = t76Var;
    }

    public Object get() {
        bf5 bf5Var = this.a.a;
        Objects.requireNonNull(bf5Var, "Cannot return null from a non-@Nullable @Provides method");
        return bf5Var;
    }
}
