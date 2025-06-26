package defpackage;

import android.app.Activity;
import android.os.Bundle;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.commons.text.lookup.InetAddressKeys;

/* loaded from: classes.dex */
public final class h05 extends ww4 {
    public volatile a05 c;
    public a05 d;
    public a05 e;
    public final Map<Activity, a05> f;
    public Activity g;
    public volatile boolean h;
    public volatile a05 i;
    public a05 j;
    public boolean k;
    public final Object l;
    public String m;

    public h05(rx4 rx4Var) {
        super(rx4Var);
        this.l = new Object();
        this.f = new ConcurrentHashMap();
    }

    public static void r(a05 a05Var, Bundle bundle, boolean z) {
        if (a05Var != null) {
            if (!bundle.containsKey("_sc") || z) {
                String str = a05Var.a;
                if (str != null) {
                    bundle.putString("_sn", str);
                } else {
                    bundle.remove("_sn");
                }
                String str2 = a05Var.b;
                if (str2 != null) {
                    bundle.putString("_sc", str2);
                } else {
                    bundle.remove("_sc");
                }
                bundle.putLong("_si", a05Var.c);
                return;
            }
            z = false;
        }
        if (a05Var == null && z) {
            bundle.remove("_sn");
            bundle.remove("_sc");
            bundle.remove("_si");
        }
    }

    @Override // defpackage.ww4
    public final boolean h() {
        return false;
    }

    public final void i(Activity activity, a05 a05Var, boolean z) throws IllegalStateException {
        a05 a05Var2;
        a05 a05Var3 = this.c == null ? this.d : this.c;
        if (a05Var.b == null) {
            a05Var2 = new a05(a05Var.a, activity != null ? q(activity.getClass(), "Activity") : null, a05Var.c, a05Var.e, a05Var.f);
        } else {
            a05Var2 = a05Var;
        }
        this.d = this.c;
        this.c = a05Var2;
        this.a.m().q(new c05(this, a05Var2, a05Var3, this.a.n.b(), z));
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x010d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void k(defpackage.a05 r19, defpackage.a05 r20, long r21, boolean r23, android.os.Bundle r24) throws java.lang.IllegalStateException {
        /*
            Method dump skipped, instructions count: 337
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.h05.k(a05, a05, long, boolean, android.os.Bundle):void");
    }

    public final void l(a05 a05Var, boolean z, long j) {
        this.a.c().h(this.a.n.b());
        if (!this.a.r().e.a(a05Var != null && a05Var.d, z, j) || a05Var == null) {
            return;
        }
        a05Var.d = false;
    }

    public final a05 n(Activity activity) {
        Objects.requireNonNull(activity, "null reference");
        a05 a05Var = this.f.get(activity);
        if (a05Var == null) {
            a05 a05Var2 = new a05(null, q(activity.getClass(), "Activity"), this.a.t().c0());
            this.f.put(activity, a05Var2);
            a05Var = a05Var2;
        }
        return (this.a.g.s(null, ew4.u0) && this.i != null) ? this.i : a05Var;
    }

    public final a05 p(boolean z) {
        f();
        d();
        if (!this.a.g.s(null, ew4.u0) || !z) {
            return this.e;
        }
        a05 a05Var = this.e;
        return a05Var != null ? a05Var : this.j;
    }

    public final String q(Class<?> cls, String str) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            return "Activity";
        }
        String[] strArrSplit = canonicalName.split("\\.");
        int length = strArrSplit.length;
        String str2 = length > 0 ? strArrSplit[length - 1] : "";
        int length2 = str2.length();
        cs4 cs4Var = this.a.g;
        return length2 > 100 ? str2.substring(0, 100) : str2;
    }

    public final void s(String str, a05 a05Var) {
        d();
        synchronized (this) {
            String str2 = this.m;
            if (str2 == null || str2.equals(str)) {
                this.m = str;
            }
        }
    }

    public final void t(Activity activity, Bundle bundle) {
        Bundle bundle2;
        if (!this.a.g.x() || bundle == null || (bundle2 = bundle.getBundle("com.google.app_measurement.screen_service")) == null) {
            return;
        }
        this.f.put(activity, new a05(bundle2.getString(InetAddressKeys.KEY_NAME), bundle2.getString("referrer_name"), bundle2.getLong("id")));
    }
}
