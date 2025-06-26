package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class ao2 implements cb3<zv2> {
    @Override // defpackage.mb3
    public final Object get() {
        zv2 zv2Var = ms0.e;
        Objects.requireNonNull(zv2Var, "Cannot return null from a non-@Nullable @Provides method");
        return zv2Var;
    }
}
