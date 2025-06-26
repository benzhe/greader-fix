package defpackage;

import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class vf2 implements nd2<JSONObject> {
    public final Map<String, Object> a;

    public vf2(Map<String, Object> map) {
        this.a = map;
    }

    @Override // defpackage.nd2
    public final /* synthetic */ void b(JSONObject jSONObject) throws JSONException {
        try {
            jSONObject.put("video_decoders", zzr.zzkv().zzj(this.a));
        } catch (JSONException e) {
            String strValueOf = String.valueOf(e.getMessage());
            zzd.zzed(strValueOf.length() != 0 ? "Could not encode video decoder properties: ".concat(strValueOf) : new String("Could not encode video decoder properties: "));
        }
    }
}
