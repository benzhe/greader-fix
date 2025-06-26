package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public class z66 implements jj7<no5> {
    public final i76 a;

    public z66(i76 i76Var) {
        this.a = i76Var;
    }

    @Override // defpackage.jj7
    public no5 get() {
        no5 no5VarF = this.a.f();
        Objects.requireNonNull(no5VarF, "Cannot return null from a non-@Nullable component method");
        return no5VarF;
    }
}
