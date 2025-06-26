package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class p76 implements Object<pe5> {
    public final m76 a;

    public p76(m76 m76Var) {
        this.a = m76Var;
    }

    public Object get() {
        pe5 pe5Var = this.a.a;
        Objects.requireNonNull(pe5Var, "Cannot return null from a non-@Nullable @Provides method");
        return pe5Var;
    }
}
