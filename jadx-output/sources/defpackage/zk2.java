package defpackage;

import android.util.JsonReader;
import android.util.JsonWriter;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.util.zzbm;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zk2 implements zzbm {
    public final String a;
    public final String b;
    public final JSONObject c;
    public final JSONObject d;

    public zk2(JsonReader jsonReader) throws IllegalStateException, JSONException, IOException, NumberFormatException {
        JSONObject jSONObjectZzc = zzbh.zzc(jsonReader);
        this.d = jSONObjectZzc;
        this.a = jSONObjectZzc.optString("ad_html", null);
        this.b = jSONObjectZzc.optString("ad_base_url", null);
        this.c = jSONObjectZzc.optJSONObject("ad_json");
    }

    @Override // com.google.android.gms.ads.internal.util.zzbm
    public final void zza(JsonWriter jsonWriter) throws JSONException, IOException {
        zzbh.zza(jsonWriter, this.d);
    }
}
