package defpackage;

import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzbcb;

/* loaded from: classes.dex */
public final class nt0 implements Runnable {
    public final /* synthetic */ zzbbq e;

    public nt0(zzbbq zzbbqVar) {
        this.e = zzbbqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        rt0 rt0Var = this.e.t;
        if (rt0Var != null) {
            ((zzbcb) rt0Var).a();
            ((zzbcb) this.e.t).c();
        }
    }
}
