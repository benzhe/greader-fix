package defpackage;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final /* synthetic */ class ua0 implements kb0 {
    public static final kb0 a = new ua0();

    @Override // defpackage.kb0
    public final void a(Object obj, Map map) {
        yx0 yx0Var = (yx0) obj;
        kb0<xw0> kb0Var = va0.a;
        String str = (String) map.get("urls");
        if (TextUtils.isEmpty(str)) {
            is0.zzez("URLs missing in canOpenURLs GMSG.");
            return;
        }
        String[] strArrSplit = str.split(",");
        HashMap map2 = new HashMap();
        PackageManager packageManager = yx0Var.getContext().getPackageManager();
        for (String str2 : strArrSplit) {
            String[] strArrSplit2 = str2.split(";", 2);
            boolean z = true;
            if (packageManager.resolveActivity(new Intent(strArrSplit2.length > 1 ? strArrSplit2[1].trim() : "android.intent.action.VIEW", Uri.parse(strArrSplit2[0].trim())), 65536) == null) {
                z = false;
            }
            Boolean boolValueOf = Boolean.valueOf(z);
            map2.put(str2, boolValueOf);
            String strValueOf = String.valueOf(boolValueOf);
            StringBuilder sb = new StringBuilder(strValueOf.length() + str2.length() + 14);
            sb.append("/canOpenURLs;");
            sb.append(str2);
            sb.append(";");
            sb.append(strValueOf);
            zzd.zzed(sb.toString());
        }
        ((od0) yx0Var).x("openableURLs", map2);
    }
}
