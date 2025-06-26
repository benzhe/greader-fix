package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class k76 implements Object<pc7<String>> {
    public final j76 a;
    public final jj7<g26> b;

    public k76(j76 j76Var, jj7<g26> jj7Var) {
        this.a = j76Var;
        this.b = jj7Var;
    }

    public Object get() {
        j76 j76Var = this.a;
        g26 g26Var = this.b.get();
        Objects.requireNonNull(j76Var);
        pc7<String> pc7Var = g26Var.b;
        Objects.requireNonNull(pc7Var, "Cannot return null from a non-@Nullable @Provides method");
        return pc7Var;
    }
}
