package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class u16 implements Object<f06> {
    public final t16 a;

    public u16(t16 t16Var) {
        this.a = t16Var;
    }

    public Object get() {
        f06 f06Var = this.a.b;
        Objects.requireNonNull(f06Var, "Cannot return null from a non-@Nullable @Provides method");
        return f06Var;
    }
}
