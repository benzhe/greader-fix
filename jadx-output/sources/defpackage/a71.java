package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class a71 implements cb3<wk2> {
    public final v61 a;

    public a71(v61 v61Var) {
        this.a = v61Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        wk2 wk2Var = this.a.a.b.b;
        Objects.requireNonNull(wk2Var, "Cannot return null from a non-@Nullable @Provides method");
        return wk2Var;
    }
}
