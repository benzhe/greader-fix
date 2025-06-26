package defpackage;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzbar;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class hq2 {
    public final v22 a;
    public final String b;
    public final String c;
    public final String d;
    public final Context e;
    public final gl2 f;
    public final b20 g;
    public final d23 h;

    public hq2(v22 v22Var, zzbar zzbarVar, String str, String str2, Context context, gl2 gl2Var, b20 b20Var, d23 d23Var) {
        this.a = v22Var;
        this.b = zzbarVar.e;
        this.c = str;
        this.d = str2;
        this.e = context;
        this.f = gl2Var;
        this.g = b20Var;
        this.h = d23Var;
    }

    public static String c(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str3)) {
            str3 = "";
        }
        return str.replaceAll(str2, str3);
    }

    public final List<String> a(hl2 hl2Var, sk2 sk2Var, List<String> list) {
        return b(hl2Var, sk2Var, false, "", "", list);
    }

    public final List<String> b(hl2 hl2Var, sk2 sk2Var, boolean z, String str, String str2, List<String> list) {
        ArrayList arrayList = new ArrayList();
        String str3 = z ? "1" : "0";
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            String strC = c(c(c(it.next(), "@gw_adlocid@", hl2Var.a.a.f), "@gw_adnetrefresh@", str3), "@gw_sdkver@", this.b);
            if (sk2Var != null) {
                strC = c50.A3(c(c(c(strC, "@gw_qdata@", sk2Var.x), "@gw_adnetid@", sk2Var.w), "@gw_allocid@", sk2Var.v), this.e, sk2Var.Q);
            }
            String strC2 = c(c(c(strC, "@gw_adnetstatus@", TextUtils.join("_", this.a.c)), "@gw_seqnum@", this.c), "@gw_sessid@", this.d);
            boolean z2 = ((Boolean) os3.j.f.a(y40.N1)).booleanValue() && !TextUtils.isEmpty(str);
            boolean zIsEmpty = true ^ TextUtils.isEmpty(str2);
            if (z2 || zIsEmpty) {
                if (this.h.c(Uri.parse(strC2))) {
                    Uri.Builder builderBuildUpon = Uri.parse(strC2).buildUpon();
                    if (z2) {
                        builderBuildUpon = builderBuildUpon.appendQueryParameter("ms", str);
                    }
                    if (zIsEmpty) {
                        builderBuildUpon = builderBuildUpon.appendQueryParameter("attok", str2);
                    }
                    strC2 = builderBuildUpon.build().toString();
                }
            }
            arrayList.add(strC2);
        }
        return arrayList;
    }
}
