package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class r91 implements cb3<ll2> {
    public final n91 a;

    public r91(n91 n91Var) {
        this.a = n91Var;
    }

    public static ll2 a(n91 n91Var) {
        ll2 ll2Var = n91Var.b;
        Objects.requireNonNull(ll2Var, "Cannot return null from a non-@Nullable @Provides method");
        return ll2Var;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return a(this.a);
    }
}
