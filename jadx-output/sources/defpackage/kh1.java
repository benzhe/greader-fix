package defpackage;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class kh1 implements cb3<sf1<ed1>> {
    public final rg1 a;
    public final mb3<Executor> b;

    public kh1(rg1 rg1Var, mb3<Executor> mb3Var) {
        this.a = rg1Var;
        this.b = mb3Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        rg1 rg1Var = this.a;
        Executor executor = this.b.get();
        final xw0 xw0Var = rg1Var.b;
        return new sf1(new ed1(xw0Var) { // from class: tg1
            public final xw0 e;

            {
                this.e = xw0Var;
            }

            @Override // defpackage.ed1
            public final void C() {
                xw0 xw0Var2 = this.e;
                if (xw0Var2.n0() != null) {
                    xw0Var2.n0().close();
                }
            }
        }, executor);
    }
}
