package defpackage;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class sx1 implements cb3<sf1<fp2>> {
    public final mb3<ey1> a;
    public final mb3<Executor> b;

    public sx1(mb3<ey1> mb3Var, mb3<Executor> mb3Var2) {
        this.a = mb3Var;
        this.b = mb3Var2;
    }

    @Override // defpackage.mb3
    public final Object get() {
        return new sf1(this.a.get(), this.b.get());
    }
}
