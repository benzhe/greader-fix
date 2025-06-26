package defpackage;

import android.os.Bundle;
import defpackage.n91;
import java.util.Objects;

/* loaded from: classes.dex */
public final class t22 extends q22<dp1> {
    public final sy0 a;
    public final n91.a b;
    public final yd1 c;

    public t22(sy0 sy0Var, n91.a aVar, yd1 yd1Var) {
        this.a = sy0Var;
        this.b = aVar;
        this.c = yd1Var;
    }

    @Override // defpackage.q22
    public final aw2<dp1> c(ll2 ll2Var, Bundle bundle) {
        p01 p01VarT = this.a.t();
        n91.a aVar = this.b;
        aVar.b = ll2Var;
        aVar.c = bundle;
        n91 n91VarA = aVar.a();
        Objects.requireNonNull(p01VarT);
        p01VarT.b = n91VarA;
        yd1 yd1Var = this.c;
        Objects.requireNonNull(yd1Var);
        p01VarT.a = yd1Var;
        return p01VarT.a().d().b();
    }
}
