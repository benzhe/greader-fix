package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public class b76 implements jj7<y36> {
    public final i76 a;

    public b76(i76 i76Var) {
        this.a = i76Var;
    }

    @Override // defpackage.jj7
    public y36 get() {
        y36 y36VarH = this.a.h();
        Objects.requireNonNull(y36VarH, "Cannot return null from a non-@Nullable component method");
        return y36VarH;
    }
}
