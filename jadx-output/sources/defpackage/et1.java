package defpackage;

import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class et1 implements cb3<Set<sf1<ob1>>> {
    public final at1 a;
    public final mb3<jt1> b;
    public final mb3<Executor> c;

    public et1(at1 at1Var, mb3<jt1> mb3Var, mb3<Executor> mb3Var2) {
        this.a = at1Var;
        this.b = mb3Var;
        this.c = mb3Var2;
    }

    @Override // defpackage.mb3
    public final Object get() {
        Set setA = at1.a(this.b.get(), this.c.get());
        Objects.requireNonNull(setA, "Cannot return null from a non-@Nullable @Provides method");
        return setA;
    }
}
