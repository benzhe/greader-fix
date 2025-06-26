package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import java.io.FilenameFilter;

/* loaded from: classes.dex */
public class bj5 {
    public final SharedPreferences a;
    public final pe5 b;
    public final Object c;
    public f45<Void> d;
    public boolean e;
    public boolean f;
    public Boolean g;
    public f45<Void> h;

    public bj5(pe5 pe5Var) {
        Boolean boolValueOf;
        Object obj = new Object();
        this.c = obj;
        this.d = new f45<>();
        this.e = false;
        this.f = false;
        this.h = new f45<>();
        pe5Var.a();
        Context context = pe5Var.a;
        this.b = pe5Var;
        SharedPreferences sharedPreferencesN = vh5.n(context);
        this.a = sharedPreferencesN;
        if (sharedPreferencesN.contains("firebase_crashlytics_collection_enabled")) {
            this.f = false;
            boolValueOf = Boolean.valueOf(sharedPreferencesN.getBoolean("firebase_crashlytics_collection_enabled", true));
        } else {
            boolValueOf = null;
        }
        this.g = boolValueOf == null ? a(context) : boolValueOf;
        synchronized (obj) {
            if (b()) {
                this.d.b(null);
                this.e = true;
            }
        }
    }

    public final Boolean a(Context context) {
        PackageManager packageManager;
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            packageManager = context.getPackageManager();
        } catch (PackageManager.NameNotFoundException e) {
            if (ah5.a.a(3)) {
                Log.d("FirebaseCrashlytics", "Unable to get PackageManager. Falling through", e);
            }
        }
        Boolean boolValueOf = (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128)) == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey("firebase_crashlytics_collection_enabled")) ? null : Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_crashlytics_collection_enabled"));
        if (boolValueOf == null) {
            this.f = false;
            return null;
        }
        this.f = true;
        return Boolean.valueOf(Boolean.TRUE.equals(boolValueOf));
    }

    public synchronized boolean b() {
        boolean zBooleanValue;
        Boolean bool = this.g;
        zBooleanValue = bool != null ? bool.booleanValue() : this.b.f();
        ah5.a.b(String.format("Crashlytics automatic data collection %s by %s.", zBooleanValue ? "ENABLED" : "DISABLED", this.g == null ? "global Firebase setting" : this.f ? "firebase_crashlytics_collection_enabled manifest flag" : "API"));
        return zBooleanValue;
    }

    public e45<Void> c() {
        e55<Void> e55Var;
        e55<Void> e55Var2 = this.h.a;
        synchronized (this.c) {
            e55Var = this.d.a;
        }
        FilenameFilter filenameFilter = qj5.a;
        f45 f45Var = new f45();
        rj5 rj5Var = new rj5(f45Var);
        e55Var2.h(rj5Var);
        e55Var.h(rj5Var);
        return f45Var.a;
    }
}
