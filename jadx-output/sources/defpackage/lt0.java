package defpackage;

import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzbcb;

/* loaded from: classes.dex */
public final class lt0 implements Runnable {
    public final /* synthetic */ zzbbq e;

    public lt0(zzbbq zzbbqVar) {
        this.e = zzbbqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        rt0 rt0Var = this.e.t;
        if (rt0Var != null) {
            zzbcb zzbcbVar = (zzbcb) rt0Var;
            zzbcbVar.h.b();
            zzj.zzegq.post(new wt0(zzbcbVar));
        }
    }
}
