package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class b61 implements cb3<kc1> {
    public final c61 a;

    public b61(c61 c61Var) {
        this.a = c61Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        kc1 kc1Var = this.a.a;
        Objects.requireNonNull(kc1Var, "Cannot return null from a non-@Nullable @Provides method");
        return kc1Var;
    }
}
