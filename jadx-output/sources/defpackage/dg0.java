package defpackage;

import com.google.android.gms.ads.internal.zzr;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class dg0 {
    public final List<String> a;
    public final List<String> b;
    public final List<String> c;
    public final List<String> d;
    public final List<String> e;
    public final List<String> f;
    public final String g;
    public final List<String> h;
    public final List<String> i;
    public final List<String> j;
    public final List<String> k;
    public final String l;

    public dg0(JSONObject jSONObject) throws JSONException {
        List<String> listA;
        jSONObject.optString("id");
        JSONArray jSONArray = jSONObject.getJSONArray("adapters");
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(jSONArray.getString(i));
        }
        this.a = Collections.unmodifiableList(arrayList);
        jSONObject.optString("allocation_id", null);
        zzr.zzln();
        this.b = fg0.a(jSONObject, "clickurl");
        zzr.zzln();
        this.c = fg0.a(jSONObject, "imp_urls");
        zzr.zzln();
        this.d = fg0.a(jSONObject, "downloaded_imp_urls");
        zzr.zzln();
        this.f = fg0.a(jSONObject, "fill_urls");
        zzr.zzln();
        this.h = fg0.a(jSONObject, "video_start_urls");
        zzr.zzln();
        this.j = fg0.a(jSONObject, "video_complete_urls");
        zzr.zzln();
        this.i = fg0.a(jSONObject, "video_reward_urls");
        jSONObject.optString("transaction_id");
        jSONObject.optString("valid_from_timestamp");
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("ad");
        if (jSONObjectOptJSONObject != null) {
            zzr.zzln();
            listA = fg0.a(jSONObjectOptJSONObject, "manual_impression_urls");
        } else {
            listA = null;
        }
        this.e = listA;
        if (jSONObjectOptJSONObject != null) {
            jSONObjectOptJSONObject.toString();
        }
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("data");
        this.g = jSONObjectOptJSONObject2 != null ? jSONObjectOptJSONObject2.toString() : null;
        if (jSONObjectOptJSONObject2 != null) {
            jSONObjectOptJSONObject2.optString("class_name");
        }
        jSONObject.optString("html_template", null);
        jSONObject.optString("ad_base_url", null);
        JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("assets");
        if (jSONObjectOptJSONObject3 != null) {
            jSONObjectOptJSONObject3.toString();
        }
        zzr.zzln();
        this.k = fg0.a(jSONObject, "template_ids");
        JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject("ad_loader_options");
        if (jSONObjectOptJSONObject4 != null) {
            jSONObjectOptJSONObject4.toString();
        }
        this.l = jSONObject.optString("response_type", null);
        jSONObject.optLong("ad_network_timeout_millis", -1L);
    }
}
