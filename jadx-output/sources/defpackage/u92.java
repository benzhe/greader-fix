package defpackage;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class u92 implements cb3<p92> {
    public final mb3<Executor> a;
    public final mb3<or0> b;

    public u92(mb3<Executor> mb3Var, mb3<or0> mb3Var2) {
        this.a = mb3Var;
        this.b = mb3Var2;
    }

    @Override // defpackage.mb3
    public final Object get() {
        return new p92(this.a.get(), this.b.get());
    }
}
