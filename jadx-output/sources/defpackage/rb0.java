package defpackage;

import android.app.Activity;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.os.SystemClock;
import android.view.View;
import com.google.android.gms.ads.internal.overlay.zzv;
import com.google.android.gms.ads.internal.util.zzbg;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzr;
import defpackage.cy0;
import defpackage.dy0;
import defpackage.er3;
import defpackage.ey0;
import defpackage.mw0;
import defpackage.od0;
import defpackage.sx0;
import defpackage.xw0;
import defpackage.yx0;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class rb0<T extends er3 & mw0 & xw0 & od0 & sx0 & yx0 & cy0 & dy0 & ey0> implements kb0<T> {
    public final zza a;
    public final ns1 b;
    public final pp2 c;
    public final sj0 e;
    public final sy1 f;
    public zzv g = null;
    public final ls0 d = new ls0();

    public rb0(zza zzaVar, sj0 sj0Var, sy1 sy1Var, ns1 ns1Var, pp2 pp2Var) {
        this.a = zzaVar;
        this.e = sj0Var;
        this.f = sy1Var;
        this.b = ns1Var;
        this.c = pp2Var;
    }

    public static Uri b(Context context, d23 d23Var, Uri uri, View view, Activity activity) {
        if (d23Var == null) {
            return uri;
        }
        try {
            boolean z = false;
            if (d23Var.c(uri)) {
                String[] strArr = d23.c;
                int length = strArr.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        break;
                    }
                    if (uri.getPath().endsWith(strArr[i])) {
                        z = true;
                        break;
                    }
                    i++;
                }
            }
            return z ? d23Var.a(uri, context, view, activity) : uri;
        } catch (f13 unused) {
            return uri;
        } catch (Exception e) {
            or0 or0VarZzkz = zzr.zzkz();
            xl0.d(or0VarZzkz.e, or0VarZzkz.f).a(e, "OpenGmsgHandler.maybeAddClickSignalsToUri");
            return uri;
        }
    }

    public static int f(Map<String, String> map) {
        String str = map.get("o");
        if (str == null) {
            return -1;
        }
        if ("p".equalsIgnoreCase(str)) {
            return 7;
        }
        if ("l".equalsIgnoreCase(str)) {
            return 6;
        }
        if ("c".equalsIgnoreCase(str)) {
            return zzr.zzkx().zzzv();
        }
        return -1;
    }

    public static Uri g(Uri uri) {
        try {
            if (uri.getQueryParameter("aclk_ms") != null) {
                return uri.buildUpon().appendQueryParameter("aclk_upms", String.valueOf(SystemClock.uptimeMillis())).build();
            }
        } catch (UnsupportedOperationException e) {
            String strValueOf = String.valueOf(uri.toString());
            is0.zzc(strValueOf.length() != 0 ? "Error adding click uptime parameter to url: ".concat(strValueOf) : new String("Error adding click uptime parameter to url: "), e);
        }
        return uri;
    }

    /* JADX WARN: Removed duplicated region for block: B:149:0x039e  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x023d  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0243  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0281  */
    @Override // defpackage.kb0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(java.lang.Object r22, java.util.Map r23) throws java.net.URISyntaxException {
        /*
            Method dump skipped, instructions count: 1184
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.rb0.a(java.lang.Object, java.util.Map):void");
    }

    public final void c(y50 y50Var) {
        if (this.b == null) {
            return;
        }
        if (((Boolean) os3.j.f.a(y40.e5)).booleanValue()) {
            pp2 pp2Var = this.c;
            qp2 qp2VarC = qp2.c("cct_action");
            qp2VarC.a.put("cct_open_status", y50Var.toString());
            pp2Var.b(qp2VarC);
            return;
        }
        ms1 ms1VarA = this.b.a();
        ms1VarA.a.put("action", "cct_action");
        ms1VarA.a.put("cct_open_status", y50Var.toString());
        ms1VarA.b();
    }

    public final boolean d(T t, Context context, String str, final String str2) throws IllegalAccessException, InstantiationException, IllegalArgumentException, InvocationTargetException {
        zzr.zzkv();
        boolean zZzbd = zzj.zzbd(context);
        zzr.zzkv();
        zzbg zzbgVarZzbg = zzj.zzbg(context);
        ns1 ns1Var = this.b;
        if (ns1Var != null) {
            cz1.X6(context, ns1Var, this.c, this.f, str2, "offline_open");
        }
        T t2 = t;
        boolean z = t2.c().b() && t2.a() == null;
        if (zZzbd) {
            final sy1 sy1Var = this.f;
            final ls0 ls0Var = this.d;
            sy1Var.c(new jo2(sy1Var, ls0Var, str2) { // from class: wy1
                public final sy1 a;
                public final ls0 b;
                public final String c;

                {
                    this.a = sy1Var;
                    this.b = ls0Var;
                    this.c = str2;
                }

                @Override // defpackage.jo2
                public final Object apply(Object obj) {
                    sy1 sy1Var2 = this.a;
                    ls0 ls0Var2 = this.b;
                    sy1Var2.f.execute(new ty1((SQLiteDatabase) obj, this.c, ls0Var2));
                    return null;
                }
            });
            return false;
        }
        zzr.zzkv();
        if (zzj.zzbf(context) && zzbgVarZzbg != null && !z) {
            if (((Boolean) os3.j.f.a(y40.X4)).booleanValue()) {
                if (t2.c().b()) {
                    cz1.W6(t2.a(), null, zzbgVarZzbg, this.f, this.b, this.c, str2, str);
                } else {
                    t.X(zzbgVarZzbg, this.f, this.b, this.c, str2, str, zzr.zzkx().zzzv());
                }
                ns1 ns1Var2 = this.b;
                if (ns1Var2 != null) {
                    cz1.X6(context, ns1Var2, this.c, this.f, str2, "dialog_impression");
                }
                t.onAdClicked();
                return true;
            }
        }
        sy1 sy1Var2 = this.f;
        sy1Var2.c(new vy1(sy1Var2, str2));
        if (this.b != null) {
            HashMap map = new HashMap();
            zzr.zzkv();
            if (!zzj.zzbf(context)) {
                map.put("dialog_not_shown_reason", "notifications_disabled");
            } else if (zzbgVarZzbg == null) {
                map.put("dialog_not_shown_reason", "work_manager_unavailable");
            } else {
                if (!((Boolean) os3.j.f.a(y40.X4)).booleanValue()) {
                    map.put("dialog_not_shown_reason", "notification_flow_disabled");
                } else if (z) {
                    map.put("dialog_not_shown_reason", "fullscreen_no_activity");
                }
            }
            cz1.Y6(context, this.b, this.c, this.f, str2, "dialog_not_shown", map);
        }
        return false;
    }

    public final void e(boolean z) {
        sj0 sj0Var = this.e;
        if (sj0Var != null) {
            sj0Var.f(z);
        }
    }
}
