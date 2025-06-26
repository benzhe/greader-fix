package com.android.billingclient.api;

import android.text.TextUtils;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class SkuDetails {
    public final String a;
    public final JSONObject b;

    public SkuDetails(String str) throws JSONException {
        this.a = str;
        JSONObject jSONObject = new JSONObject(str);
        this.b = jSONObject;
        if (TextUtils.isEmpty(jSONObject.optString("productId"))) {
            throw new IllegalArgumentException("SKU cannot be empty.");
        }
        if (TextUtils.isEmpty(jSONObject.optString(NSRSS20.ENC_TYPE))) {
            throw new IllegalArgumentException("SkuType cannot be empty.");
        }
    }

    public String a() {
        return this.b.optString("price");
    }

    public String b() {
        return this.b.optString("productId");
    }

    public String c() {
        return this.b.optString(NSRSS20.ENC_TYPE);
    }

    public final String d() {
        return this.b.optString("packageName");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SkuDetails) {
            return TextUtils.equals(this.a, ((SkuDetails) obj).a);
        }
        return false;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        String strValueOf = String.valueOf(this.a);
        return strValueOf.length() != 0 ? "SkuDetails: ".concat(strValueOf) : new String("SkuDetails: ");
    }
}
