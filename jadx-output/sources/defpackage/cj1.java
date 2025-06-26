package defpackage;

import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzbar;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class cj1 implements cb3<bm3> {
    public final mb3<zzbar> a;

    public cj1(mb3<zzbar> mb3Var, mb3<String> mb3Var2) {
        this.a = mb3Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        zzbar zzbarVar = this.a.get();
        zzr.zzkv();
        return new bm3(zzj.zzzr(), zzbarVar, "native", new JSONObject(), true);
    }
}
