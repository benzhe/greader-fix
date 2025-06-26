package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public class x66 implements jj7<z86> {
    public final i76 a;

    public x66(i76 i76Var) {
        this.a = i76Var;
    }

    @Override // defpackage.jj7
    public z86 get() {
        z86 z86VarM = this.a.m();
        Objects.requireNonNull(z86VarM, "Cannot return null from a non-@Nullable component method");
        return z86VarM;
    }
}
