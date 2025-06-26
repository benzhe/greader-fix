package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bi;
import defpackage.xx;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class GoogleSignInAccount extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new xx();
    public final int e;
    public String f;
    public String g;
    public String h;
    public String i;
    public Uri j;
    public String k;
    public long l;
    public String m;
    public List<Scope> n;
    public String o;
    public String p;
    public Set<Scope> q = new HashSet();

    public GoogleSignInAccount(int i, String str, String str2, String str3, String str4, Uri uri, String str5, long j, String str6, List<Scope> list, String str7, String str8) {
        this.e = i;
        this.f = str;
        this.g = str2;
        this.h = str3;
        this.i = str4;
        this.j = uri;
        this.k = str5;
        this.l = j;
        this.m = str6;
        this.n = list;
        this.o = str7;
        this.p = str8;
    }

    public static GoogleSignInAccount C(String str) throws JSONException, NumberFormatException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        String strOptString = jSONObject.optString("photoUrl", null);
        Uri uri = !TextUtils.isEmpty(strOptString) ? Uri.parse(strOptString) : null;
        long j = Long.parseLong(jSONObject.getString("expirationTime"));
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("grantedScopes");
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            hashSet.add(new Scope(jSONArray.getString(i)));
        }
        String strOptString2 = jSONObject.optString("id");
        String strOptString3 = jSONObject.optString("tokenId", null);
        String strOptString4 = jSONObject.optString("email", null);
        String strOptString5 = jSONObject.optString("displayName", null);
        String strOptString6 = jSONObject.optString("givenName", null);
        String strOptString7 = jSONObject.optString("familyName", null);
        Long lValueOf = Long.valueOf(j);
        String string = jSONObject.getString("obfuscatedIdentifier");
        if (lValueOf == null) {
            lValueOf = Long.valueOf(System.currentTimeMillis() / 1000);
        }
        long jLongValue = lValueOf.longValue();
        bi.g(string);
        GoogleSignInAccount googleSignInAccount = new GoogleSignInAccount(3, strOptString2, strOptString3, strOptString4, strOptString5, uri, null, jLongValue, string, new ArrayList(hashSet), strOptString6, strOptString7);
        googleSignInAccount.k = jSONObject.optString("serverAuthCode", null);
        return googleSignInAccount;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GoogleSignInAccount)) {
            return false;
        }
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) obj;
        return googleSignInAccount.m.equals(this.m) && googleSignInAccount.n().equals(n());
    }

    public int hashCode() {
        return n().hashCode() + ((this.m.hashCode() + 527) * 31);
    }

    public Set<Scope> n() {
        HashSet hashSet = new HashSet(this.n);
        hashSet.addAll(this.q);
        return hashSet;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iM0 = bi.m0(parcel, 20293);
        int i2 = this.e;
        bi.r0(parcel, 1, 4);
        parcel.writeInt(i2);
        bi.i0(parcel, 2, this.f, false);
        bi.i0(parcel, 3, this.g, false);
        bi.i0(parcel, 4, this.h, false);
        bi.i0(parcel, 5, this.i, false);
        bi.h0(parcel, 6, this.j, i, false);
        bi.i0(parcel, 7, this.k, false);
        long j = this.l;
        bi.r0(parcel, 8, 8);
        parcel.writeLong(j);
        bi.i0(parcel, 9, this.m, false);
        List<Scope> list = this.n;
        if (list != null) {
            int iM02 = bi.m0(parcel, 10);
            int size = list.size();
            parcel.writeInt(size);
            for (int i3 = 0; i3 < size; i3++) {
                Scope scope = list.get(i3);
                if (scope == null) {
                    parcel.writeInt(0);
                } else {
                    bi.q0(parcel, scope, 0);
                }
            }
            bi.t0(parcel, iM02);
        }
        bi.i0(parcel, 11, this.o, false);
        bi.i0(parcel, 12, this.p, false);
        bi.t0(parcel, iM0);
    }
}
