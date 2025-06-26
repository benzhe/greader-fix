package defpackage;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class p81 implements cb3<sf1<va1>> {
    public final mb3<as1> a;
    public final mb3<Executor> b;
    public final mb3<gx1> c;

    public p81(mb3<as1> mb3Var, mb3<Executor> mb3Var2, mb3<gx1> mb3Var3) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
    }

    @Override // defpackage.mb3
    public final Object get() {
        as1 as1Var = this.a.get();
        Executor executor = this.b.get();
        return ((Boolean) os3.j.f.a(y40.e5)).booleanValue() ? new sf1(this.c.get(), executor) : new sf1(as1Var, executor);
    }
}
