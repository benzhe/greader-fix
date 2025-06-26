package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.base.R$string;

/* loaded from: classes.dex */
public final class k00 {
    public static final m4<String, String> a = new m4<>();

    public static String a(Context context) {
        String packageName = context.getPackageName();
        try {
            h20 h20VarA = i20.a(context);
            return h20VarA.a.getPackageManager().getApplicationLabel(h20VarA.a.getPackageManager().getApplicationInfo(packageName, 0)).toString();
        } catch (PackageManager.NameNotFoundException | NullPointerException unused) {
            String str = context.getApplicationInfo().name;
            return TextUtils.isEmpty(str) ? packageName : str;
        }
    }

    public static String b(Context context, int i) {
        Resources resources = context.getResources();
        String strA = a(context);
        if (i == 1) {
            return resources.getString(R$string.common_google_play_services_install_text, strA);
        }
        if (i == 2) {
            return bi.P(context) ? resources.getString(R$string.common_google_play_services_wear_update_text) : resources.getString(R$string.common_google_play_services_update_text, strA);
        }
        if (i == 3) {
            return resources.getString(R$string.common_google_play_services_enable_text, strA);
        }
        if (i == 5) {
            return e(context, "common_google_play_services_invalid_account_text", strA);
        }
        if (i == 7) {
            return e(context, "common_google_play_services_network_error_text", strA);
        }
        if (i == 9) {
            return resources.getString(R$string.common_google_play_services_unsupported_text, strA);
        }
        if (i == 20) {
            return e(context, "common_google_play_services_restricted_profile_text", strA);
        }
        switch (i) {
            case 16:
                return e(context, "common_google_play_services_api_unavailable_text", strA);
            case 17:
                return e(context, "common_google_play_services_sign_in_failed_text", strA);
            case 18:
                return resources.getString(R$string.common_google_play_services_updating_text, strA);
            default:
                return resources.getString(com.google.android.gms.common.R$string.common_google_play_services_unknown_issue, strA);
        }
    }

    public static String c(Context context, int i) {
        Resources resources = context.getResources();
        switch (i) {
            case 1:
                return resources.getString(R$string.common_google_play_services_install_title);
            case 2:
                return resources.getString(R$string.common_google_play_services_update_title);
            case 3:
                return resources.getString(R$string.common_google_play_services_enable_title);
            case 4:
            case 6:
            case 18:
                return null;
            case 5:
                Log.e("GoogleApiAvailability", "An invalid account was specified when connecting. Please provide a valid account.");
                return d(context, "common_google_play_services_invalid_account_title");
            case 7:
                Log.e("GoogleApiAvailability", "Network error occurred. Please retry request later.");
                return d(context, "common_google_play_services_network_error_title");
            case 8:
                Log.e("GoogleApiAvailability", "Internal error occurred. Please see logs for detailed information");
                return null;
            case 9:
                Log.e("GoogleApiAvailability", "Google Play services is invalid. Cannot recover.");
                return null;
            case 10:
                Log.e("GoogleApiAvailability", "Developer error occurred. Please see logs for detailed information");
                return null;
            case 11:
                Log.e("GoogleApiAvailability", "The application is not licensed to the user.");
                return null;
            case 12:
            case 13:
            case 14:
            case 15:
            case 19:
            default:
                StringBuilder sb = new StringBuilder(33);
                sb.append("Unexpected error code ");
                sb.append(i);
                Log.e("GoogleApiAvailability", sb.toString());
                return null;
            case 16:
                Log.e("GoogleApiAvailability", "One of the API components you attempted to connect to is not available.");
                return null;
            case 17:
                Log.e("GoogleApiAvailability", "The specified account could not be signed in.");
                return d(context, "common_google_play_services_sign_in_failed_title");
            case 20:
                Log.e("GoogleApiAvailability", "The current user profile is restricted and could not use authenticated features.");
                return d(context, "common_google_play_services_restricted_profile_title");
        }
    }

    public static String d(Context context, String str) {
        Resources resourcesForApplication;
        m4<String, String> m4Var = a;
        synchronized (m4Var) {
            String orDefault = m4Var.getOrDefault(str, null);
            if (orDefault != null) {
                return orDefault;
            }
            int i = jy.e;
            try {
                resourcesForApplication = context.getPackageManager().getResourcesForApplication("com.google.android.gms");
            } catch (PackageManager.NameNotFoundException unused) {
                resourcesForApplication = null;
            }
            if (resourcesForApplication == null) {
                return null;
            }
            int identifier = resourcesForApplication.getIdentifier(str, "string", "com.google.android.gms");
            if (identifier == 0) {
                String strValueOf = String.valueOf(str);
                Log.w("GoogleApiAvailability", strValueOf.length() != 0 ? "Missing resource: ".concat(strValueOf) : new String("Missing resource: "));
                return null;
            }
            String string = resourcesForApplication.getString(identifier);
            if (!TextUtils.isEmpty(string)) {
                a.put(str, string);
                return string;
            }
            String strValueOf2 = String.valueOf(str);
            Log.w("GoogleApiAvailability", strValueOf2.length() != 0 ? "Got empty resource: ".concat(strValueOf2) : new String("Got empty resource: "));
            return null;
        }
    }

    public static String e(Context context, String str, String str2) throws Resources.NotFoundException {
        Resources resources = context.getResources();
        String strD = d(context, str);
        if (strD == null) {
            strD = resources.getString(com.google.android.gms.common.R$string.common_google_play_services_unknown_issue);
        }
        return String.format(resources.getConfiguration().locale, strD, str2);
    }
}
