package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class dm1 implements cb3<ek1> {
    public final mb3<yl1> a;

    public dm1(am1 am1Var, mb3<yl1> mb3Var) {
        this.a = mb3Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        yl1 yl1Var = this.a.get();
        Objects.requireNonNull(yl1Var, "Cannot return null from a non-@Nullable @Provides method");
        return yl1Var;
    }
}
