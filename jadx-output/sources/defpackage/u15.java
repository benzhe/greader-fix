package defpackage;

import android.os.Bundle;
import org.apache.commons.lang3.time.DateUtils;

/* loaded from: classes.dex */
public final class u15 {
    public long a;
    public long b;
    public final is4 c;
    public final /* synthetic */ x15 d;

    public u15(x15 x15Var) {
        this.d = x15Var;
        this.c = new t15(this, x15Var.a);
        long jB = x15Var.a.n.b();
        this.a = jB;
        this.b = jB;
    }

    public final boolean a(boolean z, boolean z2, long j) {
        this.d.d();
        this.d.f();
        od4.b();
        if (!this.d.a.g.s(null, ew4.p0) || this.d.a.g()) {
            this.d.a.q().t.b(this.d.a.n.a());
        }
        long jB = j - this.a;
        if (!z && jB < 1000) {
            this.d.a.a().n.b("Screen exposed for less than 1000 ms. Event not sent. time", Long.valueOf(jB));
            return false;
        }
        if (!z2) {
            rd4.f.a().a();
            if (this.d.a.g.s(null, ew4.U)) {
                jB = j - this.b;
                this.b = j;
            } else {
                jB = b();
            }
        }
        this.d.a.a().n.b("Recording user engagement, ms", Long.valueOf(jB));
        Bundle bundle = new Bundle();
        bundle.putLong("_et", jB);
        h05.r(this.d.a.y().p(!this.d.a.g.x()), bundle, true);
        cs4 cs4Var = this.d.a.g;
        dw4<Boolean> dw4Var = ew4.T;
        if (!cs4Var.s(null, dw4Var) && z2) {
            bundle.putLong("_fr", 1L);
        }
        if (!this.d.a.g.s(null, dw4Var) || !z2) {
            this.d.a.s().A("auto", "_e", bundle);
        }
        this.a = j;
        this.c.c();
        this.c.b(DateUtils.MILLIS_PER_HOUR);
        return true;
    }

    public final long b() {
        long jB = this.d.a.n.b();
        long j = this.b;
        this.b = jB;
        return jB - j;
    }
}
