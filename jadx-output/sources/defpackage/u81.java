package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzauj;
import com.google.android.gms.internal.ads.zzbar;
import org.json.JSONException;

/* loaded from: classes.dex */
public final class u81 implements sc1 {
    public final Context e;
    public final ll2 f;
    public final zzbar g;
    public final zzf h;
    public final mt1 i;

    public u81(Context context, ll2 ll2Var, zzbar zzbarVar, zzf zzfVar, mt1 mt1Var) {
        this.e = context;
        this.f = ll2Var;
        this.g = zzbarVar;
        this.h = zzfVar;
        this.i = mt1Var;
    }

    @Override // defpackage.sc1
    public final void M(hl2 hl2Var) {
    }

    @Override // defpackage.sc1
    public final void t(zzauj zzaujVar) throws JSONException {
        if (((Boolean) os3.j.f.a(y40.d2)).booleanValue()) {
            zzr.zzld().zza(this.e, this.g, this.f.f, this.h.zzzg());
        }
        this.i.c();
    }
}
