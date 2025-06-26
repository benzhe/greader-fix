package defpackage;

import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzbn;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzaei;
import com.google.android.gms.internal.ads.zzbar;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class ri1 implements ek1 {
    public final Context a;
    public final dk1 b;
    public final JSONObject c;
    public final io1 d;
    public final wj1 e;
    public final d23 f;
    public final qa1 g;
    public final x91 h;
    public final sk2 i;
    public final zzbar j;
    public final ll2 k;
    public final q21 l;
    public final wk1 m;
    public final b20 n;
    public final rf1 o;
    public final jq2 p;
    public boolean r;
    public fu3 y;
    public boolean q = false;
    public boolean s = false;
    public boolean t = false;
    public Point u = new Point();
    public Point v = new Point();
    public long w = 0;
    public long x = 0;

    public ri1(Context context, dk1 dk1Var, JSONObject jSONObject, io1 io1Var, wj1 wj1Var, d23 d23Var, qa1 qa1Var, x91 x91Var, sk2 sk2Var, zzbar zzbarVar, ll2 ll2Var, q21 q21Var, wk1 wk1Var, b20 b20Var, rf1 rf1Var, jq2 jq2Var) {
        this.a = context;
        this.b = dk1Var;
        this.c = jSONObject;
        this.d = io1Var;
        this.e = wj1Var;
        this.f = d23Var;
        this.g = qa1Var;
        this.h = x91Var;
        this.i = sk2Var;
        this.j = zzbarVar;
        this.k = ll2Var;
        this.l = q21Var;
        this.m = wk1Var;
        this.n = b20Var;
        this.o = rf1Var;
        this.p = jq2Var;
    }

    @Override // defpackage.ek1
    public final void L(iu3 iu3Var) {
        try {
            if (this.s) {
                return;
            }
            if (iu3Var != null || this.e.m() == null) {
                this.s = true;
                this.p.a(iu3Var.y6());
                l();
            } else {
                this.s = true;
                this.p.a(this.e.m().f);
                l();
            }
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // defpackage.ek1
    public final void N() {
        if (this.c.optBoolean("custom_one_point_five_click_enabled", false)) {
            wk1 wk1Var = this.m;
            if (wk1Var.g == null || wk1Var.j == null) {
                return;
            }
            wk1Var.a();
            try {
                wk1Var.g.onUnconfirmedClickCancelled();
            } catch (RemoteException e) {
                is0.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // defpackage.ek1
    public final void a(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        this.u = new Point();
        this.v = new Point();
        if (!this.r) {
            this.o.G0(view);
            this.r = true;
        }
        view.setOnTouchListener(onTouchListener);
        view.setClickable(true);
        view.setOnClickListener(onClickListener);
        q21 q21Var = this.l;
        Objects.requireNonNull(q21Var);
        q21Var.n = new WeakReference<>(this);
        boolean zZzdn = zzbn.zzdn(this.j.g);
        if (map != null) {
            Iterator<Map.Entry<String, WeakReference<View>>> it = map.entrySet().iterator();
            while (it.hasNext()) {
                View view2 = it.next().getValue().get();
                if (view2 != null) {
                    if (zZzdn) {
                        view2.setOnTouchListener(onTouchListener);
                    }
                    view2.setClickable(true);
                    view2.setOnClickListener(onClickListener);
                }
            }
        }
        if (map2 != null) {
            Iterator<Map.Entry<String, WeakReference<View>>> it2 = map2.entrySet().iterator();
            while (it2.hasNext()) {
                View view3 = it2.next().getValue().get();
                if (view3 != null) {
                    if (zZzdn) {
                        view3.setOnTouchListener(onTouchListener);
                    }
                    view3.setClickable(false);
                }
            }
        }
    }

    @Override // defpackage.ek1
    public final void b(Bundle bundle) {
        if (bundle == null) {
            is0.zzdz("Touch event data is null. No touch event is reported.");
            return;
        }
        if (!t("touch_reporting")) {
            is0.zzex("The ad slot cannot handle external touch events. You must be in the allow list to be able to report your touch events.");
            return;
        }
        this.f.b.zza((int) bundle.getFloat("x"), (int) bundle.getFloat("y"), bundle.getInt("duration_ms"));
    }

    @Override // defpackage.ek1
    public final void b0(final u90 u90Var) {
        if (!this.c.optBoolean("custom_one_point_five_click_enabled", false)) {
            is0.zzez("setUnconfirmedClickListener: Your account need to be in the allow list to use this feature.\nContact your account manager for more information.");
            return;
        }
        final wk1 wk1Var = this.m;
        wk1Var.g = u90Var;
        kb0<Object> kb0Var = wk1Var.h;
        if (kb0Var != null) {
            wk1Var.e.d("/unconfirmedClick", kb0Var);
        }
        kb0<Object> kb0Var2 = new kb0(wk1Var, u90Var) { // from class: zk1
            public final wk1 a;
            public final u90 b;

            {
                this.a = wk1Var;
                this.b = u90Var;
            }

            @Override // defpackage.kb0
            public final void a(Object obj, Map map) {
                wk1 wk1Var2 = this.a;
                u90 u90Var2 = this.b;
                try {
                    wk1Var2.j = Long.valueOf(Long.parseLong((String) map.get("timestamp")));
                } catch (NumberFormatException unused) {
                    is0.zzex("Failed to call parse unconfirmedClickTimestamp.");
                }
                wk1Var2.i = (String) map.get("id");
                String str = (String) map.get("asset_id");
                if (u90Var2 == null) {
                    is0.zzdz("Received unconfirmed click but UnconfirmedClickListener is null.");
                    return;
                }
                try {
                    u90Var2.onUnconfirmedClickReceived(str);
                } catch (RemoteException e) {
                    is0.zze("#007 Could not call remote method.", e);
                }
            }
        };
        wk1Var.h = kb0Var2;
        wk1Var.e.a("/unconfirmedClick", kb0Var2);
    }

    @Override // defpackage.ek1
    public final void c(View view) {
        if (!this.c.optBoolean("custom_one_point_five_click_enabled", false)) {
            is0.zzez("setClickConfirmingView: Your account need to be in the allow list to use this feature.\nContact your account manager for more information.");
            return;
        }
        wk1 wk1Var = this.m;
        if (view != null) {
            view.setOnClickListener(wk1Var);
            view.setClickable(true);
            wk1Var.k = new WeakReference<>(view);
        }
    }

    @Override // defpackage.ek1
    public final void d(View view, Map<String, WeakReference<View>> map) {
        this.u = new Point();
        this.v = new Point();
        rf1 rf1Var = this.o;
        synchronized (rf1Var) {
            if (rf1Var.f.containsKey(view)) {
                rf1Var.f.get(view).q.remove(rf1Var);
                rf1Var.f.remove(view);
            }
        }
        this.r = false;
    }

    @Override // defpackage.ek1
    public final void destroy() {
        io1 io1Var = this.d;
        synchronized (io1Var) {
            aw2<xw0> aw2Var = io1Var.l;
            if (aw2Var == null) {
                return;
            }
            no1 no1Var = new no1();
            aw2Var.i(new sv2(aw2Var, no1Var), io1Var.f);
            io1Var.l = null;
        }
    }

    @Override // defpackage.ek1
    public final void e(Bundle bundle) throws JSONException {
        if (bundle == null) {
            is0.zzdz("Click data is null. No click is reported.");
        } else if (!t("click_reporting")) {
            is0.zzex("The ad slot cannot handle external click events. You must be part of the allow list to be able to report your click events.");
        } else {
            Bundle bundle2 = bundle.getBundle("click_signal");
            p(null, null, null, null, null, bundle2 != null ? bundle2.getString("asset_id") : null, null, zzr.zzkv().zza(bundle, (JSONObject) null), false, false);
        }
    }

    @Override // defpackage.ek1
    public final void e0() {
        this.t = true;
    }

    @Override // defpackage.ek1
    public final void f(View view, MotionEvent motionEvent, View view2) {
        this.u = zzbn.zza(motionEvent, view2);
        long jA = this.n.a();
        this.x = jA;
        if (motionEvent.getAction() == 0) {
            this.w = jA;
            this.v = this.u;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        Point point = this.u;
        motionEventObtain.setLocation(point.x, point.y);
        this.f.b.zza(motionEventObtain);
        motionEventObtain.recycle();
    }

    @Override // defpackage.ek1
    public final void g(View view, View view2, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) throws JSONException {
        JSONObject jSONObjectZza = zzbn.zza(this.a, map, map2, view2);
        JSONObject jSONObjectZza2 = zzbn.zza(this.a, view2);
        JSONObject jSONObjectZzt = zzbn.zzt(view2);
        JSONObject jSONObjectZzb = zzbn.zzb(this.a, view2);
        String strS = s(view, map);
        p(((Boolean) os3.j.f.a(y40.O1)).booleanValue() ? view2 : view, jSONObjectZza2, jSONObjectZza, jSONObjectZzt, jSONObjectZzb, strS, zzbn.zza(strS, this.a, this.v, this.u), null, z, false);
    }

    @Override // defpackage.ek1
    public final void h(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) throws JSONException {
        String strZza;
        JSONObject jSONObjectZza = zzbn.zza(this.a, map, map2, view);
        JSONObject jSONObjectZza2 = zzbn.zza(this.a, view);
        JSONObject jSONObjectZzt = zzbn.zzt(view);
        JSONObject jSONObjectZzb = zzbn.zzb(this.a, view);
        if (((Boolean) os3.j.f.a(y40.N1)).booleanValue()) {
            try {
                strZza = this.f.b.zza(this.a, view, (Activity) null);
            } catch (Exception unused) {
                is0.zzex("Exception getting data.");
            }
        } else {
            strZza = null;
        }
        q(jSONObjectZza2, jSONObjectZza, jSONObjectZzt, jSONObjectZzb, strZza, null, zzbn.zza(this.a, this.i));
    }

    @Override // defpackage.ek1
    public final void i() throws JSONException {
        q(null, null, null, null, null, null, false);
    }

    @Override // defpackage.ek1
    public final JSONObject j(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) throws JSONException {
        JSONObject jSONObjectZza = zzbn.zza(this.a, map, map2, view);
        JSONObject jSONObjectZza2 = zzbn.zza(this.a, view);
        JSONObject jSONObjectZzt = zzbn.zzt(view);
        JSONObject jSONObjectZzb = zzbn.zzb(this.a, view);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("asset_view_signal", jSONObjectZza);
            jSONObject.put("ad_view_signal", jSONObjectZza2);
            jSONObject.put("scroll_view_signal", jSONObjectZzt);
            jSONObject.put("lock_screen_signal", jSONObjectZzb);
            return jSONObject;
        } catch (JSONException e) {
            is0.zzc("Unable to create native ad view signals JSON.", e);
            return null;
        }
    }

    @Override // defpackage.ek1
    public final void j0(fu3 fu3Var) {
        this.y = fu3Var;
    }

    @Override // defpackage.ek1
    public final void k(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) throws JSONException {
        if (!this.t) {
            is0.zzdz("Custom click reporting failed. enableCustomClickGesture is not set.");
            return;
        }
        if (!r()) {
            is0.zzdz("Custom click reporting failed. Ad unit id not in the allow list.");
            return;
        }
        JSONObject jSONObjectZza = zzbn.zza(this.a, map, map2, view);
        JSONObject jSONObjectZza2 = zzbn.zza(this.a, view);
        JSONObject jSONObjectZzt = zzbn.zzt(view);
        JSONObject jSONObjectZzb = zzbn.zzb(this.a, view);
        String strS = s(null, map);
        p(view, jSONObjectZza2, jSONObjectZza, jSONObjectZzt, jSONObjectZzb, strS, zzbn.zza(strS, this.a, this.v, this.u), null, z, true);
    }

    @Override // defpackage.ek1
    public final boolean k0() {
        return r();
    }

    @Override // defpackage.ek1
    public final void l() {
        try {
            fu3 fu3Var = this.y;
            if (fu3Var != null) {
                fu3Var.onAdMuted();
            }
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // defpackage.ek1
    public final void m(String str) throws JSONException {
        p(null, null, null, null, null, str, null, null, false, false);
    }

    @Override // defpackage.ek1
    public final void n() throws JSONException {
        bi.f("recordDownloadedImpression must be called on the main UI thread.");
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ad", this.c);
            c50.e2(this.d.e("google.afma.nativeAds.handleDownloadedImpression", jSONObject), "Error during performing handleDownloadedImpression");
        } catch (JSONException e) {
            is0.zzc("", e);
        }
    }

    @Override // defpackage.ek1
    public final boolean o(Bundle bundle) {
        if (t("impression_reporting")) {
            return q(null, null, null, null, null, zzr.zzkv().zza(bundle, (JSONObject) null), false);
        }
        is0.zzex("The ad slot cannot handle external impression events. You must be in the allow list to be able to report your impression events.");
        return false;
    }

    public final void p(View view, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4, String str, JSONObject jSONObject5, JSONObject jSONObject6, boolean z, boolean z2) throws JSONException {
        String strZza;
        bi.f("performClick must be called on the main UI thread.");
        try {
            JSONObject jSONObject7 = new JSONObject();
            jSONObject7.put("ad", this.c);
            jSONObject7.put("asset_view_signal", jSONObject2);
            jSONObject7.put("ad_view_signal", jSONObject);
            jSONObject7.put("click_signal", jSONObject5);
            jSONObject7.put("scroll_view_signal", jSONObject3);
            jSONObject7.put("lock_screen_signal", jSONObject4);
            jSONObject7.put("has_custom_click_handler", this.b.a(this.e.c()) != null);
            jSONObject7.put("provided_signals", jSONObject6);
            JSONObject jSONObject8 = new JSONObject();
            jSONObject8.put("asset_id", str);
            jSONObject8.put("template", this.e.k());
            jSONObject8.put("view_aware_api_used", z);
            zzaei zzaeiVar = this.k.i;
            jSONObject8.put("custom_mute_requested", zzaeiVar != null && zzaeiVar.k);
            jSONObject8.put("custom_mute_enabled", (this.e.g().isEmpty() || this.e.m() == null) ? false : true);
            if (this.m.g != null && this.c.optBoolean("custom_one_point_five_click_enabled", false)) {
                jSONObject8.put("custom_one_point_five_click_eligible", true);
            }
            jSONObject8.put("timestamp", this.n.a());
            if (this.t && r()) {
                jSONObject8.put("custom_click_gesture_eligible", true);
            }
            if (z2) {
                jSONObject8.put("is_custom_click_gesture", true);
            }
            jSONObject8.put("has_custom_click_handler", this.b.a(this.e.c()) != null);
            try {
                JSONObject jSONObjectOptJSONObject = this.c.optJSONObject("tracking_urls_and_actions");
                if (jSONObjectOptJSONObject == null) {
                    jSONObjectOptJSONObject = new JSONObject();
                }
                strZza = this.f.b.zza(this.a, jSONObjectOptJSONObject.optString("click_string"), view);
            } catch (Exception e) {
                is0.zzc("Exception obtaining click signals", e);
                strZza = null;
            }
            jSONObject8.put("click_signals", strZza);
            if (((Boolean) os3.j.f.a(y40.B2)).booleanValue()) {
                jSONObject8.put("open_chrome_custom_tab", true);
            }
            if (((Boolean) os3.j.f.a(y40.c5)).booleanValue() && bi.K()) {
                jSONObject8.put("try_fallback_for_deep_link", true);
            }
            if (((Boolean) os3.j.f.a(y40.d5)).booleanValue() && bi.K()) {
                jSONObject8.put("in_app_link_handling_for_android_11_enabled", true);
            }
            jSONObject7.put("click", jSONObject8);
            JSONObject jSONObject9 = new JSONObject();
            long jA = this.n.a();
            jSONObject9.put("time_from_last_touch_down", jA - this.w);
            jSONObject9.put("time_from_last_touch", jA - this.x);
            jSONObject7.put("touch_signal", jSONObject9);
            c50.e2(this.d.e("google.afma.nativeAds.handleClick", jSONObject7), "Error during performing handleClick");
        } catch (JSONException e2) {
            is0.zzc("Unable to create click JSON.", e2);
        }
    }

    public final boolean q(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4, String str, JSONObject jSONObject5, boolean z) throws JSONException {
        bi.f("recordImpression must be called on the main UI thread.");
        try {
            JSONObject jSONObject6 = new JSONObject();
            jSONObject6.put("ad", this.c);
            jSONObject6.put("asset_view_signal", jSONObject2);
            jSONObject6.put("ad_view_signal", jSONObject);
            jSONObject6.put("scroll_view_signal", jSONObject3);
            jSONObject6.put("lock_screen_signal", jSONObject4);
            jSONObject6.put("provided_signals", jSONObject5);
            if (((Boolean) os3.j.f.a(y40.N1)).booleanValue()) {
                jSONObject6.put("view_signals", str);
            }
            jSONObject6.put("policy_validator_enabled", z);
            jSONObject6.put("screen", zzbn.zzbn(this.a));
            if (((Boolean) os3.j.f.a(y40.Y4)).booleanValue()) {
                this.d.a("/clickRecorded", new si1(this, null));
            } else {
                this.d.a("/logScionEvent", new ti1(this, null));
            }
            this.d.a("/nativeImpression", new vi1(this, null));
            c50.e2(this.d.e("google.afma.nativeAds.handleImpression", jSONObject6), "Error during performing handleImpression");
            boolean z2 = this.q;
            if (z2 || this.i.B == null) {
                return true;
            }
            this.q = z2 | zzr.zzlf().zzb(this.a, this.j.e, this.i.B.toString(), this.k.f);
            return true;
        } catch (JSONException e) {
            is0.zzc("Unable to create impression JSON.", e);
            return false;
        }
    }

    public final boolean r() {
        return this.c.optBoolean("allow_custom_click_gesture", false);
    }

    public final String s(View view, Map<String, WeakReference<View>> map) {
        if (map != null && view != null) {
            for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                if (view.equals(entry.getValue().get())) {
                    return entry.getKey();
                }
            }
        }
        int iK = this.e.k();
        if (iK == 1) {
            return "1099";
        }
        if (iK == 2) {
            return "2099";
        }
        if (iK != 6) {
            return null;
        }
        return "3099";
    }

    public final boolean t(String str) {
        JSONObject jSONObjectOptJSONObject = this.c.optJSONObject("allow_pub_event_reporting");
        return jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.optBoolean(str, false);
    }
}
