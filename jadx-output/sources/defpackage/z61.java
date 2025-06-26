package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class z61 implements cb3<hl2> {
    public final v61 a;

    public z61(v61 v61Var) {
        this.a = v61Var;
    }

    public static hl2 a(v61 v61Var) {
        hl2 hl2Var = v61Var.a;
        Objects.requireNonNull(hl2Var, "Cannot return null from a non-@Nullable @Provides method");
        return hl2Var;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return a(this.a);
    }
}
