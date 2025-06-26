package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class q76 implements Object<z96> {
    public final m76 a;

    public q76(m76 m76Var) {
        this.a = m76Var;
    }

    public Object get() {
        z96 z96Var = this.a.b;
        Objects.requireNonNull(z96Var, "Cannot return null from a non-@Nullable @Provides method");
        return z96Var;
    }
}
