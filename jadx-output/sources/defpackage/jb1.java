package defpackage;

import java.util.Set;

/* loaded from: classes.dex */
public final class jb1 implements cb3<db1> {
    public final mb3<Set<sf1<ca1>>> a;

    public jb1(mb3<Set<sf1<ca1>>> mb3Var) {
        this.a = mb3Var;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new db1(this.a.get());
    }
}
