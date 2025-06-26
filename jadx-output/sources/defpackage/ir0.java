package defpackage;

import android.content.Context;
import android.content.pm.PackageInfo;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;

/* loaded from: classes.dex */
public final class ir0 implements kr0 {
    @Override // defpackage.kr0
    public final aw2<String> a(String str, PackageInfo packageInfo, int i) {
        return vt2.j(str);
    }

    @Override // defpackage.kr0
    public final aw2<String> b(Context context, int i) {
        return vt2.j(null);
    }

    @Override // defpackage.kr0
    public final aw2<AdvertisingIdClient.Info> c(Context context, int i) {
        xs0 xs0Var = new xs0();
        zr0 zr0Var = os3.j.a;
        if (zr0.i(context)) {
            ms0.a.execute(new lr0(context, xs0Var));
        }
        return xs0Var;
    }
}
