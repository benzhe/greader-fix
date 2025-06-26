package defpackage;

import com.google.android.gms.ads.internal.zzr;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zw1 implements ef0<ax1> {
    @Override // defpackage.ef0
    public final JSONObject c(ax1 ax1Var) throws JSONException {
        ax1 ax1Var2 = ax1Var;
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        jSONObject2.put("base_url", ax1Var2.c.b);
        jSONObject2.put("signals", ax1Var2.b);
        jSONObject3.put("body", ax1Var2.a.c);
        jSONObject3.put("headers", zzr.zzkv().zzj(ax1Var2.a.b));
        jSONObject3.put("response_code", ax1Var2.a.a);
        jSONObject3.put("latency", ax1Var2.a.d);
        jSONObject.put("request", jSONObject2);
        jSONObject.put("response", jSONObject3);
        jSONObject.put("flags", ax1Var2.c.h);
        return jSONObject;
    }
}
