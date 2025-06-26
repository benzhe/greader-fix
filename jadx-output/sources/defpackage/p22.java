package defpackage;

import android.os.Bundle;
import android.view.ViewGroup;
import defpackage.n91;
import java.util.Objects;

/* loaded from: classes.dex */
public final class p22 extends q22<j41> {
    public final sy0 a;
    public final n91.a b;
    public final x42 c;
    public final yd1 d;
    public final gi1 e;
    public final kc1 f;
    public final ViewGroup g;

    public p22(sy0 sy0Var, n91.a aVar, x42 x42Var, yd1 yd1Var, gi1 gi1Var, kc1 kc1Var, ViewGroup viewGroup) {
        this.a = sy0Var;
        this.b = aVar;
        this.c = x42Var;
        this.d = yd1Var;
        this.e = gi1Var;
        this.f = kc1Var;
        this.g = viewGroup;
    }

    @Override // defpackage.q22
    public final aw2<j41> c(ll2 ll2Var, Bundle bundle) {
        c01 c01VarL = this.a.l();
        n91.a aVar = this.b;
        aVar.b = ll2Var;
        aVar.c = bundle;
        n91 n91VarA = aVar.a();
        Objects.requireNonNull(c01VarL);
        c01VarL.b = n91VarA;
        yd1 yd1Var = this.d;
        Objects.requireNonNull(yd1Var);
        c01VarL.a = yd1Var;
        x42 x42Var = this.c;
        Objects.requireNonNull(x42Var);
        c01VarL.c = x42Var;
        gi1 gi1Var = this.e;
        Objects.requireNonNull(gi1Var);
        c01VarL.f = gi1Var;
        c01VarL.d = new c61(this.f);
        c01VarL.e = new i41(this.g);
        return c01VarL.a().c().b();
    }
}
