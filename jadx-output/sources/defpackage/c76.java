package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public class c76 implements jj7<w56> {
    public final i76 a;

    public c76(i76 i76Var) {
        this.a = i76Var;
    }

    @Override // defpackage.jj7
    public w56 get() {
        w56 w56VarD = this.a.d();
        Objects.requireNonNull(w56VarD, "Cannot return null from a non-@Nullable component method");
        return w56VarD;
    }
}
