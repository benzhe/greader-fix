package defpackage;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class pf2 implements cb3<nf2> {
    public final mb3<ScheduledExecutorService> a;
    public final mb3<Context> b;

    public pf2(mb3<fl0> mb3Var, mb3<ScheduledExecutorService> mb3Var2, mb3<Context> mb3Var3) {
        this.a = mb3Var2;
        this.b = mb3Var3;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new nf2((fl0) n11.a.get(), this.a.get(), this.b.get());
    }
}
