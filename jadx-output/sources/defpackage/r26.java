package defpackage;

import android.app.Application;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public class r26 {
    public o66 a;
    public AtomicBoolean b;

    public r26(pe5 pe5Var, o66 o66Var, no5 no5Var) {
        this.a = o66Var;
        this.b = new AtomicBoolean(pe5Var.f());
        no5Var.a(ne5.class, new lo5(this) { // from class: q26
            public final r26 a;

            {
                this.a = this;
            }

            @Override // defpackage.lo5
            public void a(ko5 ko5Var) {
                r26 r26Var = this.a;
                Objects.requireNonNull(ko5Var);
                AtomicBoolean atomicBoolean = r26Var.b;
                throw null;
            }
        });
    }

    public boolean a() {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        ApplicationInfo applicationInfo2;
        Bundle bundle2;
        pe5 pe5Var = this.a.a;
        pe5Var.a();
        boolean z = false;
        if (((Application) pe5Var.a).getSharedPreferences("com.google.firebase.inappmessaging", 0).contains("auto_init")) {
            pe5 pe5Var2 = this.a.a;
            pe5Var2.a();
            SharedPreferences sharedPreferences = ((Application) pe5Var2.a).getSharedPreferences("com.google.firebase.inappmessaging", 0);
            if (sharedPreferences.contains("auto_init")) {
                return sharedPreferences.getBoolean("auto_init", true);
            }
            return true;
        }
        pe5 pe5Var3 = this.a.a;
        pe5Var3.a();
        Application application = (Application) pe5Var3.a;
        try {
            PackageManager packageManager = application.getPackageManager();
            if (packageManager != null && (applicationInfo2 = packageManager.getApplicationInfo(application.getPackageName(), 128)) != null && (bundle2 = applicationInfo2.metaData) != null) {
                if (bundle2.containsKey("firebase_inapp_messaging_auto_data_collection_enabled")) {
                    z = true;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        if (!z) {
            return this.b.get();
        }
        pe5 pe5Var4 = this.a.a;
        pe5Var4.a();
        Application application2 = (Application) pe5Var4.a;
        try {
            PackageManager packageManager2 = application2.getPackageManager();
            if (packageManager2 == null || (applicationInfo = packageManager2.getApplicationInfo(application2.getPackageName(), 128)) == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey("firebase_inapp_messaging_auto_data_collection_enabled")) {
                return true;
            }
            return applicationInfo.metaData.getBoolean("firebase_inapp_messaging_auto_data_collection_enabled");
        } catch (PackageManager.NameNotFoundException unused2) {
            return true;
        }
    }
}
