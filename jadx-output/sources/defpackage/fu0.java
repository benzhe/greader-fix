package defpackage;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class fu0 {
    public final boolean a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    public final int g;
    public final int h;
    public final boolean i;
    public final int j;
    public final boolean k;

    public fu0(String str) throws JSONException {
        JSONObject jSONObject = null;
        if (str != null) {
            try {
                jSONObject = new JSONObject(str);
            } catch (JSONException unused) {
            }
        }
        this.a = a(jSONObject, "aggressive_media_codec_release", y40.A);
        this.b = b(jSONObject, "byte_buffer_precache_limit", y40.g);
        this.c = b(jSONObject, "exo_cache_buffer_size", y40.p);
        this.d = b(jSONObject, "exo_connect_timeout_millis", y40.c);
        o40<String> o40Var = y40.b;
        if (jSONObject != null) {
            try {
                jSONObject.getString("exo_player_version");
            } catch (JSONException unused2) {
            }
        }
        this.e = b(jSONObject, "exo_read_timeout_millis", y40.d);
        this.f = b(jSONObject, "load_check_interval_bytes", y40.e);
        this.g = b(jSONObject, "player_precache_limit", y40.f);
        this.h = b(jSONObject, "socket_receive_buffer_size", y40.h);
        this.i = a(jSONObject, "use_cache_data_source", y40.n2);
        this.j = b(jSONObject, "min_retry_count", y40.j);
        this.k = a(jSONObject, "treat_load_exception_as_non_fatal", y40.m);
    }

    public static boolean a(JSONObject jSONObject, String str, o40<Boolean> o40Var) {
        boolean zBooleanValue = ((Boolean) os3.j.f.a(o40Var)).booleanValue();
        if (jSONObject == null) {
            return zBooleanValue;
        }
        try {
            return jSONObject.getBoolean(str);
        } catch (JSONException unused) {
            return zBooleanValue;
        }
    }

    public static int b(JSONObject jSONObject, String str, o40<Integer> o40Var) {
        if (jSONObject != null) {
            try {
                return jSONObject.getInt(str);
            } catch (JSONException unused) {
            }
        }
        return ((Integer) os3.j.f.a(o40Var)).intValue();
    }
}
