package defpackage;

import java.util.Iterator;

/* loaded from: classes.dex */
public final class xm3 implements Runnable {
    public final /* synthetic */ ym3 e;

    public xm3(ym3 ym3Var) {
        this.e = ym3Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.e.g) {
            ym3 ym3Var = this.e;
            if (ym3Var.h && ym3Var.i) {
                ym3Var.h = false;
                is0.zzdz("App went background");
                Iterator<an3> it = this.e.j.iterator();
                while (it.hasNext()) {
                    try {
                        it.next().a(false);
                    } catch (Exception e) {
                        is0.zzc("", e);
                    }
                }
            } else {
                is0.zzdz("App is still foreground");
            }
        }
    }
}
