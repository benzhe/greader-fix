package defpackage;

import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class jf2 implements nd2<JSONObject> {
    public Bundle a;

    public jf2(Bundle bundle) {
        this.a = bundle;
    }

    @Override // defpackage.nd2
    public final /* synthetic */ void b(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = jSONObject;
        if (this.a != null) {
            try {
                zzbh.zzb(zzbh.zzb(jSONObject2, "device"), "play_store").put("parental_controls", zzr.zzkv().zzc(this.a));
            } catch (JSONException unused) {
                zzd.zzed("Failed putting parental controls bundle.");
            }
        }
    }
}
