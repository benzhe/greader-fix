package defpackage;

import defpackage.z27;

/* loaded from: classes2.dex */
public class e77 implements Runnable {
    public final /* synthetic */ d77 e;

    public e77(d77 d77Var) {
        this.e = d77Var;
    }

    @Override // java.lang.Runnable
    public void run() {
        d77 d77Var = this.e;
        d77Var.p = null;
        d77Var.j.a(z27.a.INFO, "CONNECTING after backoff");
        d77.h(this.e, i37.CONNECTING);
        d77.i(this.e);
    }
}
