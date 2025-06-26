package defpackage;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public class ky {
    public static boolean a = false;
    public static boolean b = false;
    public static final AtomicBoolean c = new AtomicBoolean();
    public static final AtomicBoolean d = new AtomicBoolean();

    public static Context a(Context context) {
        try {
            return context.createPackageContext("com.google.android.gms", 3);
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public static boolean b(Context context) {
        try {
            if (!b) {
                PackageInfo packageInfo = i20.a(context).a.getPackageManager().getPackageInfo("com.google.android.gms", 64);
                ly.a(context);
                if (packageInfo == null || ly.d(packageInfo, false) || !ly.d(packageInfo, true)) {
                    a = false;
                } else {
                    a = true;
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
            Log.w("GooglePlayServicesUtil", "Cannot find Google Play services package name.", e);
        } finally {
            b = true;
        }
        return a || !"user".equals(Build.TYPE);
    }
}
