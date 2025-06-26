package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.zzr;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class xp0 {
    public static xp0 h;
    public mb3<Context> a;
    public mb3<zzf> b;
    public mb3<cq0> c;
    public mb3<rp0> d;
    public mb3<tp0> e;
    public mb3<vp0> f;
    public mb3<rq0> g;

    public xp0(Context context, zzf zzfVar, cq0 cq0Var, wp0 wp0Var) {
        Objects.requireNonNull(context, "instance cannot be null");
        this.a = new fb3(context);
        Objects.requireNonNull(zzfVar, "instance cannot be null");
        this.b = new fb3(zzfVar);
        Objects.requireNonNull(cq0Var, "instance cannot be null");
        fb3 fb3Var = new fb3(cq0Var);
        this.c = fb3Var;
        mb3 qp0Var = new qp0(this.a, this.b, fb3Var);
        Object obj = db3.c;
        this.d = qp0Var instanceof db3 ? qp0Var : new db3(qp0Var);
        mb3 sp0Var = new sp0(this.b, this.c);
        sp0Var = sp0Var instanceof db3 ? sp0Var : new db3(sp0Var);
        this.e = sp0Var;
        up0 up0Var = new up0(sp0Var);
        this.f = up0Var;
        mb3 uq0Var = new uq0(this.a, up0Var);
        this.g = uq0Var instanceof db3 ? uq0Var : new db3(uq0Var);
    }

    public static synchronized xp0 a(Context context) {
        xp0 xp0Var = h;
        if (xp0Var != null) {
            return xp0Var;
        }
        Context applicationContext = context.getApplicationContext();
        y40.a(applicationContext);
        zzf zzfVarF = zzr.zzkz().f();
        zzfVarF.initialize(applicationContext);
        aq0 aq0Var = new aq0(null);
        Objects.requireNonNull(applicationContext);
        aq0Var.a = applicationContext;
        aq0Var.b = zzfVarF;
        cq0 cq0VarZzlt = zzr.zzlt();
        Objects.requireNonNull(cq0VarZzlt);
        aq0Var.c = cq0VarZzlt;
        c50.l2(aq0Var.a, Context.class);
        c50.l2(aq0Var.b, zzf.class);
        c50.l2(aq0Var.c, cq0.class);
        xp0 xp0Var2 = new xp0(aq0Var.a, aq0Var.b, aq0Var.c, null);
        h = xp0Var2;
        rp0 rp0Var = xp0Var2.d.get();
        rp0Var.b.registerOnSharedPreferenceChangeListener(rp0Var);
        rp0Var.onSharedPreferenceChanged(rp0Var.b, "IABTCF_PurposeConsents");
        h.b().a.b();
        final rq0 rq0Var = h.g.get();
        if (((Boolean) os3.j.f.a(y40.j0)).booleanValue()) {
            final HashMap map = new HashMap();
            try {
                JSONObject jSONObject = new JSONObject((String) os3.j.f.a(y40.k0));
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    HashSet hashSet = new HashSet();
                    JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(next);
                    if (jSONArrayOptJSONArray != null) {
                        for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                            String strOptString = jSONArrayOptJSONArray.optString(i);
                            if (strOptString != null) {
                                hashSet.add(strOptString);
                            }
                        }
                        map.put(next, hashSet);
                    }
                }
                Iterator it = map.keySet().iterator();
                while (it.hasNext()) {
                    rq0Var.a((String) it.next());
                }
                vq0 vq0Var = new vq0(rq0Var, map) { // from class: tq0
                    public final rq0 a;
                    public final Map b;

                    {
                        this.a = rq0Var;
                        this.b = map;
                    }

                    @Override // defpackage.vq0
                    public final void a(SharedPreferences sharedPreferences, String str, String str2) {
                        rq0 rq0Var2 = this.a;
                        Map map2 = this.b;
                        Objects.requireNonNull(rq0Var2);
                        if (map2.containsKey(str) && ((Set) map2.get(str)).contains(str2)) {
                            rq0Var2.d.a.a(-1);
                        }
                    }
                };
                synchronized (rq0Var) {
                    rq0Var.b.add(vq0Var);
                }
            } catch (JSONException e) {
                is0.zzb("Failed to parse listening list", e);
            }
        }
        return h;
    }

    public final vp0 b() {
        return new vp0(this.e.get());
    }
}
