package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public class e76 implements jj7<s56> {
    public final i76 a;

    public e76(i76 i76Var) {
        this.a = i76Var;
    }

    @Override // defpackage.jj7
    public s56 get() {
        s56 s56VarB = this.a.b();
        Objects.requireNonNull(s56VarB, "Cannot return null from a non-@Nullable component method");
        return s56VarB;
    }
}
