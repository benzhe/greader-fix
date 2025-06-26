package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class u51 implements cb3<p90> {
    public final t51 a;

    public u51(t51 t51Var) {
        this.a = t51Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        p90 p90Var = this.a.a;
        Objects.requireNonNull(p90Var, "Cannot return null from a non-@Nullable @Provides method");
        return p90Var;
    }
}
