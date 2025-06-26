package defpackage;

import defpackage.h47;
import java.util.Objects;

/* loaded from: classes.dex */
public final class c86 implements Object<y27> {
    public final b86 a;
    public final jj7<String> b;

    public c86(b86 b86Var, jj7<String> jj7Var) {
        this.a = b86Var;
        this.b = jj7Var;
    }

    public Object get() {
        b86 b86Var = this.a;
        String str = this.b.get();
        Objects.requireNonNull(b86Var);
        h47 h47Var = h47.b;
        if (h47Var == null) {
            throw new h47.c("No functional channel service provider found. Try adding a dependency on the grpc-okhttp, grpc-netty, or grpc-netty-shaded artifact");
        }
        f47 f47VarA = h47Var.a(str).a();
        Objects.requireNonNull(f47VarA, "Cannot return null from a non-@Nullable @Provides method");
        return f47VarA;
    }
}
