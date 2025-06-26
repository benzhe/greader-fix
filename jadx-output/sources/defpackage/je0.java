package defpackage;

import com.google.android.gms.ads.internal.util.zzd;

/* loaded from: classes.dex */
public final class je0 implements Runnable {
    public final /* synthetic */ se0 e;
    public final /* synthetic */ pd0 f;
    public final /* synthetic */ yd0 g;

    public je0(yd0 yd0Var, se0 se0Var, pd0 pd0Var) {
        this.g = yd0Var;
        this.e = se0Var;
        this.f = pd0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.g.a) {
            if (this.e.a() != -1 && this.e.a() != 1) {
                this.e.b();
                zv2 zv2Var = ms0.e;
                final pd0 pd0Var = this.f;
                pd0Var.getClass();
                zv2Var.execute(new Runnable(pd0Var) { // from class: ie0
                    public final pd0 e;

                    {
                        this.e = pd0Var;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.e.destroy();
                    }
                });
                zzd.zzed("Could not receive loaded message in a timely manner. Rejecting.");
            }
        }
    }
}
