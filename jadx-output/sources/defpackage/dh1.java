package defpackage;

import java.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
public final class dh1 implements cb3<Set<sf1<ca1>>> {
    public final rg1 a;
    public final mb3<a91> b;

    public dh1(rg1 rg1Var, mb3<a91> mb3Var) {
        this.a = rg1Var;
        this.b = mb3Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        Set<sf1<ca1>> setA = this.a.a(this.b.get());
        Objects.requireNonNull(setA, "Cannot return null from a non-@Nullable @Provides method");
        return setA;
    }
}
