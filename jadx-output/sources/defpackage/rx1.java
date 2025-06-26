package defpackage;

import java.util.Set;

/* loaded from: classes.dex */
public final class rx1 implements cb3<px1> {
    public final mb3<Set<ox1>> a;
    public final mb3<qp2> b;

    public rx1(mb3<Set<ox1>> mb3Var, mb3<qp2> mb3Var2) {
        this.a = mb3Var;
        this.b = mb3Var2;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new px1(this.a.get(), this.b.get());
    }
}
