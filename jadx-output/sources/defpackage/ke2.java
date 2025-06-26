package defpackage;

import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class ke2 implements nd2<JSONObject> {
    public final JSONObject a;

    public ke2(JSONObject jSONObject) {
        this.a = jSONObject;
    }

    @Override // defpackage.nd2
    public final /* synthetic */ void b(JSONObject jSONObject) throws JSONException {
        try {
            JSONObject jSONObjectZzb = zzbh.zzb(jSONObject, "content_info");
            JSONObject jSONObject2 = this.a;
            Iterator<String> itKeys = jSONObject2.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                jSONObjectZzb.put(next, jSONObject2.get(next));
            }
        } catch (JSONException unused) {
            zzd.zzed("Failed putting app indexing json.");
        }
    }
}
