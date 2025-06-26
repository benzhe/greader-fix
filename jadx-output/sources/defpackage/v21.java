package defpackage;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class v21 implements cb3<q21> {
    public final mb3<qf0> a;
    public final mb3<o21> b;
    public final mb3<Executor> c;
    public final mb3<l21> d;
    public final mb3<b20> e;

    public v21(mb3<qf0> mb3Var, mb3<o21> mb3Var2, mb3<Executor> mb3Var3, mb3<l21> mb3Var4, mb3<b20> mb3Var5) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
        this.e = mb3Var5;
    }

    public static v21 a(mb3<qf0> mb3Var, mb3<o21> mb3Var2, mb3<Executor> mb3Var3, mb3<l21> mb3Var4, mb3<b20> mb3Var5) {
        return new v21(mb3Var, mb3Var2, mb3Var3, mb3Var4, mb3Var5);
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new q21(this.a.get(), this.b.get(), this.c.get(), this.d.get(), this.e.get());
    }
}
