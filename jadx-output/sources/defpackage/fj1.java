package defpackage;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class fj1 implements cb3<d31> {
    public final mb3<bm3> a;
    public final mb3<Executor> b;
    public final mb3<Context> c;
    public final mb3<b20> d;

    public fj1(mb3<bm3> mb3Var, mb3<Executor> mb3Var2, mb3<Context> mb3Var3, mb3<b20> mb3Var4) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
    }

    @Override // defpackage.mb3
    public final Object get() {
        bm3 bm3Var = this.a.get();
        Executor executor = this.b.get();
        Context context = this.c.get();
        return new d31(executor, new o21(context, bm3Var), this.d.get());
    }
}
