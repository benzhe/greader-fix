package defpackage;

import android.content.ComponentName;
import android.content.Context;

/* loaded from: classes.dex */
public final class e15 implements Runnable {
    public final /* synthetic */ g15 e;

    public e15(g15 g15Var) {
        this.e = g15Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        h15 h15Var = this.e.c;
        Context context = h15Var.a.a;
        c35 c35Var = this.e.c.a.f;
        h15.q(h15Var, new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementService"));
    }
}
