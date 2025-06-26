package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;

/* loaded from: classes2.dex */
public class cn6 extends iw6 {
    public static final /* synthetic */ int b = 0;

    public static String b0(Context context) {
        return iw6.F(context, "google_login_id");
    }

    public static int c0(Context context) {
        return iw6.m(context, "login_method", 0);
    }

    public static boolean d0(Context context) {
        return iw6.f(context, "pro_version_access", false) || e0(context);
    }

    public static boolean e0(Context context) {
        return System.currentTimeMillis() < iw6.A(context, "premium_rewarded_expiry_time", -1L);
    }

    public static void f0(Context context, String str) {
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        editorEdit.putString("google_auth", str);
        editorEdit.putLong("google_auth_time", System.currentTimeMillis());
        editorEdit.commit();
    }

    public static void g0(Context context, String str, String str2) {
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        editorEdit.putString("google_login_id", str);
        editorEdit.putString("google_passwd", str2);
        editorEdit.commit();
    }

    public static void h0(Context context, int i) {
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        iw6.T(context, "login_method", i);
        editorEdit.commit();
    }

    public static void i0(Context context, String str, String str2, int i) {
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        editorEdit.putString("oauth2_token_refresh", str2);
        editorEdit.putString("google_auth", str);
        editorEdit.putLong("google_auth_time", System.currentTimeMillis());
        editorEdit.putInt("login_method", i);
        editorEdit.commit();
    }
}
