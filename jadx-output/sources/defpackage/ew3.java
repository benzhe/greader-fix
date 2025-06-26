package defpackage;

import android.content.SharedPreferences;
import android.util.Log;

/* loaded from: classes.dex */
public final class ew3 extends yv3<String> {
    public ew3(iw3 iw3Var, String str, String str2) {
        super(iw3Var, str, str2, null);
    }

    @Override // defpackage.yv3
    public final String b(SharedPreferences sharedPreferences) {
        try {
            return sharedPreferences.getString(this.b, null);
        } catch (ClassCastException e) {
            String strValueOf = String.valueOf(this.b);
            Log.e("PhenotypeFlag", strValueOf.length() != 0 ? "Invalid string value in SharedPreferences for ".concat(strValueOf) : new String("Invalid string value in SharedPreferences for "), e);
            return null;
        }
    }

    @Override // defpackage.yv3
    public final /* synthetic */ String e(String str) {
        return str;
    }
}
