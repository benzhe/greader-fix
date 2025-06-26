package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class z42 implements cb3<x42> {
    public final x42 a;

    public z42(x42 x42Var) {
        this.a = x42Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        x42 x42Var = this.a;
        Objects.requireNonNull(x42Var);
        return x42Var;
    }
}
