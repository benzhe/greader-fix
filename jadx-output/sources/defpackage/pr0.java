package defpackage;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzr;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class pr0 {
    public String d;
    public String e;
    public long f;
    public JSONObject g;
    public boolean h;
    public final List<String> a = new ArrayList();
    public final List<String> b = new ArrayList();
    public final Map<String, cg0> c = new HashMap();
    public final List<String> i = new ArrayList();

    public pr0(String str, long j) throws JSONException {
        JSONObject jSONObjectOptJSONObject;
        JSONArray jSONArrayOptJSONArray;
        JSONObject jSONObjectOptJSONObject2;
        this.h = false;
        this.e = str;
        this.f = j;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.g = jSONObject;
            if (jSONObject.optInt("status", -1) != 1) {
                this.h = false;
                is0.zzez("App settings could not be fetched successfully.");
                return;
            }
            this.h = true;
            this.d = this.g.optString("app_id");
            JSONArray jSONArrayOptJSONArray2 = this.g.optJSONArray("ad_unit_id_settings");
            if (jSONArrayOptJSONArray2 != null) {
                for (int i = 0; i < jSONArrayOptJSONArray2.length(); i++) {
                    JSONObject jSONObject2 = jSONArrayOptJSONArray2.getJSONObject(i);
                    String strOptString = jSONObject2.optString("format");
                    String strOptString2 = jSONObject2.optString("ad_unit_id");
                    if (!TextUtils.isEmpty(strOptString) && !TextUtils.isEmpty(strOptString2)) {
                        if ("interstitial".equalsIgnoreCase(strOptString)) {
                            this.b.add(strOptString2);
                        } else if (("rewarded".equalsIgnoreCase(strOptString) || "rewarded_interstitial".equals(strOptString)) && (jSONObjectOptJSONObject2 = jSONObject2.optJSONObject("mediation_config")) != null) {
                            this.c.put(strOptString2, new cg0(jSONObjectOptJSONObject2));
                        }
                    }
                }
            }
            JSONArray jSONArrayOptJSONArray3 = this.g.optJSONArray("persistable_banner_ad_unit_ids");
            if (jSONArrayOptJSONArray3 != null) {
                for (int i2 = 0; i2 < jSONArrayOptJSONArray3.length(); i2++) {
                    this.a.add(jSONArrayOptJSONArray3.optString(i2));
                }
            }
            if (!((Boolean) os3.j.f.a(y40.q4)).booleanValue() || (jSONObjectOptJSONObject = this.g.optJSONObject("common_settings")) == null || (jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("loeid")) == null) {
                return;
            }
            for (int i3 = 0; i3 < jSONArrayOptJSONArray.length(); i3++) {
                this.i.add(jSONArrayOptJSONArray.get(i3).toString());
            }
        } catch (JSONException e) {
            is0.zzd("Exception occurred while processing app setting json", e);
            or0 or0VarZzkz = zzr.zzkz();
            xl0.d(or0VarZzkz.e, or0VarZzkz.f).a(e, "AppSettings.parseAppSettingsJson");
        }
    }
}
