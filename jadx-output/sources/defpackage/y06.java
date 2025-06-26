package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public class y06 implements jj7<tz5> {
    public final e16 a;

    public y06(e16 e16Var) {
        this.a = e16Var;
    }

    @Override // defpackage.jj7
    public tz5 get() {
        tz5 tz5VarD = this.a.d();
        Objects.requireNonNull(tz5VarD, "Cannot return null from a non-@Nullable component method");
        return tz5VarD;
    }
}
