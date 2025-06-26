package defpackage;

import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class it1 implements cb3<Set<sf1<er3>>> {
    public final mb3<jt1> a;
    public final mb3<Executor> b;

    public it1(at1 at1Var, mb3<jt1> mb3Var, mb3<Executor> mb3Var2) {
        this.a = mb3Var;
        this.b = mb3Var2;
    }

    @Override // defpackage.mb3
    public final Object get() {
        Set setA = at1.a(this.a.get(), this.b.get());
        Objects.requireNonNull(setA, "Cannot return null from a non-@Nullable @Provides method");
        return setA;
    }
}
