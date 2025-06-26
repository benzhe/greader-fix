package defpackage;

import android.os.SystemClock;

/* loaded from: classes.dex */
public final class dl3 implements xk3 {
    public boolean a;
    public long b;
    public long c;
    public pe3 d = pe3.d;

    @Override // defpackage.xk3
    public final pe3 a() {
        return this.d;
    }

    public final void b(xk3 xk3Var) {
        e(xk3Var.c());
        this.d = xk3Var.a();
    }

    @Override // defpackage.xk3
    public final long c() {
        long j = this.b;
        if (!this.a) {
            return j;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.c;
        return this.d.a == 1.0f ? j + zd3.b(jElapsedRealtime) : j + (jElapsedRealtime * r4.c);
    }

    @Override // defpackage.xk3
    public final pe3 d(pe3 pe3Var) {
        if (this.a) {
            e(c());
        }
        this.d = pe3Var;
        return pe3Var;
    }

    public final void e(long j) {
        this.b = j;
        if (this.a) {
            this.c = SystemClock.elapsedRealtime();
        }
    }
}
