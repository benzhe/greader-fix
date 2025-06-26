package defpackage;

import android.os.Bundle;
import defpackage.n91;
import java.util.Objects;

/* loaded from: classes.dex */
public final class o22 extends q22<l61> {
    public final sy0 a;
    public final gi1 b;
    public final n91.a c;
    public final yd1 d;

    public o22(sy0 sy0Var, gi1 gi1Var, n91.a aVar, yd1 yd1Var) {
        this.a = sy0Var;
        this.b = gi1Var;
        this.c = aVar;
        this.d = yd1Var;
    }

    @Override // defpackage.q22
    public final aw2<l61> c(ll2 ll2Var, Bundle bundle) {
        rz0 rz0VarS = this.a.s();
        n91.a aVar = this.c;
        aVar.b = ll2Var;
        aVar.c = bundle;
        n91 n91VarA = aVar.a();
        Objects.requireNonNull(rz0VarS);
        rz0VarS.b = n91VarA;
        yd1 yd1Var = this.d;
        Objects.requireNonNull(yd1Var);
        rz0VarS.a = yd1Var;
        gi1 gi1Var = this.b;
        Objects.requireNonNull(gi1Var);
        rz0VarS.c = gi1Var;
        rz0VarS.d = new i41(null);
        return rz0VarS.a().c().b();
    }
}
