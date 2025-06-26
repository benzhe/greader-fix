package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public class u66 implements jj7<o96> {
    public final i76 a;

    public u66(i76 i76Var) {
        this.a = i76Var;
    }

    @Override // defpackage.jj7
    public o96 get() {
        o96 o96VarC = this.a.c();
        Objects.requireNonNull(o96VarC, "Cannot return null from a non-@Nullable component method");
        return o96VarC;
    }
}
