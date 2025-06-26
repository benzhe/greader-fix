package defpackage;

import android.os.RemoteException;
import com.google.ads.mediation.AdUrlAdapter;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.internal.ads.zzaqt;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class nq1 {
    public final hq1 a;
    public final AtomicReference<hg0> b = new AtomicReference<>();

    public nq1(hq1 hq1Var) {
        this.a = hq1Var;
    }

    public final hg0 a() throws RemoteException {
        hg0 hg0Var = this.b.get();
        if (hg0Var != null) {
            return hg0Var;
        }
        is0.zzez("Unexpected call to adapter creator.");
        throw new RemoteException();
    }

    public final zl2 b(String str, JSONObject jSONObject) throws pl2 {
        pl2 pl2Var;
        try {
            zl2 zl2Var = new zl2("com.google.ads.mediation.admob.AdMobAdapter".equals(str) ? new hh0(new AdMobAdapter()) : "com.google.ads.mediation.AdUrlAdapter".equals(str) ? new hh0(new AdUrlAdapter()) : "com.google.ads.mediation.admob.AdMobCustomTabsAdapter".equals(str) ? new hh0(new zzaqt()) : d(str, jSONObject));
            hq1 hq1Var = this.a;
            synchronized (hq1Var) {
                try {
                    if (!hq1Var.a.containsKey(str)) {
                        try {
                            try {
                                hq1Var.a.put(str, new iq1(str, zl2Var.a.O(), zl2Var.a.M()));
                            } catch (Throwable th) {
                                throw new pl2(th);
                            }
                        } finally {
                        }
                    }
                } catch (pl2 unused) {
                }
            }
            return zl2Var;
        } finally {
        }
    }

    public final vi0 c(String str) throws RemoteException {
        vi0 vi0VarH4 = a().h4(str);
        hq1 hq1Var = this.a;
        synchronized (hq1Var) {
            if (!hq1Var.a.containsKey(str)) {
                try {
                    hq1Var.a.put(str, new iq1(str, vi0VarH4.O(), vi0VarH4.M()));
                } catch (Throwable unused) {
                }
            }
        }
        return vi0VarH4;
    }

    public final ig0 d(String str, JSONObject jSONObject) throws JSONException, RemoteException {
        hg0 hg0VarA = a();
        if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
            try {
                String string = jSONObject.getString("class_name");
                return hg0VarA.W0(string) ? hg0VarA.B3("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter") : hg0VarA.V1(string) ? hg0VarA.B3(string) : hg0VarA.B3("com.google.ads.mediation.customevent.CustomEventAdapter");
            } catch (JSONException e) {
                is0.zzc("Invalid custom event.", e);
            }
        }
        return hg0VarA.B3(str);
    }
}
