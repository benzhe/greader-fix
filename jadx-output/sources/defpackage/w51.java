package defpackage;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class w51 implements cb3<p51> {
    public final mb3<i61> a;
    public final mb3<p90> b;
    public final mb3<Runnable> c;
    public final mb3<Executor> d;

    public w51(mb3<i61> mb3Var, mb3<p90> mb3Var2, mb3<Runnable> mb3Var3, mb3<Executor> mb3Var4) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new p51(this.a.get(), this.b.get(), this.c.get(), this.d.get());
    }
}
