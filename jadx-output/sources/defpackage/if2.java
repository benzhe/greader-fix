package defpackage;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class if2 implements nd2<JSONObject> {
    public List<String> a;

    public if2(List<String> list) {
        this.a = list;
    }

    @Override // defpackage.nd2
    public final /* synthetic */ void b(JSONObject jSONObject) throws JSONException {
        try {
            jSONObject.put("eid", TextUtils.join(",", this.a));
        } catch (JSONException unused) {
            zzd.zzed("Failed putting experiment ids.");
        }
    }
}
