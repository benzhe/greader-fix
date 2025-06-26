package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class se1 implements cb3<yd1> {
    public final yd1 a;

    public se1(yd1 yd1Var) {
        this.a = yd1Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        yd1 yd1Var = this.a;
        Objects.requireNonNull(yd1Var);
        return yd1Var;
    }
}
