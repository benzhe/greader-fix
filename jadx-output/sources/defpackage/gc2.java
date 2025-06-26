package defpackage;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;

/* loaded from: classes.dex */
public final class gc2 implements nd2<Bundle>, qd2<nd2<Bundle>> {
    public final ApplicationInfo a;
    public final PackageInfo b;

    public gc2(ApplicationInfo applicationInfo, PackageInfo packageInfo) {
        this.a = applicationInfo;
        this.b = packageInfo;
    }

    @Override // defpackage.qd2
    public final aw2<nd2<Bundle>> a() {
        return vt2.j(this);
    }

    @Override // defpackage.nd2
    public final void b(Bundle bundle) {
        Bundle bundle2 = bundle;
        String str = this.a.packageName;
        PackageInfo packageInfo = this.b;
        Integer numValueOf = packageInfo == null ? null : Integer.valueOf(packageInfo.versionCode);
        bundle2.putString("pn", str);
        if (numValueOf != null) {
            bundle2.putInt("vc", numValueOf.intValue());
        }
        if (((Boolean) os3.j.f.a(y40.x3)).booleanValue()) {
            PackageInfo packageInfo2 = this.b;
            String str2 = packageInfo2 != null ? packageInfo2.versionName : null;
            if (str2 != null) {
                bundle2.putString("vnm", str2);
            }
        }
    }
}
