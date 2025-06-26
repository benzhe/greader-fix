package defpackage;

import android.os.Bundle;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class ka2 implements nd2<Bundle> {
    public final JSONObject a;
    public final JSONObject b;

    public ka2(JSONObject jSONObject, JSONObject jSONObject2) {
        this.a = jSONObject;
        this.b = jSONObject2;
    }

    @Override // defpackage.nd2
    public final /* synthetic */ void b(Bundle bundle) {
        Bundle bundle2 = bundle;
        JSONObject jSONObject = this.a;
        if (jSONObject != null) {
            bundle2.putString("fwd_cld", jSONObject.toString());
        }
        JSONObject jSONObject2 = this.b;
        if (jSONObject2 != null) {
            bundle2.putString("fwd_common_cld", jSONObject2.toString());
        }
    }
}
