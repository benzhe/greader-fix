package defpackage;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class vn1 implements cb3<fn1> {
    public final mb3<ll2> a;
    public final mb3<Executor> b;
    public final mb3<mp1> c;

    public vn1(mb3<ll2> mb3Var, mb3<Executor> mb3Var2, mb3<mp1> mb3Var3) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new fn1(this.a.get(), this.b.get(), this.c.get());
    }
}
