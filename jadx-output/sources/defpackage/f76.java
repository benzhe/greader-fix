package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public class f76 implements jj7<k66> {
    public final i76 a;

    public f76(i76 i76Var) {
        this.a = i76Var;
    }

    @Override // defpackage.jj7
    public k66 get() {
        k66 k66VarK = this.a.k();
        Objects.requireNonNull(k66VarK, "Cannot return null from a non-@Nullable component method");
        return k66VarK;
    }
}
