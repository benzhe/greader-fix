package defpackage;

import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzbar;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class w21 implements cb3<bm3> {
    public final mb3<sk2> a;
    public final mb3<zzbar> b;
    public final mb3<JSONObject> c;
    public final mb3<String> d;

    public w21(mb3<sk2> mb3Var, mb3<zzbar> mb3Var2, mb3<JSONObject> mb3Var3, mb3<String> mb3Var4) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
    }

    @Override // defpackage.mb3
    public final Object get() {
        this.a.get();
        zzbar zzbarVar = this.b.get();
        JSONObject jSONObject = this.c.get();
        String str = this.d.get();
        boolean zEquals = "native".equals(str);
        zzr.zzkv();
        return new bm3(zzj.zzzr(), zzbarVar, str, jSONObject, zEquals);
    }
}
