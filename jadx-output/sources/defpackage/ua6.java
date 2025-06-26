package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;

/* loaded from: classes.dex */
public class ua6 {
    public final Context a;
    public final SharedPreferences b;
    public final mo5 c;
    public boolean d;

    public ua6(Context context, String str, mo5 mo5Var) {
        boolean z;
        ApplicationInfo applicationInfo;
        Bundle bundle;
        int i = Build.VERSION.SDK_INT;
        if (i >= 24) {
            Object obj = u7.a;
            context = i >= 24 ? context.createDeviceProtectedStorageContext() : null;
        }
        this.a = context;
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.firebase.common.prefs:" + str, 0);
        this.b = sharedPreferences;
        this.c = mo5Var;
        boolean z2 = true;
        if (sharedPreferences.contains("firebase_data_collection_default_enabled")) {
            z = sharedPreferences.getBoolean("firebase_data_collection_default_enabled", true);
        } else {
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128)) != null && (bundle = applicationInfo.metaData) != null && bundle.containsKey("firebase_data_collection_default_enabled")) {
                    z2 = applicationInfo.metaData.getBoolean("firebase_data_collection_default_enabled");
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
            z = z2;
        }
        this.d = z;
    }
}
