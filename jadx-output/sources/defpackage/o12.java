package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzo;
import com.google.android.gms.ads.internal.overlay.zzx;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzk;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzbar;

/* loaded from: classes.dex */
public final class o12 implements wh1 {
    public final Context a;
    public final zzbar b;
    public final aw2<sg1> c;
    public final sk2 d;
    public final xw0 e;
    public final ll2 f;
    public final ob0 g;
    public final boolean h;

    public o12(Context context, zzbar zzbarVar, aw2 aw2Var, sk2 sk2Var, xw0 xw0Var, ll2 ll2Var, boolean z, ob0 ob0Var, l12 l12Var) {
        this.a = context;
        this.b = zzbarVar;
        this.c = aw2Var;
        this.d = sk2Var;
        this.e = xw0Var;
        this.f = ll2Var;
        this.g = ob0Var;
        this.h = z;
    }

    @Override // defpackage.wh1
    public final void a(boolean z, Context context) {
        sg1 sg1Var = (sg1) vt2.o(this.c);
        this.e.W(true);
        boolean zA = this.h ? this.g.a(false) : false;
        zzr.zzkv();
        zzk zzkVar = new zzk(zA, zzj.zzba(this.a), this.h ? this.g.b() : false, this.h ? this.g.c() : 0.0f, -1, z, this.d.J, false);
        zzr.zzku();
        nh1 nh1VarI = sg1Var.i();
        xw0 xw0Var = this.e;
        sk2 sk2Var = this.d;
        int i = sk2Var.L;
        zzbar zzbarVar = this.b;
        String str = sk2Var.A;
        zk2 zk2Var = sk2Var.r;
        zzo.zza(context, new AdOverlayInfoParcel((er3) null, nh1VarI, (zzx) null, xw0Var, i, zzbarVar, str, zzkVar, zk2Var.b, zk2Var.a, this.f.f), true);
    }
}
