package defpackage;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class nf2 implements qd2<jf2> {
    public fl0 a;
    public ScheduledExecutorService b;
    public Context c;

    public nf2(fl0 fl0Var, ScheduledExecutorService scheduledExecutorService, Context context) {
        this.a = fl0Var;
        this.b = scheduledExecutorService;
        this.c = context;
    }

    @Override // defpackage.qd2
    public final aw2<jf2> a() {
        return vt2.l(vt2.d(this.a.a(this.c), ((Long) os3.j.f.a(y40.i2)).longValue(), TimeUnit.MILLISECONDS, this.b), lf2.a, ms0.a);
    }
}
