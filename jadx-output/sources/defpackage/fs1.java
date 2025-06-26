package defpackage;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class fs1 implements cb3<sf1<fp2>> {
    public final mb3<rs1> a;
    public final mb3<Executor> b;
    public final mb3<px1> c;

    public fs1(mb3<rs1> mb3Var, mb3<Executor> mb3Var2, mb3<px1> mb3Var3) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
    }

    @Override // defpackage.mb3
    public final Object get() {
        rs1 rs1Var = this.a.get();
        Executor executor = this.b.get();
        return ((Boolean) os3.j.f.a(y40.e5)).booleanValue() ? new sf1(this.c.get(), executor) : new sf1(rs1Var, executor);
    }
}
