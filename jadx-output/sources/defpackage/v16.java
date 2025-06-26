package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class v16 implements Object<j96> {
    public final t16 a;

    public v16(t16 t16Var) {
        this.a = t16Var;
    }

    public Object get() {
        j96 j96Var = this.a.a;
        Objects.requireNonNull(j96Var, "Cannot return null from a non-@Nullable @Provides method");
        return j96Var;
    }
}
