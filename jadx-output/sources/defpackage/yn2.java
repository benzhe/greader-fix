package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class yn2 implements cb3<zv2> {
    public static zv2 a() {
        zv2 zv2Var = ms0.a;
        Objects.requireNonNull(zv2Var, "Cannot return null from a non-@Nullable @Provides method");
        return zv2Var;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return a();
    }
}
