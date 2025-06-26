package defpackage;

import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzbcb;

/* loaded from: classes.dex */
public final class jt0 implements Runnable {
    public final /* synthetic */ zzbbq e;

    public jt0(zzbbq zzbbqVar) {
        this.e = zzbbqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        rt0 rt0Var = this.e.t;
        if (rt0Var != null) {
            zzbcb zzbcbVar = (zzbcb) rt0Var;
            zzbcbVar.h("ended", new String[0]);
            zzbcbVar.f();
        }
    }
}
