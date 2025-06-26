package defpackage;

import android.os.Bundle;
import java.util.Objects;
import org.apache.commons.text.lookup.InetAddressKeys;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class kh5 implements ih5, nh5 {
    public ti5 a;

    public static String b(String str, Bundle bundle) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        for (String str2 : bundle.keySet()) {
            jSONObject2.put(str2, bundle.get(str2));
        }
        jSONObject.put(InetAddressKeys.KEY_NAME, str);
        jSONObject.put("parameters", jSONObject2);
        return jSONObject.toString();
    }

    @Override // defpackage.nh5
    public void a(ti5 ti5Var) {
        this.a = ti5Var;
        ah5.a.b("Registered Firebase Analytics event receiver for breadcrumbs");
    }

    @Override // defpackage.ih5
    public void onEvent(String str, Bundle bundle) {
        ti5 ti5Var = this.a;
        if (ti5Var != null) {
            try {
                String str2 = "$A$:" + b(str, bundle);
                vi5 vi5Var = ti5Var.a;
                Objects.requireNonNull(vi5Var);
                long jCurrentTimeMillis = System.currentTimeMillis() - vi5Var.d;
                ii5 ii5Var = vi5Var.g;
                ii5Var.e.b(new bi5(ii5Var, jCurrentTimeMillis, str2));
            } catch (JSONException unused) {
                ah5.a.f("Unable to serialize Firebase Analytics event to breadcrumb.");
            }
        }
    }
}
