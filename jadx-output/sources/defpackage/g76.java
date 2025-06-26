package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public class g76 implements jj7<m66> {
    public final i76 a;

    public g76(i76 i76Var) {
        this.a = i76Var;
    }

    @Override // defpackage.jj7
    public m66 get() {
        m66 m66VarI = this.a.i();
        Objects.requireNonNull(m66VarI, "Cannot return null from a non-@Nullable component method");
        return m66VarI;
    }
}
