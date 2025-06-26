package com.google.android.gms.ads;

import defpackage.os3;
import defpackage.y40;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class LoadAdError extends AdError {
    public final ResponseInfo e;

    public LoadAdError(int i, String str, String str2, AdError adError, ResponseInfo responseInfo) {
        super(i, str, str2, adError);
        this.e = responseInfo;
    }

    public final ResponseInfo getResponseInfo() {
        if (((Boolean) os3.j.f.a(y40.U4)).booleanValue()) {
            return this.e;
        }
        return null;
    }

    @Override // com.google.android.gms.ads.AdError
    public final String toString() {
        try {
            return zzds().toString(2);
        } catch (JSONException unused) {
            return "Error forming toString output.";
        }
    }

    @Override // com.google.android.gms.ads.AdError
    public final JSONObject zzds() throws JSONException {
        JSONObject jSONObjectZzds = super.zzds();
        ResponseInfo responseInfo = getResponseInfo();
        if (responseInfo == null) {
            jSONObjectZzds.put("Response Info", "null");
        } else {
            jSONObjectZzds.put("Response Info", responseInfo.zzds());
        }
        return jSONObjectZzds;
    }
}
