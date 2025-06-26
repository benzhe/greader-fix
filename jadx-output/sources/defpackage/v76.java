package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class v76 implements Object<no5> {
    public final t76 a;

    public v76(t76 t76Var) {
        this.a = t76Var;
    }

    public Object get() {
        no5 no5Var = this.a.b;
        Objects.requireNonNull(no5Var, "Cannot return null from a non-@Nullable @Provides method");
        return no5Var;
    }
}
