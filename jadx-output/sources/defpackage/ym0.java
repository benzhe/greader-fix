package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbar;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class ym0 extends an0 {
    public final Object a = new Object();
    public final Context b;
    public SharedPreferences c;
    public final mf0<JSONObject, JSONObject> d;

    public ym0(Context context, mf0<JSONObject, JSONObject> mf0Var) {
        this.b = context.getApplicationContext();
        this.d = mf0Var;
    }

    public static JSONObject b(Context context) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("js", zzbar.n().e);
            jSONObject.put("mf", r60.a.a());
            jSONObject.put("cl", "360757573");
            jSONObject.put("rapid_rc", "dev");
            jSONObject.put("rapid_rollup", "HEAD");
            jSONObject.put("admob_module_version", 12451000);
            jSONObject.put("dynamite_local_version", ModuleDescriptor.MODULE_VERSION);
            jSONObject.put("dynamite_version", DynamiteModule.b(context, ModuleDescriptor.MODULE_ID));
            jSONObject.put("container_version", 12451000);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type update terminated with stack overflow, arg: (r1v5 ?? I:mf0), method size: 89
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    @Override // defpackage.an0
    public final defpackage.aw2<java.lang.Void> a() {
        /*
            r5 = this;
            java.lang.Object r0 = r5.a
            monitor-enter(r0)
            android.content.SharedPreferences r1 = r5.c     // Catch: java.lang.Throwable -> L56
            if (r1 == 0) goto L9
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L56
            goto L15
        L9:
            android.content.Context r1 = r5.b     // Catch: java.lang.Throwable -> L56
            java.lang.String r2 = "google_ads_flags_meta"
            r3 = 0
            android.content.SharedPreferences r1 = r1.getSharedPreferences(r2, r3)     // Catch: java.lang.Throwable -> L56
            r5.c = r1     // Catch: java.lang.Throwable -> L56
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L56
        L15:
            android.content.SharedPreferences r0 = r5.c
            java.lang.String r1 = "js_last_update"
            r2 = 0
            long r0 = r0.getLong(r1, r2)
            b20 r2 = com.google.android.gms.ads.internal.zzr.zzlc()
            long r2 = r2.a()
            long r2 = r2 - r0
            e60<java.lang.Long> r0 = defpackage.r60.b
            java.lang.Object r0 = r0.a()
            java.lang.Long r0 = (java.lang.Long) r0
            long r0 = r0.longValue()
            int r4 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r4 >= 0) goto L3e
            r0 = 0
            aw2 r0 = defpackage.vt2.j(r0)
            return r0
        L3e:
            android.content.Context r0 = r5.b
            org.json.JSONObject r0 = b(r0)
            mf0<org.json.JSONObject, org.json.JSONObject> r1 = r5.d
            aw2 r0 = r1.b(r0)
            xm0 r1 = new xm0
            r1.<init>(r5)
            zv2 r2 = defpackage.ms0.f
            aw2 r0 = defpackage.vt2.l(r0, r1, r2)
            return r0
        L56:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L56
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ym0.a():aw2");
    }
}
