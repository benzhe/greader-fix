package defpackage;

import java.util.Set;

/* loaded from: classes.dex */
public final class ab1 implements cb3<xa1> {
    public final mb3<Set<sf1<ua1>>> a;

    public ab1(mb3<Set<sf1<ua1>>> mb3Var) {
        this.a = mb3Var;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new xa1(this.a.get());
    }
}
