package defpackage;

import java.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
public final class fe1 implements cb3<Set<sf1<er3>>> {
    public final yd1 a;

    public fe1(yd1 yd1Var) {
        this.a = yd1Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        Set<sf1<er3>> set = this.a.a;
        Objects.requireNonNull(set, "Cannot return null from a non-@Nullable @Provides method");
        return set;
    }
}
