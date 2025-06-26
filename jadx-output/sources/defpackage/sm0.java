package defpackage;

import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class sm0 {
    public final List<String> a;
    public final String b;
    public final String c;
    public final boolean d;
    public final boolean e;
    public String f;
    public final int g;
    public final JSONObject h;
    public final String i;

    public sm0(JSONObject jSONObject) {
        this.f = jSONObject.optString("url");
        this.b = jSONObject.optString("base_uri");
        this.c = jSONObject.optString("post_parameters");
        this.d = a(jSONObject.optString("drt_include"));
        this.e = a(jSONObject.optString("cookies_include", "true"));
        jSONObject.optString("request_id");
        jSONObject.optString(NSRSS20.ENC_TYPE);
        String strOptString = jSONObject.optString("errors");
        this.a = strOptString == null ? null : Arrays.asList(strOptString.split(","));
        this.g = jSONObject.optInt("valid", 0) == 1 ? -2 : 1;
        jSONObject.optString("fetched_ad");
        jSONObject.optBoolean("render_test_ad_label");
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("preprocessor_flags");
        this.h = jSONObjectOptJSONObject == null ? new JSONObject() : jSONObjectOptJSONObject;
        jSONObject.optString("analytics_query_ad_event_id");
        jSONObject.optBoolean("is_analytics_logging_enabled");
        this.i = jSONObject.optString("pool_key");
    }

    public static boolean a(String str) {
        if (str != null) {
            return str.equals("1") || str.equals("true");
        }
        return false;
    }
}
