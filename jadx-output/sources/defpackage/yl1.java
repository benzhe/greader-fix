package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzbar;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class yl1 implements ek1 {
    public final vg0 a;
    public final wg0 b;
    public final bh0 c;
    public final qa1 d;
    public final x91 e;
    public final Context f;
    public final sk2 g;
    public final zzbar h;
    public final ll2 i;
    public boolean j = false;
    public boolean k = false;
    public boolean l = true;

    public yl1(vg0 vg0Var, wg0 wg0Var, bh0 bh0Var, qa1 qa1Var, x91 x91Var, Context context, sk2 sk2Var, zzbar zzbarVar, ll2 ll2Var) {
        this.a = vg0Var;
        this.b = wg0Var;
        this.c = bh0Var;
        this.d = qa1Var;
        this.e = x91Var;
        this.f = context;
        this.g = sk2Var;
        this.h = zzbarVar;
        this.i = ll2Var;
    }

    public static HashMap<String, View> q(Map<String, WeakReference<View>> map) {
        HashMap<String, View> map2 = new HashMap<>();
        if (map == null) {
            return map2;
        }
        synchronized (map) {
            for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                View view = entry.getValue().get();
                if (view != null) {
                    map2.put(entry.getKey(), view);
                }
            }
        }
        return map2;
    }

    @Override // defpackage.ek1
    public final void L(iu3 iu3Var) {
        is0.zzez("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // defpackage.ek1
    public final void N() {
    }

    @Override // defpackage.ek1
    public final void a(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        try {
            y20 y20Var = new y20(view);
            this.l = r(map, map2);
            HashMap<String, View> mapQ = q(map);
            HashMap<String, View> mapQ2 = q(map2);
            bh0 bh0Var = this.c;
            if (bh0Var != null) {
                bh0Var.x(y20Var, new y20(mapQ), new y20(mapQ2));
                return;
            }
            vg0 vg0Var = this.a;
            if (vg0Var != null) {
                vg0Var.x(y20Var, new y20(mapQ), new y20(mapQ2));
                this.a.K(y20Var);
                return;
            }
            wg0 wg0Var = this.b;
            if (wg0Var != null) {
                wg0Var.x(y20Var, new y20(mapQ), new y20(mapQ2));
                this.b.K(y20Var);
            }
        } catch (RemoteException e) {
            is0.zzd("Failed to call trackView", e);
        }
    }

    @Override // defpackage.ek1
    public final void b(Bundle bundle) {
    }

    @Override // defpackage.ek1
    public final void b0(u90 u90Var) {
    }

    @Override // defpackage.ek1
    public final void c(View view) {
    }

    @Override // defpackage.ek1
    public final void d(View view, Map<String, WeakReference<View>> map) {
        try {
            y20 y20Var = new y20(view);
            bh0 bh0Var = this.c;
            if (bh0Var != null) {
                bh0Var.y(y20Var);
                return;
            }
            vg0 vg0Var = this.a;
            if (vg0Var != null) {
                vg0Var.y(y20Var);
                return;
            }
            wg0 wg0Var = this.b;
            if (wg0Var != null) {
                wg0Var.y(y20Var);
            }
        } catch (RemoteException e) {
            is0.zzd("Failed to call untrackView", e);
        }
    }

    @Override // defpackage.ek1
    public final void destroy() {
    }

    @Override // defpackage.ek1
    public final void e(Bundle bundle) {
    }

    @Override // defpackage.ek1
    public final void e0() {
        this.k = true;
    }

    @Override // defpackage.ek1
    public final void f(View view, MotionEvent motionEvent, View view2) {
    }

    @Override // defpackage.ek1
    public final void g(View view, View view2, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (this.k && this.g.G) {
            return;
        }
        p(view);
    }

    @Override // defpackage.ek1
    public final void h(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        try {
            boolean z = this.j;
            if (!z && this.g.B != null) {
                this.j = z | zzr.zzlf().zzb(this.f, this.h.e, this.g.B.toString(), this.i.f);
            }
            if (this.l) {
                bh0 bh0Var = this.c;
                if (bh0Var != null && !bh0Var.w()) {
                    this.c.recordImpression();
                    this.d.onAdImpression();
                    return;
                }
                vg0 vg0Var = this.a;
                if (vg0Var != null && !vg0Var.w()) {
                    this.a.recordImpression();
                    this.d.onAdImpression();
                    return;
                }
                wg0 wg0Var = this.b;
                if (wg0Var == null || wg0Var.w()) {
                    return;
                }
                this.b.recordImpression();
                this.d.onAdImpression();
            }
        } catch (RemoteException e) {
            is0.zzd("Failed to call recordImpression", e);
        }
    }

    @Override // defpackage.ek1
    public final void i() {
    }

    @Override // defpackage.ek1
    public final JSONObject j(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        return null;
    }

    @Override // defpackage.ek1
    public final void j0(fu3 fu3Var) {
        is0.zzez("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // defpackage.ek1
    public final void k(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (!this.k) {
            is0.zzez("Custom click reporting for 3p ads failed. enableCustomClickGesture is not set.");
        } else if (this.g.G) {
            p(view);
        } else {
            is0.zzez("Custom click reporting for 3p ads failed. Ad unit id not in allow list.");
        }
    }

    @Override // defpackage.ek1
    public final boolean k0() {
        return this.g.G;
    }

    @Override // defpackage.ek1
    public final void l() {
        is0.zzez("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // defpackage.ek1
    public final void m(String str) {
    }

    @Override // defpackage.ek1
    public final void n() {
    }

    @Override // defpackage.ek1
    public final boolean o(Bundle bundle) {
        return false;
    }

    public final void p(View view) {
        try {
            bh0 bh0Var = this.c;
            if (bh0Var != null && !bh0Var.F()) {
                this.c.v(new y20(view));
                this.e.D0(aa1.a);
                return;
            }
            vg0 vg0Var = this.a;
            if (vg0Var != null && !vg0Var.F()) {
                this.a.v(new y20(view));
                this.e.D0(aa1.a);
                return;
            }
            wg0 wg0Var = this.b;
            if (wg0Var == null || wg0Var.F()) {
                return;
            }
            this.b.v(new y20(view));
            this.e.D0(aa1.a);
        } catch (RemoteException e) {
            is0.zzd("Failed to call handleClick", e);
        }
    }

    public final boolean r(Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        Object obj;
        x20 x20VarZ;
        JSONObject jSONObject = this.g.e0;
        if (((Boolean) os3.j.f.a(y40.c1)).booleanValue() && jSONObject.length() != 0) {
            if (map == null) {
                map = new HashMap<>();
            }
            if (map2 == null) {
                map2 = new HashMap<>();
            }
            HashMap map3 = new HashMap();
            map3.putAll(map);
            map3.putAll(map2);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(next);
                if (jSONArrayOptJSONArray != null) {
                    WeakReference weakReference = (WeakReference) map3.get(next);
                    if (weakReference == null || (obj = weakReference.get()) == null) {
                        return false;
                    }
                    Class<?> cls = obj.getClass();
                    if (((Boolean) os3.j.f.a(y40.d1)).booleanValue() && next.equals("3010")) {
                        bh0 bh0Var = this.c;
                        Object objL0 = null;
                        if (bh0Var != null) {
                            try {
                                x20VarZ = bh0Var.z();
                            } catch (RemoteException | IllegalArgumentException unused) {
                            }
                        } else {
                            vg0 vg0Var = this.a;
                            if (vg0Var != null) {
                                x20VarZ = vg0Var.z();
                            } else {
                                wg0 wg0Var = this.b;
                                x20VarZ = wg0Var != null ? wg0Var.z() : null;
                            }
                        }
                        if (x20VarZ != null) {
                            objL0 = y20.l0(x20VarZ);
                        }
                        if (objL0 == null) {
                            return false;
                        }
                        cls = objL0.getClass();
                    }
                    try {
                        ArrayList arrayList = new ArrayList();
                        zzbh.zza(jSONArrayOptJSONArray, arrayList);
                        zzr.zzkv();
                        if (!zzj.zza(this.f.getClassLoader(), cls, arrayList)) {
                            return false;
                        }
                    } catch (JSONException unused2) {
                    }
                }
            }
        }
        return true;
    }
}
