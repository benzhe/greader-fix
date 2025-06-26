package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public class t66 implements jj7<pc7<String>> {
    public final i76 a;

    public t66(i76 i76Var) {
        this.a = i76Var;
    }

    @Override // defpackage.jj7
    public pc7<String> get() {
        pc7<String> pc7VarL = this.a.l();
        Objects.requireNonNull(pc7VarL, "Cannot return null from a non-@Nullable component method");
        return pc7VarL;
    }
}
