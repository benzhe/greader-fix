package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class v51 implements cb3<Runnable> {
    public final t51 a;

    public v51(t51 t51Var) {
        this.a = t51Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        Runnable runnable = this.a.b;
        Objects.requireNonNull(runnable, "Cannot return null from a non-@Nullable @Provides method");
        return runnable;
    }
}
