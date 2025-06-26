package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class v41 implements cb3<j41> {
    public final q41 a;
    public final mb3<l41> b;

    public v41(q41 q41Var, mb3<l41> mb3Var) {
        this.a = q41Var;
        this.b = mb3Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        l41 l41Var = this.b.get();
        Objects.requireNonNull(l41Var, "Cannot return null from a non-@Nullable @Provides method");
        return l41Var;
    }
}
