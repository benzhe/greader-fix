package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class l76 implements Object<g26> {
    public final j76 a;
    public final jj7<bf5> b;

    public l76(j76 j76Var, jj7<bf5> jj7Var) {
        this.a = j76Var;
        this.b = jj7Var;
    }

    public Object get() {
        j76 j76Var = this.a;
        bf5 bf5Var = this.b.get();
        Objects.requireNonNull(j76Var);
        return new g26(bf5Var);
    }
}
