package defpackage;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class sn1 implements cb3<pn1> {
    public final mb3<Executor> a;
    public final mb3<d31> b;
    public final mb3<rf1> c;

    public sn1(mb3<Executor> mb3Var, mb3<d31> mb3Var2, mb3<rf1> mb3Var3) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new pn1(this.a.get(), this.b.get(), this.c.get());
    }
}
