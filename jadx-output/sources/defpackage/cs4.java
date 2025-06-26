package defpackage;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import java.lang.reflect.InvocationTargetException;
import java.util.Objects;

/* loaded from: classes.dex */
public final class cs4 extends ly4 {
    public Boolean b;
    public bs4 c;
    public Boolean d;

    public cs4(rx4 rx4Var) {
        super(rx4Var);
        this.c = as4.a;
    }

    public static final long B() {
        return ew4.d.a(null).longValue();
    }

    public static final long f() {
        return ew4.D.a(null).longValue();
    }

    public final boolean A() {
        if (this.b == null) {
            Boolean boolU = u("app_measurement_lite");
            this.b = boolU;
            if (boolU == null) {
                this.b = Boolean.FALSE;
            }
        }
        return this.b.booleanValue() || !this.a.e;
    }

    public final String g(String str, String str2) {
        try {
            String str3 = (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, "");
            Objects.requireNonNull(str3, "null reference");
            return str3;
        } catch (ClassNotFoundException e) {
            this.a.a().f.b("Could not find SystemProperties class", e);
            return "";
        } catch (IllegalAccessException e2) {
            this.a.a().f.b("Could not access SystemProperties.get()", e2);
            return "";
        } catch (NoSuchMethodException e3) {
            this.a.a().f.b("Could not find SystemProperties.get() method", e3);
            return "";
        } catch (InvocationTargetException e4) {
            this.a.a().f.b("SystemProperties.get() threw an exception", e4);
            return "";
        }
    }

    public final int h() {
        mc4.b();
        if (!this.a.g.s(null, ew4.w0)) {
            return 25;
        }
        p25 p25VarT = this.a.t();
        Boolean bool = p25VarT.a.z().e;
        if (p25VarT.M() < 201500) {
            return (bool == null || bool.booleanValue()) ? 25 : 100;
        }
        return 100;
    }

    public final int i(String str) {
        return Math.max(Math.min(p(str, ew4.I), 100), 25);
    }

    public final int k(String str) {
        mc4.b();
        if (s(null, ew4.v0)) {
            return Math.max(Math.min(p(str, ew4.H), 2000), 500);
        }
        return 500;
    }

    public final long l() {
        c35 c35Var = this.a.f;
        return 37000L;
    }

    public final long n(String str, dw4<Long> dw4Var) {
        if (str == null) {
            return dw4Var.a(null).longValue();
        }
        String strB = this.c.b(str, dw4Var.a);
        if (TextUtils.isEmpty(strB)) {
            return dw4Var.a(null).longValue();
        }
        try {
            return dw4Var.a(Long.valueOf(Long.parseLong(strB))).longValue();
        } catch (NumberFormatException unused) {
            return dw4Var.a(null).longValue();
        }
    }

    public final int p(String str, dw4<Integer> dw4Var) {
        if (str == null) {
            return dw4Var.a(null).intValue();
        }
        String strB = this.c.b(str, dw4Var.a);
        if (TextUtils.isEmpty(strB)) {
            return dw4Var.a(null).intValue();
        }
        try {
            return dw4Var.a(Integer.valueOf(Integer.parseInt(strB))).intValue();
        } catch (NumberFormatException unused) {
            return dw4Var.a(null).intValue();
        }
    }

    public final int q(String str, dw4<Integer> dw4Var, int i, int i2) {
        return Math.max(Math.min(p(str, dw4Var), i2), i);
    }

    public final double r(String str, dw4<Double> dw4Var) {
        if (str == null) {
            return dw4Var.a(null).doubleValue();
        }
        String strB = this.c.b(str, dw4Var.a);
        if (TextUtils.isEmpty(strB)) {
            return dw4Var.a(null).doubleValue();
        }
        try {
            return dw4Var.a(Double.valueOf(Double.parseDouble(strB))).doubleValue();
        } catch (NumberFormatException unused) {
            return dw4Var.a(null).doubleValue();
        }
    }

    public final boolean s(String str, dw4<Boolean> dw4Var) {
        if (str == null) {
            return dw4Var.a(null).booleanValue();
        }
        String strB = this.c.b(str, dw4Var.a);
        return TextUtils.isEmpty(strB) ? dw4Var.a(null).booleanValue() : dw4Var.a(Boolean.valueOf(Boolean.parseBoolean(strB))).booleanValue();
    }

    public final Bundle t() {
        try {
            if (this.a.a.getPackageManager() == null) {
                this.a.a().f.a("Failed to load metadata: PackageManager is null");
                return null;
            }
            ApplicationInfo applicationInfoA = i20.a(this.a.a).a(this.a.a.getPackageName(), 128);
            if (applicationInfoA != null) {
                return applicationInfoA.metaData;
            }
            this.a.a().f.a("Failed to load metadata: ApplicationInfo is null");
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            this.a.a().f.b("Failed to load metadata: Package name not found", e);
            return null;
        }
    }

    public final Boolean u(String str) {
        bi.g(str);
        Bundle bundleT = t();
        if (bundleT == null) {
            this.a.a().f.a("Failed to load metadata: Metadata bundle is null");
            return null;
        }
        if (bundleT.containsKey(str)) {
            return Boolean.valueOf(bundleT.getBoolean(str));
        }
        return null;
    }

    public final boolean v() {
        c35 c35Var = this.a.f;
        Boolean boolU = u("firebase_analytics_collection_deactivated");
        return boolU != null && boolU.booleanValue();
    }

    public final boolean w() {
        Boolean boolU = u("google_analytics_adid_collection_enabled");
        return boolU == null || boolU.booleanValue();
    }

    public final boolean x() {
        Boolean boolU;
        ne4.f.a().a();
        return !s(null, ew4.t0) || (boolU = u("google_analytics_automatic_screen_reporting_enabled")) == null || boolU.booleanValue();
    }

    public final boolean y(String str) {
        return "1".equals(this.c.b(str, "gaia_collection_enabled"));
    }

    public final boolean z(String str) {
        return "1".equals(this.c.b(str, "measurement.event_sampling_enabled"));
    }
}
