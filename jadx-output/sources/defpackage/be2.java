package defpackage;

import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.util.zzd;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class be2 implements nd2<JSONObject> {
    public final AdvertisingIdClient.Info a;
    public final String b;

    public be2(AdvertisingIdClient.Info info, String str) {
        this.a = info;
        this.b = str;
    }

    @Override // defpackage.nd2
    public final /* synthetic */ void b(JSONObject jSONObject) throws JSONException {
        try {
            JSONObject jSONObjectZzb = zzbh.zzb(jSONObject, "pii");
            AdvertisingIdClient.Info info = this.a;
            if (info == null || TextUtils.isEmpty(info.getId())) {
                jSONObjectZzb.put("pdid", this.b);
                jSONObjectZzb.put("pdidtype", "ssaid");
            } else {
                jSONObjectZzb.put("rdid", this.a.getId());
                jSONObjectZzb.put("is_lat", this.a.isLimitAdTrackingEnabled());
                jSONObjectZzb.put("idtype", "adid");
            }
        } catch (JSONException e) {
            zzd.zza("Failed putting Ad ID.", e);
        }
    }
}
