package defpackage;

import android.content.SharedPreferences;
import android.util.Log;

/* loaded from: classes.dex */
public final class dw3 extends yv3<Boolean> {
    public dw3(iw3 iw3Var, String str, Boolean bool) {
        super(iw3Var, str, bool, null);
    }

    @Override // defpackage.yv3
    public final Boolean b(SharedPreferences sharedPreferences) {
        try {
            return Boolean.valueOf(sharedPreferences.getBoolean(this.b, false));
        } catch (ClassCastException e) {
            String strValueOf = String.valueOf(this.b);
            Log.e("PhenotypeFlag", strValueOf.length() != 0 ? "Invalid boolean value in SharedPreferences for ".concat(strValueOf) : new String("Invalid boolean value in SharedPreferences for "), e);
            return null;
        }
    }

    @Override // defpackage.yv3
    public final /* synthetic */ Boolean e(String str) {
        if (a24.c.matcher(str).matches()) {
            return Boolean.TRUE;
        }
        if (a24.d.matcher(str).matches()) {
            return Boolean.FALSE;
        }
        String str2 = this.b;
        Log.e("PhenotypeFlag", jo.d(str.length() + jo.x(str2, 28), "Invalid boolean value for ", str2, ": ", str));
        return null;
    }
}
