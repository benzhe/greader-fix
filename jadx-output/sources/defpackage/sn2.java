package defpackage;

import java.util.Objects;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class sn2 implements cb3<Executor> {
    @Override // defpackage.mb3
    public final Object get() {
        zv2 zv2Var = ms0.e;
        Objects.requireNonNull(zv2Var, "Cannot return null from a non-@Nullable @Provides method");
        return zv2Var;
    }
}
