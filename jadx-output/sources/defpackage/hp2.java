package defpackage;

import java.util.Set;

/* loaded from: classes.dex */
public final class hp2 implements cb3<cp2> {
    public final mb3<Set<sf1<fp2>>> a;

    public hp2(mb3<Set<sf1<fp2>>> mb3Var) {
        this.a = mb3Var;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new cp2(this.a.get());
    }
}
