package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class t41 implements cb3<uk2> {
    public final q41 a;

    public t41(q41 q41Var) {
        this.a = q41Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        uk2 uk2Var = this.a.c;
        Objects.requireNonNull(uk2Var, "Cannot return null from a non-@Nullable @Provides method");
        return uk2Var;
    }
}
