package defpackage;

import java.util.Set;

/* loaded from: classes.dex */
public final class ic1 implements cb3<gc1> {
    public final mb3<Set<sf1<hc1>>> a;
    public final mb3<sk2> b;

    public ic1(mb3<Set<sf1<hc1>>> mb3Var, mb3<sk2> mb3Var2) {
        this.a = mb3Var;
        this.b = mb3Var2;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new gc1(this.a.get(), this.b.get());
    }
}
