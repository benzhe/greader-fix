package defpackage;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class r40 extends o40<String> {
    public r40(String str, String str2) {
        super(1, str, str2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.o40
    public final String d(SharedPreferences sharedPreferences) {
        return sharedPreferences.getString(this.b, (String) this.c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.o40
    public final String e(Bundle bundle) {
        String strValueOf = String.valueOf(this.b);
        if (!bundle.containsKey(strValueOf.length() != 0 ? "com.google.android.gms.ads.flag.".concat(strValueOf) : new String("com.google.android.gms.ads.flag."))) {
            return (String) this.c;
        }
        String strValueOf2 = String.valueOf(this.b);
        return bundle.getString(strValueOf2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(strValueOf2) : new String("com.google.android.gms.ads.flag."));
    }

    @Override // defpackage.o40
    public final void f(SharedPreferences.Editor editor, String str) {
        editor.putString(this.b, str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.o40
    public final String i(JSONObject jSONObject) {
        return jSONObject.optString(this.b, (String) this.c);
    }
}
