package defpackage;

import com.google.android.gms.ads.AdError;
import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public final class l42 {
    public boolean a = false;
    public final /* synthetic */ mz1 b;
    public final /* synthetic */ xs0 c;

    public l42(g42 g42Var, mz1 mz1Var, xs0 xs0Var) {
        this.b = mz1Var;
        this.c = xs0Var;
    }

    public final void a(int i) {
        if (this.a) {
            return;
        }
        b(new zzvh(i, g42.c(this.b.a, i), AdError.UNDEFINED_DOMAIN, null, null));
    }

    public final void b(zzvh zzvhVar) {
        dm2 dm2Var = dm2.INTERNAL_ERROR;
        if (((Boolean) os3.j.f.a(y40.e3)).booleanValue()) {
            dm2Var = dm2.NO_FILL;
        }
        this.c.b(new oz1(dm2Var, zzvhVar));
    }
}
