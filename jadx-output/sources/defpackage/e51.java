package defpackage;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class e51 implements cb3<sf1<em3>> {
    public final mb3<e61> a;

    public e51(q41 q41Var, mb3<e61> mb3Var, mb3<Executor> mb3Var2) {
        this.a = mb3Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        return new sf1(this.a.get(), yn2.a());
    }
}
