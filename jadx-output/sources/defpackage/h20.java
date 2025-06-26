package defpackage;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.Process;

/* loaded from: classes.dex */
public class h20 {
    public final Context a;

    public h20(Context context) {
        this.a = context;
    }

    public ApplicationInfo a(String str, int i) throws PackageManager.NameNotFoundException {
        return this.a.getPackageManager().getApplicationInfo(str, i);
    }

    public PackageInfo b(String str, int i) throws PackageManager.NameNotFoundException {
        return this.a.getPackageManager().getPackageInfo(str, i);
    }

    public boolean c() {
        String nameForUid;
        if (Binder.getCallingUid() == Process.myUid()) {
            return bi.M(this.a);
        }
        if (!bi.J() || (nameForUid = this.a.getPackageManager().getNameForUid(Binder.getCallingUid())) == null) {
            return false;
        }
        return this.a.getPackageManager().isInstantApp(nameForUid);
    }
}
