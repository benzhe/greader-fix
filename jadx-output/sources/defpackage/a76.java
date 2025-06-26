package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public class a76 implements jj7<y27> {
    public final i76 a;

    public a76(i76 i76Var) {
        this.a = i76Var;
    }

    @Override // defpackage.jj7
    public y27 get() {
        y27 y27VarO = this.a.o();
        Objects.requireNonNull(y27VarO, "Cannot return null from a non-@Nullable component method");
        return y27VarO;
    }
}
