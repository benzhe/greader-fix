package defpackage;

import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzbcb;

/* loaded from: classes.dex */
public final class ot0 implements Runnable {
    public final /* synthetic */ int e;
    public final /* synthetic */ int f;
    public final /* synthetic */ zzbbq g;

    public ot0(zzbbq zzbbqVar, int i, int i2) {
        this.g = zzbbqVar;
        this.e = i;
        this.f = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        rt0 rt0Var = this.g.t;
        if (rt0Var != null) {
            ((zzbcb) rt0Var).k(this.e, this.f);
        }
    }
}
