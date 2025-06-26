package defpackage;

import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzbcb;

/* loaded from: classes.dex */
public final class pt0 implements Runnable {
    public final /* synthetic */ zzbbq e;

    public pt0(zzbbq zzbbqVar) {
        this.e = zzbbqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        rt0 rt0Var = this.e.t;
        if (rt0Var != null) {
            ((zzbcb) rt0Var).a();
        }
    }
}
