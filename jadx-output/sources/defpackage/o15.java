package defpackage;

/* loaded from: classes.dex */
public final class o15 implements Runnable {
    public final /* synthetic */ long e;
    public final /* synthetic */ x15 f;

    public o15(x15 x15Var, long j) {
        this.f = x15Var;
        this.e = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        x15 x15Var = this.f;
        long j = this.e;
        x15Var.d();
        x15Var.i();
        x15Var.a.a().n.b("Activity resumed, time", Long.valueOf(j));
        cs4 cs4Var = x15Var.a.g;
        dw4<Boolean> dw4Var = ew4.u0;
        if (cs4Var.s(null, dw4Var)) {
            if (x15Var.a.g.x() || x15Var.a.q().v.a()) {
                u15 u15Var = x15Var.e;
                u15Var.d.d();
                u15Var.c.c();
                u15Var.a = j;
                u15Var.b = j;
            }
            x15Var.f.a();
        } else {
            x15Var.f.a();
            if (x15Var.a.g.x()) {
                u15 u15Var2 = x15Var.e;
                u15Var2.d.d();
                u15Var2.c.c();
                u15Var2.a = j;
                u15Var2.b = j;
            }
        }
        w15 w15Var = x15Var.d;
        w15Var.a.d();
        if (w15Var.a.a.g()) {
            if (!w15Var.a.a.g.s(null, dw4Var)) {
                w15Var.a.a.q().v.b(false);
            }
            w15Var.b(w15Var.a.a.n.a(), false);
        }
    }
}
