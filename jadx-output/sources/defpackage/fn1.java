package defpackage;

import com.google.android.gms.ads.internal.zzr;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class fn1 {
    public final ll2 a;
    public final Executor b;
    public final mp1 c;

    public fn1(ll2 ll2Var, Executor executor, mp1 mp1Var) {
        this.a = ll2Var;
        this.b = executor;
        this.c = mp1Var;
    }

    public final void a(xw0 xw0Var) {
        xw0Var.o("/video", va0.m);
        xw0Var.o("/videoMeta", va0.n);
        xw0Var.o("/precache", new ew0());
        xw0Var.o("/delayPageLoaded", va0.q);
        xw0Var.o("/instrument", va0.o);
        xw0Var.o("/log", va0.h);
        xw0Var.o("/videoClicked", va0.i);
        ww0 ww0Var = (ww0) xw0Var.I();
        synchronized (ww0Var.h) {
            ww0Var.q = true;
        }
        kb0<xw0> kb0Var = va0.a;
        xw0Var.o("/click", za0.a);
        if (((Boolean) os3.j.f.a(y40.T1)).booleanValue()) {
            xw0Var.o("/getNativeAdViewSignals", va0.t);
        }
        if (this.a.c != null) {
            ww0 ww0Var2 = (ww0) xw0Var.I();
            synchronized (ww0Var2.h) {
                ww0Var2.r = true;
            }
            xw0Var.o("/open", new rb0(null, null, null, null, null));
        } else {
            ww0 ww0Var3 = (ww0) xw0Var.I();
            synchronized (ww0Var3.h) {
                ww0Var3.r = false;
            }
        }
        if (zzr.zzlt().h(xw0Var.getContext())) {
            xw0Var.o("/logScionEvent", new pb0(xw0Var.getContext()));
        }
    }
}
