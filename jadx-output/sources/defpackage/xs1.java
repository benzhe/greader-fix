package defpackage;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class xs1 implements cb3<ss1> {
    public final mb3<ls0> a;
    public final mb3<yp2> b;

    public xs1(mb3<Executor> mb3Var, mb3<ls0> mb3Var2, mb3<yp2> mb3Var3, mb3<aq2> mb3Var4) {
        this.a = mb3Var2;
        this.b = mb3Var3;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new ss1(yn2.a(), this.a.get(), this.b.get(), new aq2());
    }
}
