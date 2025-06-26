package defpackage;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class b91 implements cb3<a91> {
    public final mb3<qa1> a;
    public final mb3<sk2> b;
    public final mb3<ScheduledExecutorService> c;
    public final mb3<Executor> d;

    public b91(mb3<qa1> mb3Var, mb3<sk2> mb3Var2, mb3<ScheduledExecutorService> mb3Var3, mb3<Executor> mb3Var4) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new a91(this.a.get(), this.b.get(), this.c.get(), this.d.get());
    }
}
