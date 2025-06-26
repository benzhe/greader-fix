package defpackage;

import java.util.Set;

/* loaded from: classes.dex */
public final class vd1 implements cb3<md1> {
    public final mb3<Set<sf1<ud1>>> a;

    public vd1(mb3<Set<sf1<ud1>>> mb3Var) {
        this.a = mb3Var;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new md1(this.a.get());
    }
}
