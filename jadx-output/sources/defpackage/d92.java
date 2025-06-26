package defpackage;

import java.util.Set;

/* loaded from: classes.dex */
public final class d92 implements cb3<b92> {
    public final mb3<Set<String>> a;

    public d92(mb3<Set<String>> mb3Var) {
        this.a = mb3Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        return new b92(this.a.get());
    }
}
