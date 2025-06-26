package defpackage;

import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.internal.ads.zzbcb;

/* loaded from: classes.dex */
public final class ku0 implements Runnable {
    public zzbcb e;
    public boolean f = false;

    public ku0(zzbcb zzbcbVar) {
        this.e = zzbcbVar;
    }

    public final void a() {
        this.f = true;
        this.e.e();
    }

    public final void b() {
        this.f = false;
        ms2 ms2Var = zzj.zzegq;
        ms2Var.removeCallbacks(this);
        ms2Var.postDelayed(this, 250L);
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f) {
            return;
        }
        this.e.e();
        ms2 ms2Var = zzj.zzegq;
        ms2Var.removeCallbacks(this);
        ms2Var.postDelayed(this, 250L);
    }
}
