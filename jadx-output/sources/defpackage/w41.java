package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class w41 implements cb3<g61> {
    public final q41 a;

    public w41(q41 q41Var) {
        this.a = q41Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        g61 g61Var = this.a.a;
        Objects.requireNonNull(g61Var, "Cannot return null from a non-@Nullable @Provides method");
        return g61Var;
    }
}
