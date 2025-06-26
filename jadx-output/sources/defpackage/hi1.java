package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class hi1 implements cb3<dk1> {
    public final gi1 a;

    public hi1(gi1 gi1Var) {
        this.a = gi1Var;
    }

    public static dk1 a(gi1 gi1Var) {
        dk1 dk1Var = gi1Var.a;
        Objects.requireNonNull(dk1Var, "Cannot return null from a non-@Nullable @Provides method");
        return dk1Var;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return a(this.a);
    }
}
