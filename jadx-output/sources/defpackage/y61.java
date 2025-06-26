package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class y61 implements cb3<sk2> {
    public final v61 a;

    public y61(v61 v61Var) {
        this.a = v61Var;
    }

    public static sk2 a(v61 v61Var) {
        sk2 sk2Var = v61Var.b;
        Objects.requireNonNull(sk2Var, "Cannot return null from a non-@Nullable @Provides method");
        return sk2Var;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return a(this.a);
    }
}
