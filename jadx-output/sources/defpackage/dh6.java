package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;

/* loaded from: classes.dex */
public class dh6 {
    public static final o00 a = new o00("CommonUtils", "");

    public static String a(Context context) {
        try {
            return String.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
        } catch (PackageManager.NameNotFoundException e) {
            o00 o00Var = a;
            String strValueOf = String.valueOf(e);
            String strO = jo.O(strValueOf.length() + 48, "Exception thrown when trying to get app version ", strValueOf);
            if (o00Var.a(6)) {
                String str = o00Var.b;
                if (str != null) {
                    strO = str.concat(strO);
                }
                Log.e("CommonUtils", strO);
            }
            return "";
        }
    }
}
