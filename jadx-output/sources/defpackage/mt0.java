package defpackage;

import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzbcb;

/* loaded from: classes.dex */
public final class mt0 implements Runnable {
    public final /* synthetic */ String e;
    public final /* synthetic */ String f;
    public final /* synthetic */ zzbbq g;

    public mt0(zzbbq zzbbqVar, String str, String str2) {
        this.g = zzbbqVar;
        this.e = str;
        this.f = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        rt0 rt0Var = this.g.t;
        if (rt0Var != null) {
            ((zzbcb) rt0Var).j(this.e, this.f);
        }
    }
}
