package defpackage;

import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzavy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class cg0 {
    public final List<dg0> a;
    public final List<String> b;
    public final List<String> c;
    public final List<String> d;
    public final List<String> e;
    public final List<String> f;

    public cg0(JSONObject jSONObject) throws JSONException {
        boolean z;
        if (is0.isLoggable(2)) {
            String strValueOf = String.valueOf(jSONObject.toString(2));
            zzd.zzed(strValueOf.length() != 0 ? "Mediation Response JSON: ".concat(strValueOf) : new String("Mediation Response JSON: "));
        }
        JSONArray jSONArray = jSONObject.getJSONArray("ad_networks");
        ArrayList arrayList = new ArrayList(jSONArray.length());
        int i = -1;
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            try {
                dg0 dg0Var = new dg0(jSONArray.getJSONObject(i2));
                "banner".equalsIgnoreCase(dg0Var.l);
                arrayList.add(dg0Var);
                if (i < 0) {
                    Iterator<String> it = dg0Var.a.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (it.next().equals("com.google.ads.mediation.admob.AdMobAdapter")) {
                                z = true;
                                break;
                            }
                        } else {
                            z = false;
                            break;
                        }
                    }
                    if (z) {
                        i = i2;
                    }
                }
            } catch (JSONException unused) {
            }
        }
        jSONArray.length();
        this.a = Collections.unmodifiableList(arrayList);
        jSONObject.optString("qdata");
        jSONObject.optInt("fs_model_type", -1);
        jSONObject.optLong("timeout_ms", -1L);
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("settings");
        if (jSONObjectOptJSONObject != null) {
            jSONObjectOptJSONObject.optLong("ad_network_timeout_millis", -1L);
            zzr.zzln();
            this.b = fg0.a(jSONObjectOptJSONObject, "click_urls");
            zzr.zzln();
            this.c = fg0.a(jSONObjectOptJSONObject, "imp_urls");
            zzr.zzln();
            this.d = fg0.a(jSONObjectOptJSONObject, "downloaded_imp_urls");
            zzr.zzln();
            this.e = fg0.a(jSONObjectOptJSONObject, "nofill_urls");
            zzr.zzln();
            this.f = fg0.a(jSONObjectOptJSONObject, "remote_ping_urls");
            jSONObjectOptJSONObject.optBoolean("render_in_browser", false);
            jSONObjectOptJSONObject.optLong("refresh", -1L);
            zzavy.n(jSONObjectOptJSONObject.optJSONArray("rewards"));
            jSONObjectOptJSONObject.optBoolean("use_displayed_impression", false);
            jSONObjectOptJSONObject.optBoolean("allow_pub_rendered_attribution", false);
            jSONObjectOptJSONObject.optBoolean("allow_pub_owned_ad_view", false);
            jSONObjectOptJSONObject.optBoolean("allow_custom_click_gesture", false);
        }
    }
}
