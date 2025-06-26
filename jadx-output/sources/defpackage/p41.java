package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzbar;

/* loaded from: classes.dex */
public final /* synthetic */ class p41 implements ob1 {
    public final Context e;
    public final zzbar f;
    public final sk2 g;
    public final ll2 h;

    public p41(Context context, zzbar zzbarVar, sk2 sk2Var, ll2 ll2Var) {
        this.e = context;
        this.f = zzbarVar;
        this.g = sk2Var;
        this.h = ll2Var;
    }

    @Override // defpackage.ob1
    public final void onAdLoaded() {
        zzr.zzlf().zzb(this.e, this.f.e, this.g.B.toString(), this.h.f);
    }
}
