package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class ii1 implements cb3<gi1> {
    public final gi1 a;

    public ii1(gi1 gi1Var) {
        this.a = gi1Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        gi1 gi1Var = this.a;
        Objects.requireNonNull(gi1Var);
        return gi1Var;
    }
}
