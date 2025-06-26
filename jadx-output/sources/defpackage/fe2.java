package defpackage;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class fe2 implements cb3<ee2> {
    public final mb3<Context> a;
    public final mb3<ScheduledExecutorService> b;
    public final mb3<Integer> c;

    public fe2(mb3<kr0> mb3Var, mb3<Context> mb3Var2, mb3<ScheduledExecutorService> mb3Var3, mb3<Executor> mb3Var4, mb3<Integer> mb3Var5) {
        this.a = mb3Var2;
        this.b = mb3Var3;
        this.c = mb3Var5;
    }

    @Override // defpackage.mb3
    public final Object get() {
        return new ee2(new ir0(), this.a.get(), this.b.get(), yn2.a(), this.c.get().intValue());
    }
}
