package defpackage;

import com.google.android.gms.ads.internal.util.zzbh;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zj1 extends ak1 {
    public final JSONObject b;
    public final boolean c;
    public final boolean d;
    public final boolean e;
    public final boolean f;

    public zj1(sk2 sk2Var, JSONObject jSONObject) {
        super(sk2Var);
        this.b = zzbh.zza(jSONObject, "tracking_urls_and_actions", "active_view");
        boolean z = false;
        this.c = zzbh.zza(false, jSONObject, "allow_pub_owned_ad_view");
        this.d = zzbh.zza(false, jSONObject, "attribution", "allow_pub_rendering");
        this.e = zzbh.zza(false, jSONObject, "enable_omid");
        if (jSONObject != null && jSONObject.optJSONObject("overlay") != null) {
            z = true;
        }
        this.f = z;
    }

    @Override // defpackage.ak1
    public final boolean a() {
        return this.e;
    }

    @Override // defpackage.ak1
    public final JSONObject b() {
        JSONObject jSONObject = this.b;
        if (jSONObject != null) {
            return jSONObject;
        }
        try {
            return new JSONObject(this.a.y);
        } catch (JSONException unused) {
            return null;
        }
    }

    @Override // defpackage.ak1
    public final boolean c() {
        return this.f;
    }

    @Override // defpackage.ak1
    public final boolean d() {
        return this.c;
    }

    @Override // defpackage.ak1
    public final boolean e() {
        return this.d;
    }
}
