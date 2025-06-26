package defpackage;

import java.util.Collections;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
public final class x41 implements cb3<Set<sf1<ob1>>> {
    public final q41 a;
    public final mb3<a61> b;

    public x41(q41 q41Var, mb3<a61> mb3Var) {
        this.a = q41Var;
        this.b = mb3Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        Set setSingleton = Collections.singleton(new sf1(this.b.get(), ms0.f));
        Objects.requireNonNull(setSingleton, "Cannot return null from a non-@Nullable @Provides method");
        return setSingleton;
    }
}
