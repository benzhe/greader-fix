package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.view.View;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class wj1 {
    public int a;
    public su3 b;
    public m70 c;
    public View d;
    public List<?> e;
    public lv3 g;
    public Bundle h;
    public xw0 i;
    public xw0 j;
    public x20 k;
    public View l;
    public x20 m;
    public double n;
    public u70 o;
    public u70 p;
    public String q;
    public float t;
    public String u;
    public m4<String, h70> r = new m4<>();
    public m4<String, String> s = new m4<>();
    public List<lv3> f = Collections.emptyList();

    public static tj1 i(su3 su3Var, bh0 bh0Var) {
        if (su3Var == null) {
            return null;
        }
        return new tj1(su3Var, bh0Var);
    }

    public static wj1 j(su3 su3Var, m70 m70Var, View view, String str, List list, String str2, Bundle bundle, String str3, View view2, x20 x20Var, String str4, String str5, double d, u70 u70Var, String str6, float f) {
        wj1 wj1Var = new wj1();
        wj1Var.a = 6;
        wj1Var.b = su3Var;
        wj1Var.c = m70Var;
        wj1Var.d = view;
        wj1Var.u("headline", str);
        wj1Var.e = list;
        wj1Var.u("body", str2);
        wj1Var.h = bundle;
        wj1Var.u("call_to_action", str3);
        wj1Var.l = view2;
        wj1Var.m = x20Var;
        wj1Var.u("store", str4);
        wj1Var.u("price", str5);
        wj1Var.n = d;
        wj1Var.o = u70Var;
        wj1Var.u("advertiser", str6);
        synchronized (wj1Var) {
            wj1Var.t = f;
        }
        return wj1Var;
    }

    public static <T> T r(x20 x20Var) {
        if (x20Var == null) {
            return null;
        }
        return (T) y20.l0(x20Var);
    }

    public static wj1 s(bh0 bh0Var) {
        try {
            return j(i(bh0Var.getVideoController(), bh0Var), bh0Var.f(), (View) r(bh0Var.C()), bh0Var.d(), bh0Var.i(), bh0Var.g(), bh0Var.getExtras(), bh0Var.e(), (View) r(bh0Var.z()), bh0Var.o(), bh0Var.s(), bh0Var.k(), bh0Var.q(), bh0Var.p(), bh0Var.r(), bh0Var.V0());
        } catch (RemoteException e) {
            is0.zzd("Failed to get native ad assets from unified ad mapper", e);
            return null;
        }
    }

    public final synchronized String a() {
        return t("body");
    }

    public final synchronized String b() {
        return t("call_to_action");
    }

    public final synchronized String c() {
        return this.q;
    }

    public final synchronized Bundle d() {
        if (this.h == null) {
            this.h = new Bundle();
        }
        return this.h;
    }

    public final synchronized String e() {
        return t("headline");
    }

    public final synchronized List<?> f() {
        return this.e;
    }

    public final synchronized List<lv3> g() {
        return this.f;
    }

    public final synchronized su3 h() {
        return this.b;
    }

    public final synchronized int k() {
        return this.a;
    }

    public final u70 l() {
        List<?> list = this.e;
        if (list != null && list.size() != 0) {
            Object obj = this.e.get(0);
            if (obj instanceof IBinder) {
                return h70.W6((IBinder) obj);
            }
        }
        return null;
    }

    public final synchronized lv3 m() {
        return this.g;
    }

    public final synchronized View n() {
        return this.l;
    }

    public final synchronized xw0 o() {
        return this.i;
    }

    public final synchronized xw0 p() {
        return this.j;
    }

    public final synchronized x20 q() {
        return this.k;
    }

    public final synchronized String t(String str) {
        return this.s.getOrDefault(str, null);
    }

    public final synchronized void u(String str, String str2) {
        if (str2 == null) {
            this.s.remove(str);
        } else {
            this.s.put(str, str2);
        }
    }

    public final synchronized m70 v() {
        return this.c;
    }

    public final synchronized x20 w() {
        return this.m;
    }
}
