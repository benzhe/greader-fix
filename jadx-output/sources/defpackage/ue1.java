package defpackage;

import java.util.Collections;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
public final class ue1 implements cb3<Set<sf1<xf1>>> {
    public ue1(yd1 yd1Var) {
    }

    @Override // defpackage.mb3
    public final Object get() {
        Set setEmptySet = Collections.emptySet();
        Objects.requireNonNull(setEmptySet, "Cannot return null from a non-@Nullable @Provides method");
        return setEmptySet;
    }
}
