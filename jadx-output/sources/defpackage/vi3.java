package defpackage;

import android.net.Uri;
import android.os.Handler;
import java.io.IOException;

/* loaded from: classes.dex */
public final class vi3 implements yi3, zi3 {
    public final Uri e;
    public final hk3 f;
    public final jg3 g;
    public final int h;
    public final Handler i;
    public final ti3 j;
    public final ue3 k = new ue3();
    public final int l;
    public yi3 m;
    public se3 n;
    public boolean o;

    public vi3(Uri uri, hk3 hk3Var, jg3 jg3Var, int i, Handler handler, ti3 ti3Var, int i2) {
        this.e = uri;
        this.f = hk3Var;
        this.g = jg3Var;
        this.h = i;
        this.i = handler;
        this.j = ti3Var;
        this.l = i2;
    }

    @Override // defpackage.zi3
    public final void a(de3 de3Var, boolean z, yi3 yi3Var) {
        this.m = yi3Var;
        lj3 lj3Var = new lj3(-9223372036854775807L, false);
        this.n = lj3Var;
        yi3Var.f(lj3Var, null);
    }

    @Override // defpackage.zi3
    public final xi3 b(int i, ik3 ik3Var) {
        c50.j(i == 0);
        return new mi3(this.e, this.f.a(), this.g.a(), this.h, this.i, this.j, this, ik3Var, this.l);
    }

    @Override // defpackage.zi3
    public final void c(xi3 xi3Var) {
        mi3 mi3Var = (mi3) xi3Var;
        si3 si3Var = mi3Var.n;
        qk3 qk3Var = mi3Var.m;
        ni3 ni3Var = new ni3(mi3Var, si3Var);
        rk3<? extends pi3> rk3Var = qk3Var.b;
        if (rk3Var != null) {
            rk3Var.b(true);
        }
        qk3Var.a.execute(ni3Var);
        qk3Var.a.shutdown();
        mi3Var.r.removeCallbacksAndMessages(null);
        mi3Var.K = true;
    }

    @Override // defpackage.zi3
    public final void d() throws IOException {
    }

    @Override // defpackage.zi3
    public final void e() {
        this.m = null;
    }

    @Override // defpackage.yi3
    public final void f(se3 se3Var, Object obj) {
        boolean z = se3Var.e(0, this.k, false).c != -9223372036854775807L;
        if (!this.o || z) {
            this.n = se3Var;
            this.o = z;
            this.m.f(se3Var, null);
        }
    }
}
