package defpackage;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final /* synthetic */ class tf2 implements nd2 {
    public static final nd2 a = new tf2();

    @Override // defpackage.nd2
    public final void b(Object obj) throws JSONException {
        try {
            ((JSONObject) obj).getJSONObject("sdk_env").put("container_version", 12451000);
        } catch (JSONException unused) {
        }
    }
}
