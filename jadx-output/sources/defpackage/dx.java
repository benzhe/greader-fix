package defpackage;

import com.google.android.gms.ads.internal.zzr;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final /* synthetic */ class dx implements cv2 {
    public static final cv2 a = new dx();

    @Override // defpackage.cv2
    public final aw2 a(Object obj) throws JSONException {
        JSONObject jSONObject = (JSONObject) obj;
        if (jSONObject.optBoolean("isSuccessful", false)) {
            zzr.zzkz().f().zzeg(jSONObject.getString("appSettingsJson"));
        }
        return vt2.j(null);
    }
}
