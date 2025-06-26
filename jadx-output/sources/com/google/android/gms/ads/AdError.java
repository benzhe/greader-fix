package com.google.android.gms.ads;

import com.google.android.gms.internal.ads.zzvh;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class AdError {
    public static final String UNDEFINED_DOMAIN = "undefined";
    public final int a;
    public final String b;
    public final String c;
    public final AdError d;

    public AdError(int i, String str, String str2) {
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = null;
    }

    public AdError getCause() {
        return this.d;
    }

    public int getCode() {
        return this.a;
    }

    public String getDomain() {
        return this.c;
    }

    public String getMessage() {
        return this.b;
    }

    public String toString() {
        try {
            return zzds().toString(2);
        } catch (JSONException unused) {
            return "Error forming toString output.";
        }
    }

    public final zzvh zzdr() {
        AdError adError = this.d;
        return new zzvh(this.a, this.b, this.c, adError == null ? null : new zzvh(adError.a, adError.b, adError.c, null, null), null);
    }

    public JSONObject zzds() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("Code", this.a);
        jSONObject.put("Message", this.b);
        jSONObject.put("Domain", this.c);
        AdError adError = this.d;
        if (adError == null) {
            jSONObject.put("Cause", "null");
        } else {
            jSONObject.put("Cause", adError.zzds());
        }
        return jSONObject;
    }

    public AdError(int i, String str, String str2, AdError adError) {
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = adError;
    }
}
