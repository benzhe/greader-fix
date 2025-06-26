package defpackage;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class n40 extends o40<Boolean> {
    public n40(int i, String str, Boolean bool) {
        super(i, str, bool, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.o40
    public final Boolean d(SharedPreferences sharedPreferences) {
        return Boolean.valueOf(sharedPreferences.getBoolean(this.b, ((Boolean) this.c).booleanValue()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.o40
    public final Boolean e(Bundle bundle) {
        String strValueOf = String.valueOf(this.b);
        if (!bundle.containsKey(strValueOf.length() != 0 ? "com.google.android.gms.ads.flag.".concat(strValueOf) : new String("com.google.android.gms.ads.flag."))) {
            return (Boolean) this.c;
        }
        String strValueOf2 = String.valueOf(this.b);
        return Boolean.valueOf(bundle.getBoolean(strValueOf2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(strValueOf2) : new String("com.google.android.gms.ads.flag.")));
    }

    @Override // defpackage.o40
    public final void f(SharedPreferences.Editor editor, Boolean bool) {
        editor.putBoolean(this.b, bool.booleanValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.o40
    public final Boolean i(JSONObject jSONObject) {
        return Boolean.valueOf(jSONObject.optBoolean(this.b, ((Boolean) this.c).booleanValue()));
    }
}
