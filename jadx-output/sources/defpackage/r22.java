package defpackage;

import android.os.Bundle;
import defpackage.n91;
import java.util.Objects;

/* loaded from: classes.dex */
public final class r22 extends q22<qg1> {
    public final sy0 a;
    public final n91.a b;
    public final x42 c;
    public final yd1 d;

    public r22(sy0 sy0Var, n91.a aVar, x42 x42Var, yd1 yd1Var) {
        this.a = sy0Var;
        this.b = aVar;
        this.c = x42Var;
        this.d = yd1Var;
    }

    @Override // defpackage.q22
    public final aw2<qg1> c(ll2 ll2Var, Bundle bundle) {
        k01 k01VarQ = this.a.q();
        n91.a aVar = this.b;
        aVar.b = ll2Var;
        aVar.c = bundle;
        n91 n91VarA = aVar.a();
        Objects.requireNonNull(k01VarQ);
        k01VarQ.b = n91VarA;
        yd1 yd1Var = this.d;
        Objects.requireNonNull(yd1Var);
        k01VarQ.a = yd1Var;
        x42 x42Var = this.c;
        Objects.requireNonNull(x42Var);
        k01VarQ.c = x42Var;
        return k01VarQ.a().b().b();
    }
}
