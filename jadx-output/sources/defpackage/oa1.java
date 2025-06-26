package defpackage;

import java.util.Set;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class oa1 implements cb3<ga1> {
    public final mb3<ka1> a;
    public final mb3<Set<sf1<ha1>>> b;
    public final mb3<Executor> c;

    public oa1(mb3<ka1> mb3Var, mb3<Set<sf1<ha1>>> mb3Var2, mb3<Executor> mb3Var3) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new ga1(this.a.get(), this.b.get(), this.c.get());
    }
}
