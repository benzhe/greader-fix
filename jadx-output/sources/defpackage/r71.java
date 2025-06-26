package defpackage;

import java.math.BigInteger;

/* loaded from: classes.dex */
public final class r71 implements cb3<nr0> {
    public final mb3<b20> a;
    public final mb3<xr0> b;
    public final mb3<ll2> c;

    public r71(mb3<b20> mb3Var, mb3<xr0> mb3Var2, mb3<ll2> mb3Var3) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
    }

    @Override // defpackage.mb3
    public final Object get() {
        String string;
        b20 b20Var = this.a.get();
        xr0 xr0Var = this.b.get();
        String str = this.c.get().f;
        wr0 wr0Var = xr0Var.c;
        synchronized (wr0Var) {
            string = wr0Var.a.toString();
            wr0Var.a = wr0Var.a.add(BigInteger.ONE);
            wr0Var.b = string;
        }
        return new nr0(b20Var, xr0Var, string, str);
    }
}
