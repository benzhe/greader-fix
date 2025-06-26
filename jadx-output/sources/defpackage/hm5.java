package defpackage;

import java.util.Objects;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class hm5 implements mm5 {
    public static long b(nj5 nj5Var, long j, JSONObject jSONObject) {
        if (jSONObject.has("expires_at")) {
            return jSONObject.optLong("expires_at");
        }
        Objects.requireNonNull(nj5Var);
        return (j * 1000) + System.currentTimeMillis();
    }

    @Override // defpackage.mm5
    public tm5 a(nj5 nj5Var, JSONObject jSONObject) throws JSONException {
        int iOptInt = jSONObject.optInt("settings_version", 0);
        int iOptInt2 = jSONObject.optInt("cache_duration", 3600);
        JSONObject jSONObject2 = jSONObject.getJSONObject("app");
        return new tm5(b(nj5Var, iOptInt2, jSONObject), new pm5(jSONObject2.getString("status"), jSONObject2.getString("url"), jSONObject2.getString("reports_url"), jSONObject2.getString("ndk_reports_url"), jSONObject2.optBoolean("update_required", false)), new rm5(jSONObject.getJSONObject("session").optInt("max_custom_exception_events", 8), 4), new qm5(jSONObject.getJSONObject("features").optBoolean("collect_reports", true)), iOptInt, iOptInt2);
    }
}
