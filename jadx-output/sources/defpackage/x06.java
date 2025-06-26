package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public class x06 implements jj7<c06> {
    public final e16 a;

    public x06(e16 e16Var) {
        this.a = e16Var;
    }

    @Override // defpackage.jj7
    public c06 get() {
        c06 c06VarA = this.a.a();
        Objects.requireNonNull(c06VarA, "Cannot return null from a non-@Nullable component method");
        return c06VarA;
    }
}
