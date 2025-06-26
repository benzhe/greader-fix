package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public class y66 implements jj7<v26> {
    public final i76 a;

    public y66(i76 i76Var) {
        this.a = i76Var;
    }

    @Override // defpackage.jj7
    public v26 get() {
        v26 v26VarG = this.a.g();
        Objects.requireNonNull(v26VarG, "Cannot return null from a non-@Nullable component method");
        return v26VarG;
    }
}
