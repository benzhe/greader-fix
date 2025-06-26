package defpackage;

import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.util.zzd;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class ef2 implements nd2<JSONObject> {
    public String a;
    public String b;

    public ef2(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    @Override // defpackage.nd2
    public final /* synthetic */ void b(JSONObject jSONObject) throws JSONException {
        try {
            JSONObject jSONObjectZzb = zzbh.zzb(jSONObject, "pii");
            jSONObjectZzb.put("doritos", this.a);
            jSONObjectZzb.put("doritos_v2", this.b);
        } catch (JSONException unused) {
            zzd.zzed("Failed putting doritos string.");
        }
    }
}
