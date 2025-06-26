package defpackage;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class u21 implements cb3<l21> {
    public final mb3<bm3> a;
    public final mb3<qf0> b;
    public final mb3<Executor> c;

    public u21(mb3<bm3> mb3Var, mb3<qf0> mb3Var2, mb3<Executor> mb3Var3) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
    }

    @Override // defpackage.mb3
    public final Object get() {
        bm3 bm3Var = this.a.get();
        return new l21(bm3Var.c, this.b.get(), this.c.get());
    }
}
