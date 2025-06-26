package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class k51 implements cb3<jz1<j41>> {
    public final mb3<Boolean> a;
    public final mb3<p22> b;
    public final mb3<g42<j41, zl2, g12>> c;

    public k51(mb3<Boolean> mb3Var, mb3<p22> mb3Var2, mb3<g42<j41, zl2, g12>> mb3Var3) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
    }

    @Override // defpackage.mb3
    public final Object get() {
        boolean zBooleanValue = this.a.get().booleanValue();
        jz1 jz1Var = (p22) this.b.get();
        jz1 jz1Var2 = (g42) this.c.get();
        if (!zBooleanValue) {
            jz1Var = jz1Var2;
        }
        Objects.requireNonNull(jz1Var, "Cannot return null from a non-@Nullable @Provides method");
        return jz1Var;
    }
}
