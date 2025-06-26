package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class jp1 implements cb3<jz1<dp1>> {
    public final mb3<g42<dp1, zl2, f12>> a;
    public final mb3<g42<dp1, zl2, g12>> b;
    public final mb3<ll2> c;

    public jp1(mb3<g42<dp1, zl2, f12>> mb3Var, mb3<g42<dp1, zl2, g12>> mb3Var2, mb3<ll2> mb3Var3) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
    }

    @Override // defpackage.mb3
    public final Object get() {
        mb3<g42<dp1, zl2, f12>> mb3Var = this.a;
        g42<dp1, zl2, f12> g42Var = hp1.a[this.c.get().o.a - 1] != 1 ? this.b.get() : mb3Var.get();
        Objects.requireNonNull(g42Var, "Cannot return null from a non-@Nullable @Provides method");
        return g42Var;
    }
}
