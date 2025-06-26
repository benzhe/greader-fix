package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class i16 implements Object<ty5> {
    public final h16 a;

    public i16(h16 h16Var) {
        this.a = h16Var;
    }

    public Object get() {
        ty5 ty5Var = this.a.a;
        Objects.requireNonNull(ty5Var, "Cannot return null from a non-@Nullable @Provides method");
        return ty5Var;
    }
}
