package defpackage;

import java.util.Set;

/* loaded from: classes.dex */
public final class sa1 implements cb3<qa1> {
    public final mb3<Set<sf1<va1>>> a;

    public sa1(mb3<Set<sf1<va1>>> mb3Var) {
        this.a = mb3Var;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new qa1(this.a.get());
    }
}
