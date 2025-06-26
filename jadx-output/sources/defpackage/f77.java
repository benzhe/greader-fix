package defpackage;

import defpackage.b57;
import defpackage.z27;

/* loaded from: classes2.dex */
public class f77 implements Runnable {
    public final /* synthetic */ d77 e;

    public f77(d77 d77Var) {
        this.e = d77Var;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.e.u.a != i37.TRANSIENT_FAILURE) {
            return;
        }
        d77 d77Var = this.e;
        d77Var.k.d();
        b57.c cVar = d77Var.p;
        if (cVar != null) {
            cVar.a();
            d77Var.p = null;
            d77Var.n = null;
        }
        this.e.j.a(z27.a.INFO, "CONNECTING; backoff interrupted");
        d77.h(this.e, i37.CONNECTING);
        d77.i(this.e);
    }
}
