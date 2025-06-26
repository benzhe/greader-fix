package defpackage;

import com.google.android.gms.ads.internal.zzr;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class pq1 {
    public final Map<String, Map<String, JSONObject>> a = new ConcurrentHashMap();
    public JSONObject b;
    public final Executor c;
    public boolean d;
    public JSONObject e;

    public pq1(Executor executor) {
        this.c = executor;
    }

    public final synchronized void a() {
        Map<String, JSONObject> map;
        this.d = true;
        pr0 pr0VarZzzg = zzr.zzkz().f().zzzg();
        if (pr0VarZzzg == null) {
            return;
        }
        JSONObject jSONObject = pr0VarZzzg.g;
        if (jSONObject == null) {
            return;
        }
        this.b = ((Boolean) os3.j.f.a(y40.f2)).booleanValue() ? jSONObject.optJSONObject("common_settings") : null;
        this.e = jSONObject.optJSONObject("ad_unit_patterns");
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("ad_unit_id_settings");
        if (jSONArrayOptJSONArray == null) {
            return;
        }
        for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
            JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
            if (jSONObjectOptJSONObject != null) {
                String strOptString = jSONObjectOptJSONObject.optString("ad_unit_id");
                String strOptString2 = jSONObjectOptJSONObject.optString("format");
                JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("request_signals");
                if (strOptString != null && jSONObjectOptJSONObject2 != null && strOptString2 != null) {
                    if (this.a.containsKey(strOptString2)) {
                        map = this.a.get(strOptString2);
                    } else {
                        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
                        this.a.put(strOptString2, concurrentHashMap);
                        map = concurrentHashMap;
                    }
                    map.put(strOptString, jSONObjectOptJSONObject2);
                }
            }
        }
    }
}
