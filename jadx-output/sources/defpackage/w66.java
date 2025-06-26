package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public class w66 implements jj7<o26> {
    public final i76 a;

    public w66(i76 i76Var) {
        this.a = i76Var;
    }

    @Override // defpackage.jj7
    public o26 get() {
        o26 o26VarJ = this.a.j();
        Objects.requireNonNull(o26VarJ, "Cannot return null from a non-@Nullable component method");
        return o26VarJ;
    }
}
