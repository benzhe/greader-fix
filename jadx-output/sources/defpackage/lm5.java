package defpackage;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class lm5 {
    public final nj5 a;

    public lm5(nj5 nj5Var) {
        this.a = nj5Var;
    }

    public tm5 a(JSONObject jSONObject) throws JSONException {
        return (jSONObject.getInt("settings_version") != 3 ? new hm5() : new nm5()).a(this.a, jSONObject);
    }
}
