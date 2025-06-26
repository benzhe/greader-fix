package defpackage;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.util.zzd;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class pe2 implements nd2<JSONObject> {
    public String a;

    public pe2(String str) {
        this.a = str;
    }

    @Override // defpackage.nd2
    public final /* synthetic */ void b(JSONObject jSONObject) throws JSONException {
        try {
            JSONObject jSONObjectZzb = zzbh.zzb(jSONObject, "pii");
            if (TextUtils.isEmpty(this.a)) {
                return;
            }
            jSONObjectZzb.put("attok", this.a);
        } catch (JSONException e) {
            zzd.zza("Failed putting attestation token.", e);
        }
    }
}
