package defpackage;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class r15 implements Runnable {
    public final long e;
    public final long f;
    public final /* synthetic */ s15 g;

    public r15(s15 s15Var, long j, long j2) {
        this.g = s15Var;
        this.e = j;
        this.f = j2;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        this.g.b.a.m().q(new Runnable(this) { // from class: q15
            public final r15 e;

            {
                this.e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                r15 r15Var = this.e;
                s15 s15Var = r15Var.g;
                long j = r15Var.e;
                long j2 = r15Var.f;
                s15Var.b.d();
                s15Var.b.a.a().m.a("Application going to the background");
                boolean z = true;
                if (s15Var.b.a.g.s(null, ew4.u0)) {
                    s15Var.b.a.q().v.b(true);
                }
                Bundle bundle = new Bundle();
                if (!s15Var.b.a.g.x()) {
                    s15Var.b.e.c.c();
                    if (s15Var.b.a.g.s(null, ew4.l0)) {
                        u15 u15Var = s15Var.b.e;
                        long j3 = u15Var.b;
                        u15Var.b = j2;
                        bundle.putLong("_et", j2 - j3);
                        h05.r(s15Var.b.a.y().p(true), bundle, true);
                    } else {
                        z = false;
                    }
                    s15Var.b.e.a(false, z, j2);
                }
                s15Var.b.a.s().B("auto", "_ab", j, bundle);
            }
        });
    }
}
