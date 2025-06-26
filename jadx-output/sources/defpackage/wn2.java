package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class wn2 implements cb3<zv2> {
    @Override // defpackage.mb3
    public final Object get() {
        zv2 zv2Var;
        if (((Boolean) os3.j.f.a(y40.p3)).booleanValue()) {
            zv2Var = ms0.c;
        } else {
            zv2Var = ((Boolean) os3.j.f.a(y40.o3)).booleanValue() ? ms0.a : ms0.e;
        }
        Objects.requireNonNull(zv2Var, "Cannot return null from a non-@Nullable @Provides method");
        return zv2Var;
    }
}
