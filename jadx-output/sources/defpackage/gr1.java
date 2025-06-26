package defpackage;

import java.util.Collections;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class gr1 implements cb3<Set<sf1<fp2>>> {
    public final mb3<Executor> a;
    public final mb3<wr1> b;

    public gr1(mb3<Executor> mb3Var, mb3<wr1> mb3Var2) {
        this.a = mb3Var;
        this.b = mb3Var2;
    }

    @Override // defpackage.mb3
    public final Object get() {
        Executor executor = this.a.get();
        Set setSingleton = ((Boolean) os3.j.f.a(y40.N2)).booleanValue() ? Collections.singleton(new sf1(this.b.get(), executor)) : Collections.emptySet();
        Objects.requireNonNull(setSingleton, "Cannot return null from a non-@Nullable @Provides method");
        return setSingleton;
    }
}
