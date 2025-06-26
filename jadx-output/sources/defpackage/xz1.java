package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzo;
import com.google.android.gms.ads.internal.overlay.zzx;
import com.google.android.gms.ads.internal.zzk;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzwc;

/* loaded from: classes.dex */
public final class xz1 implements wh1 {
    public final zzbar a;
    public final aw2<x31> b;
    public final sk2 c;
    public final xw0 d;
    public final ll2 e;
    public final ob0 f;
    public final boolean g;

    public xz1(zzbar zzbarVar, aw2<x31> aw2Var, sk2 sk2Var, xw0 xw0Var, ll2 ll2Var, boolean z, ob0 ob0Var) {
        this.a = zzbarVar;
        this.b = aw2Var;
        this.c = sk2Var;
        this.d = xw0Var;
        this.e = ll2Var;
        this.g = z;
        this.f = ob0Var;
    }

    @Override // defpackage.wh1
    public final void a(boolean z, Context context) {
        int i;
        x31 x31Var = (x31) vt2.o(this.b);
        this.d.W(true);
        zzk zzkVar = new zzk(this.g ? this.f.a(true) : true, true, this.g ? this.f.b() : false, this.g ? this.f.c() : 0.0f, -1, z, this.c.J, false);
        zzr.zzku();
        nh1 nh1VarJ = x31Var.j();
        xw0 xw0Var = this.d;
        int i2 = this.c.L;
        if (i2 == -1) {
            zzwc zzwcVar = this.e.j;
            if (zzwcVar != null) {
                int i3 = zzwcVar.e;
                if (i3 == 1) {
                    i = 7;
                } else if (i3 == 2) {
                    i = 6;
                }
            }
            is0.zzdz("Error setting app open orientation; no targeting orientation available.");
            i2 = this.c.L;
            i = i2;
        } else {
            i = i2;
        }
        zzbar zzbarVar = this.a;
        sk2 sk2Var = this.c;
        String str = sk2Var.A;
        zk2 zk2Var = sk2Var.r;
        zzo.zza(context, new AdOverlayInfoParcel((er3) null, nh1VarJ, (zzx) null, xw0Var, i, zzbarVar, str, zzkVar, zk2Var.b, zk2Var.a, this.e.f), true);
    }
}
