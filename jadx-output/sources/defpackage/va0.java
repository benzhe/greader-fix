package defpackage;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzr;

/* loaded from: classes.dex */
public final class va0 {
    public static final kb0<xw0> a = ua0.a;
    public static final kb0<xw0> b = xa0.a;
    public static final kb0<xw0> c = wa0.a;
    public static final kb0<xw0> d = za0.a;
    public static final kb0<xw0> e = new ab0();
    public static final kb0<xw0> f = new cb0();
    public static final kb0<xw0> g = ya0.a;
    public static final kb0<Object> h = new fb0();
    public static final kb0<xw0> i = new eb0();
    public static final kb0<xw0> j = bb0.a;
    public static final kb0<xw0> k = new hb0();
    public static final kb0<xw0> l = new gb0();
    public static final kb0<iu0> m = new sv0();
    public static final kb0<iu0> n = new vv0();
    public static final kb0<xw0> o = new sa0();
    public static final vb0 p = new vb0();
    public static final kb0<xw0> q = new jb0();
    public static final kb0<xw0> r = new ib0();
    public static final kb0<xw0> s = new lb0();
    public static final kb0<xw0> t = new db0();

    public static <T extends yx0 & dy0 & ey0> String a(T t2, String str) throws NoSuchMethodException, SecurityException {
        Uri uriA = Uri.parse(str);
        try {
            d23 d23VarL = t2.l();
            if (d23VarL != null && d23VarL.c(uriA)) {
                uriA = d23VarL.a(uriA, t2.getContext(), t2.getView(), t2.a());
            }
        } catch (f13 unused) {
            is0.zzez(str.length() != 0 ? "Unable to append parameter to URL: ".concat(str) : new String("Unable to append parameter to URL: "));
        }
        Context context = t2.getContext();
        if (!zzr.zzlt().h(context)) {
            return uriA.toString();
        }
        String strL = zzr.zzlt().l(context);
        if (strL == null) {
            return uriA.toString();
        }
        if (((Boolean) os3.j.f.a(y40.W)).booleanValue()) {
            String str2 = (String) os3.j.f.a(y40.X);
            String string = uriA.toString();
            if (string.contains(str2)) {
                zzr.zzlt().d(context, "_ac", strL, null);
                return c50.Y2(string, context).replace(str2, strL);
            }
        } else if (TextUtils.isEmpty(uriA.getQueryParameter("fbs_aeid"))) {
            String string2 = c50.l1(c50.Y2(uriA.toString(), context), "fbs_aeid", strL).toString();
            zzr.zzlt().d(context, "_ac", strL, null);
            return string2;
        }
        return uriA.toString();
    }
}
