package defpackage;

import java.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
public final class r41 implements cb3<nb1> {
    public final q41 a;
    public final mb3<Set<sf1<ob1>>> b;

    public r41(q41 q41Var, mb3<Set<sf1<ob1>>> mb3Var) {
        this.a = q41Var;
        this.b = mb3Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        nb1 nb1VarA = this.a.a(this.b.get());
        Objects.requireNonNull(nb1VarA, "Cannot return null from a non-@Nullable @Provides method");
        return nb1VarA;
    }
}
