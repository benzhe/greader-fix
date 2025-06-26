package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class s76 implements Object<q66> {
    public final m76 a;
    public final jj7<o66> b;

    public s76(m76 m76Var, jj7<o66> jj7Var) {
        this.a = m76Var;
        this.b = jj7Var;
    }

    public Object get() {
        m76 m76Var = this.a;
        o66 o66Var = this.b.get();
        Objects.requireNonNull(m76Var);
        return new q66(o66Var);
    }
}
