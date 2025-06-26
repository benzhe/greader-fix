package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class bj1 implements cb3<ek1> {
    public final mb3<ri1> a;

    public bj1(xi1 xi1Var, mb3<ri1> mb3Var) {
        this.a = mb3Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        ri1 ri1Var = this.a.get();
        Objects.requireNonNull(ri1Var, "Cannot return null from a non-@Nullable @Provides method");
        return ri1Var;
    }
}
