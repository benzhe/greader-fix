package defpackage;

import com.google.android.gms.ads.internal.util.zzd;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final /* synthetic */ class pw1 implements jo2 {
    public static final jo2 a = new pw1();

    @Override // defpackage.jo2
    public final Object apply(Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        zzd.zzed("Ad request signals:");
        zzd.zzed(jSONObject.toString(2));
        return jSONObject;
    }
}
