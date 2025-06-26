package defpackage;

import com.google.android.gms.ads.internal.util.zzd;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class ve2 implements nd2<JSONObject> {
    public JSONObject a;

    public ve2(JSONObject jSONObject) {
        this.a = jSONObject;
    }

    @Override // defpackage.nd2
    public final /* synthetic */ void b(JSONObject jSONObject) throws JSONException {
        try {
            jSONObject.put("cache_state", this.a);
        } catch (JSONException unused) {
            zzd.zzed("Unable to get cache_state");
        }
    }
}
