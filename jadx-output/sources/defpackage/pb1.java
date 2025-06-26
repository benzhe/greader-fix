package defpackage;

import java.util.Set;

/* loaded from: classes.dex */
public final class pb1 implements cb3<nb1> {
    public final mb3<Set<sf1<ob1>>> a;

    public pb1(mb3<Set<sf1<ob1>>> mb3Var) {
        this.a = mb3Var;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new nb1(this.a.get());
    }
}
