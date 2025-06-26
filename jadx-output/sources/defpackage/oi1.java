package defpackage;

import defpackage.n91;
import java.util.Objects;

/* loaded from: classes.dex */
public final class oi1 implements cb3<k61<j41>> {
    public final mb3<sy0> a;
    public final mb3<n91.a> b;
    public final mb3<yd1> c;
    public final mb3<gi1> d;
    public final mb3<kc1> e;

    public oi1(mb3<sy0> mb3Var, mb3<n91.a> mb3Var2, mb3<yd1> mb3Var3, mb3<gi1> mb3Var4, mb3<kc1> mb3Var5) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
        this.e = mb3Var5;
    }

    @Override // defpackage.mb3
    public final Object get() {
        sy0 sy0Var = this.a.get();
        n91.a aVar = this.b.get();
        yd1 yd1Var = this.c.get();
        gi1 gi1Var = this.d.get();
        kc1 kc1Var = this.e.get();
        c01 c01VarL = sy0Var.l();
        n91 n91VarA = aVar.a();
        Objects.requireNonNull(c01VarL);
        c01VarL.b = n91VarA;
        Objects.requireNonNull(yd1Var);
        c01VarL.a = yd1Var;
        Objects.requireNonNull(gi1Var);
        c01VarL.f = gi1Var;
        c01VarL.c = new x42(null);
        c01VarL.d = new c61(kc1Var);
        c01VarL.e = new i41(null);
        j61<j41> j61Var = ((f01) c01VarL.a()).y1.get();
        Objects.requireNonNull(j61Var, "Cannot return null from a non-@Nullable @Provides method");
        return j61Var;
    }
}
