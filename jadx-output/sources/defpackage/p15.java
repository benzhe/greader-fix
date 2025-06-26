package defpackage;

/* loaded from: classes.dex */
public final class p15 implements Runnable {
    public final /* synthetic */ long e;
    public final /* synthetic */ x15 f;

    public p15(x15 x15Var, long j) {
        this.f = x15Var;
        this.e = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        x15 x15Var = this.f;
        long j = this.e;
        x15Var.d();
        x15Var.i();
        x15Var.a.a().n.b("Activity paused, time", Long.valueOf(j));
        s15 s15Var = x15Var.f;
        r15 r15Var = new r15(s15Var, s15Var.b.a.n.a(), j);
        s15Var.a = r15Var;
        s15Var.b.c.postDelayed(r15Var, 2000L);
        if (x15Var.a.g.x()) {
            x15Var.e.c.c();
        }
        w15 w15Var = x15Var.d;
        if (w15Var.a.a.g.s(null, ew4.u0)) {
            return;
        }
        w15Var.a.a.q().v.b(true);
    }
}
