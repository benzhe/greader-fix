package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class f91 implements cb3<kc1> {
    public final mb3<kc1> a;

    public f91(mb3<kc1> mb3Var) {
        this.a = mb3Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        kc1 kc1Var = this.a.get();
        Objects.requireNonNull(kc1Var, "Cannot return null from a non-@Nullable @Provides method");
        return kc1Var;
    }
}
