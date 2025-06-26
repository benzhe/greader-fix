package defpackage;

import java.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
public final class ce1 implements cb3<ba1> {
    public final yd1 a;
    public final mb3<Set<sf1<da1>>> b;

    public ce1(yd1 yd1Var, mb3<Set<sf1<da1>>> mb3Var) {
        this.a = yd1Var;
        this.b = mb3Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        yd1 yd1Var = this.a;
        Set<sf1<da1>> set = this.b.get();
        if (yd1Var.n == null) {
            yd1Var.n = new ba1(set);
        }
        ba1 ba1Var = yd1Var.n;
        Objects.requireNonNull(ba1Var, "Cannot return null from a non-@Nullable @Provides method");
        return ba1Var;
    }
}
