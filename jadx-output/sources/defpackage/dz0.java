package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class dz0 implements cb3<String> {
    public dz0(ry0 ry0Var) {
    }

    @Override // defpackage.mb3
    public final Object get() {
        String str = os3.j.c;
        Objects.requireNonNull(str, "Cannot return null from a non-@Nullable @Provides method");
        return str;
    }
}
