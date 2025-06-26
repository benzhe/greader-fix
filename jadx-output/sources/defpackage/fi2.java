package defpackage;

import com.google.android.gms.internal.ads.zzvq;
import com.google.android.gms.internal.ads.zzwc;
import defpackage.l91;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class fi2<R extends l91<? extends f61>> {
    public final sm2 a;
    public final oi2 b;
    public final ni2<R> c;
    public final Executor d;
    public ji2 e;

    public fi2(sm2 sm2Var, oi2 oi2Var, ni2<R> ni2Var, Executor executor) {
        this.a = sm2Var;
        this.b = oi2Var;
        this.c = ni2Var;
        this.d = executor;
    }

    @Deprecated
    public final bn2 a() {
        ll2 ll2VarB = this.c.a(this.b).a().b();
        zzvq zzvqVar = ll2VarB.d;
        String str = ll2VarB.f;
        zzwc zzwcVar = ll2VarB.j;
        rm2 rm2Var = (rm2) this.a;
        return new en2(zzvqVar, str, new um0(rm2Var.b.h).e().j, rm2Var.b.n, zzwcVar);
    }
}
