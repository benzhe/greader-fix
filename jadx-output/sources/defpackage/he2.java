package defpackage;

import com.google.android.gms.ads.internal.util.zzd;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class he2 implements nd2<JSONObject> {
    public final String a;

    public he2(String str) {
        this.a = str;
    }

    @Override // defpackage.nd2
    public final /* synthetic */ void b(JSONObject jSONObject) throws JSONException {
        try {
            jSONObject.put("ms", this.a);
        } catch (JSONException e) {
            zzd.zza("Failed putting Ad ID.", e);
        }
    }
}
