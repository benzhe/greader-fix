package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class r86 implements Object<zb7> {
    public final q86 a;

    public r86(q86 q86Var) {
        this.a = q86Var;
    }

    public Object get() {
        Objects.requireNonNull(this.a);
        zb7 zb7Var = ej7.a;
        Objects.requireNonNull(zb7Var, "Cannot return null from a non-@Nullable @Provides method");
        return zb7Var;
    }
}
