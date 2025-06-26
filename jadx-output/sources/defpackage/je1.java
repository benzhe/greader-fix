package defpackage;

import java.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
public final class je1 implements cb3<Set<sf1<da1>>> {
    public final yd1 a;

    public je1(yd1 yd1Var) {
        this.a = yd1Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        Set<sf1<da1>> set = this.a.f;
        Objects.requireNonNull(set, "Cannot return null from a non-@Nullable @Provides method");
        return set;
    }
}
