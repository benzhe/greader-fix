package defpackage;

import java.util.Set;

/* loaded from: classes.dex */
public final class pa1 implements cb3<ka1> {
    public final mb3<Set<sf1<ra1>>> a;

    public pa1(mb3<Set<sf1<ra1>>> mb3Var) {
        this.a = mb3Var;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new ka1(this.a.get());
    }
}
