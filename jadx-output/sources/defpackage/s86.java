package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class s86 implements Object<zb7> {
    public final q86 a;

    public s86(q86 q86Var) {
        this.a = q86Var;
    }

    public Object get() {
        Objects.requireNonNull(this.a);
        zb7 zb7Var = ej7.b;
        Objects.requireNonNull(zb7Var, "Cannot return null from a non-@Nullable @Provides method");
        return zb7Var;
    }
}
