package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public class s66 implements jj7<g26> {
    public final i76 a;

    public s66(i76 i76Var) {
        this.a = i76Var;
    }

    @Override // defpackage.jj7
    public g26 get() {
        g26 g26VarE = this.a.e();
        Objects.requireNonNull(g26VarE, "Cannot return null from a non-@Nullable component method");
        return g26VarE;
    }
}
