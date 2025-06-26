package defpackage;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final /* synthetic */ class xa0 implements kb0 {
    public static final kb0 a = new xa0();

    @Override // defpackage.kb0
    public final void a(Object obj, Map map) {
        yx0 yx0Var = (yx0) obj;
        kb0<xw0> kb0Var = va0.a;
        if (!((Boolean) os3.j.f.a(y40.P4)).booleanValue()) {
            is0.zzez("canOpenAppGmsgHandler disabled.");
            return;
        }
        String str = (String) map.get("package_name");
        if (TextUtils.isEmpty(str)) {
            is0.zzez("Package name missing in canOpenApp GMSG.");
            return;
        }
        HashMap map2 = new HashMap();
        Boolean boolValueOf = Boolean.valueOf(yx0Var.getContext().getPackageManager().getLaunchIntentForPackage(str) != null);
        map2.put(str, boolValueOf);
        String strValueOf = String.valueOf(boolValueOf);
        StringBuilder sb = new StringBuilder(strValueOf.length() + String.valueOf(str).length() + 13);
        sb.append("/canOpenApp;");
        sb.append(str);
        sb.append(";");
        sb.append(strValueOf);
        zzd.zzed(sb.toString());
        ((od0) yx0Var).x("openableApp", map2);
    }
}
