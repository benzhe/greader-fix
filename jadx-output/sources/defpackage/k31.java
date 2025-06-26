package defpackage;

import java.util.Collections;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
public final class k31 implements cb3<Set<sf1<em3>>> {
    public final mb3<a61> a;

    public k31(j31 j31Var, mb3<a61> mb3Var) {
        this.a = mb3Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        Set setSingleton = Collections.singleton(new sf1(this.a.get(), ms0.f));
        Objects.requireNonNull(setSingleton, "Cannot return null from a non-@Nullable @Provides method");
        return setSingleton;
    }
}
