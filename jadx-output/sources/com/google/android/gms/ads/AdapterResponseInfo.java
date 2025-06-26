package com.google.android.gms.ads;

import android.os.Bundle;
import com.google.android.gms.internal.ads.zzvh;
import com.google.android.gms.internal.ads.zzvx;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class AdapterResponseInfo {
    public final zzvx a;
    public final AdError b;

    public AdapterResponseInfo(zzvx zzvxVar) {
        this.a = zzvxVar;
        zzvh zzvhVar = zzvxVar.g;
        this.b = zzvhVar == null ? null : zzvhVar.n();
    }

    public static AdapterResponseInfo zza(zzvx zzvxVar) {
        if (zzvxVar != null) {
            return new AdapterResponseInfo(zzvxVar);
        }
        return null;
    }

    public final AdError getAdError() {
        return this.b;
    }

    public final String getAdapterClassName() {
        return this.a.e;
    }

    public final Bundle getCredentials() {
        return this.a.h;
    }

    public final long getLatencyMillis() {
        return this.a.f;
    }

    public final String toString() {
        try {
            return zzds().toString(2);
        } catch (JSONException unused) {
            return "Error forming toString output.";
        }
    }

    public final JSONObject zzds() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("Adapter", this.a.e);
        jSONObject.put("Latency", this.a.f);
        JSONObject jSONObject2 = new JSONObject();
        for (String str : this.a.h.keySet()) {
            jSONObject2.put(str, this.a.h.get(str));
        }
        jSONObject.put("Credentials", jSONObject2);
        AdError adError = this.b;
        if (adError == null) {
            jSONObject.put("Ad Error", "null");
        } else {
            jSONObject.put("Ad Error", adError.zzds());
        }
        return jSONObject;
    }
}
