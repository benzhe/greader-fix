package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class aj1 implements cb3<io1> {
    public final xi1 a;

    public aj1(xi1 xi1Var) {
        this.a = xi1Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        io1 io1Var = this.a.b;
        Objects.requireNonNull(io1Var, "Cannot return null from a non-@Nullable @Provides method");
        return io1Var;
    }
}
