package defpackage;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class o81 implements cb3<sf1<hc1>> {
    public final mb3<rc1> a;
    public final mb3<Executor> b;

    public o81(mb3<rc1> mb3Var, mb3<Executor> mb3Var2) {
        this.a = mb3Var;
        this.b = mb3Var2;
    }

    @Override // defpackage.mb3
    public final Object get() {
        return new sf1(this.a.get(), this.b.get());
    }
}
