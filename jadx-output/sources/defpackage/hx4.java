package defpackage;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import java.util.List;

/* loaded from: classes.dex */
public final class hx4 {
    public final rx4 a;

    public hx4(rx4 rx4Var) {
        this.a = rx4Var;
    }

    public final void a(String str) {
        if (str == null || str.isEmpty()) {
            this.a.a().j.a("Install Referrer Reporter was called with invalid app package name");
            return;
        }
        this.a.m().d();
        if (!b()) {
            this.a.a().l.a("Install Referrer Reporter is not available");
            return;
        }
        gx4 gx4Var = new gx4(this, str);
        this.a.m().d();
        Intent intent = new Intent("com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE");
        intent.setComponent(new ComponentName("com.android.vending", "com.google.android.finsky.externalreferrer.GetInstallReferrerService"));
        PackageManager packageManager = this.a.a.getPackageManager();
        if (packageManager == null) {
            this.a.a().j.a("Failed to obtain Package Manager to verify binding conditions for Install Referrer");
            return;
        }
        List<ResolveInfo> listQueryIntentServices = packageManager.queryIntentServices(intent, 0);
        if (listQueryIntentServices == null || listQueryIntentServices.isEmpty()) {
            this.a.a().l.a("Play Service for fetching Install Referrer is unavailable on device");
            return;
        }
        ServiceInfo serviceInfo = listQueryIntentServices.get(0).serviceInfo;
        if (serviceInfo != null) {
            String str2 = serviceInfo.packageName;
            if (serviceInfo.name == null || !"com.android.vending".equals(str2) || !b()) {
                this.a.a().i.a("Play Store version 8.3.73 or higher required for Install Referrer");
                return;
            }
            try {
                this.a.a().n.b("Install Referrer Service is", true != x10.b().a(this.a.a, new Intent(intent), gx4Var, 1) ? "not available" : "available");
            } catch (Exception e) {
                this.a.a().f.b("Exception occurred while binding to Install Referrer Service", e.getMessage());
            }
        }
    }

    public final boolean b() {
        try {
            h20 h20VarA = i20.a(this.a.a);
            if (h20VarA != null) {
                return h20VarA.a.getPackageManager().getPackageInfo("com.android.vending", 128).versionCode >= 80837300;
            }
            this.a.a().n.a("Failed to get PackageManager for Install Referrer Play Store compatibility check");
            return false;
        } catch (Exception e) {
            this.a.a().n.b("Failed to retrieve Play Store version for Install Referrer", e);
            return false;
        }
    }
}
