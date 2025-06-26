package com.android.billingclient.api;

import android.text.TextUtils;
import defpackage.in;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class Purchase {
    public final String a;
    public final String b;
    public final JSONObject c;

    public static class a {
        public final List<Purchase> a;
        public final in b;

        public a(in inVar, List<Purchase> list) {
            this.a = list;
            this.b = inVar;
        }
    }

    public Purchase(String str, String str2) throws JSONException {
        this.a = str;
        this.b = str2;
        this.c = new JSONObject(str);
    }

    public String a() {
        return this.c.optString("productId");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Purchase)) {
            return false;
        }
        Purchase purchase = (Purchase) obj;
        return TextUtils.equals(this.a, purchase.a) && TextUtils.equals(this.b, purchase.b);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        String strValueOf = String.valueOf(this.a);
        return strValueOf.length() != 0 ? "Purchase. Json: ".concat(strValueOf) : new String("Purchase. Json: ");
    }
}
