package defpackage;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class we2 implements cb3<se2> {
    public final mb3<Integer> a;
    public final mb3<Context> b;
    public final mb3<or0> c;
    public final mb3<ScheduledExecutorService> d;

    public we2(mb3<kr0> mb3Var, mb3<Integer> mb3Var2, mb3<Context> mb3Var3, mb3<or0> mb3Var4, mb3<ScheduledExecutorService> mb3Var5, mb3<Executor> mb3Var6) {
        this.a = mb3Var2;
        this.b = mb3Var3;
        this.c = mb3Var4;
        this.d = mb3Var5;
    }

    @Override // defpackage.mb3
    public final Object get() {
        return new se2(new ir0(), this.a.get().intValue(), this.b.get(), this.c.get(), this.d.get(), yn2.a());
    }
}
