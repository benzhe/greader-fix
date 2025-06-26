package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.Objects;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class ze2 implements qd2<nd2<JSONObject>> {
    public final JSONObject a;

    public ze2(Context context) {
        this.a = ym0.b(context);
    }

    @Override // defpackage.qd2
    public final aw2<nd2<JSONObject>> a() {
        return vt2.j(new nd2(this) { // from class: cf2
            public final ze2 a;

            {
                this.a = this;
            }

            @Override // defpackage.nd2
            public final void b(Object obj) throws JSONException {
                ze2 ze2Var = this.a;
                JSONObject jSONObject = (JSONObject) obj;
                Objects.requireNonNull(ze2Var);
                try {
                    jSONObject.put("gms_sdk_env", ze2Var.a);
                } catch (JSONException unused) {
                    zzd.zzed("Failed putting version constants.");
                }
            }
        });
    }
}
