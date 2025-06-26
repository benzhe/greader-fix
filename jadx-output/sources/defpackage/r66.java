package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public class r66 implements jj7<bf5> {
    public final i76 a;

    public r66(i76 i76Var) {
        this.a = i76Var;
    }

    @Override // defpackage.jj7
    public bf5 get() {
        bf5 bf5VarP = this.a.p();
        Objects.requireNonNull(bf5VarP, "Cannot return null from a non-@Nullable component method");
        return bf5VarP;
    }
}
