package defpackage;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import android.util.Pair;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Random;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class q34 {
    public static volatile q34 j;
    public static Boolean k;
    public final String a;
    public final b20 b;
    public final ExecutorService c;
    public final xr4 d;
    public final List<Pair<ry4, h34>> e;
    public int f;
    public boolean g;
    public final String h;
    public volatile yf4 i;

    public q34(Context context, String str, String str2, String str3, Bundle bundle) throws ClassNotFoundException {
        boolean z;
        if (str == null || !f(str2, str3)) {
            this.a = "FA";
        } else {
            this.a = str;
        }
        this.b = d20.a;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new a34());
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        this.c = Executors.unconfigurableExecutorService(threadPoolExecutor);
        this.d = new xr4(this);
        this.e = new ArrayList();
        try {
            if (zz4.b(context, "google_app_id", c50.I1(context)) != null) {
                try {
                    Class.forName("com.google.firebase.analytics.FirebaseAnalytics");
                    z = true;
                } catch (ClassNotFoundException unused) {
                    z = false;
                }
                if (!z) {
                    this.h = null;
                    this.g = true;
                    Log.w(this.a, "Disabling data collection. Found google_app_id in strings.xml but Google Analytics for Firebase is missing. Remove this value or add Google Analytics for Firebase to resume data collection.");
                    return;
                }
            }
        } catch (IllegalStateException unused2) {
        }
        if (f(str2, str3)) {
            this.h = str2;
        } else {
            this.h = "fa";
            if (str2 == null || str3 == null) {
                if ((str2 == null) ^ (str3 == null)) {
                    Log.w(this.a, "Specified origin or custom app id is null. Both parameters will be ignored.");
                }
            } else {
                Log.v(this.a, "Deferring to Google Analytics for Firebase for event data collection. https://goo.gl/J1sWQy");
            }
        }
        this.c.execute(new p24(this, str2, str3, context, bundle));
        Application application = (Application) context.getApplicationContext();
        if (application == null) {
            Log.w(this.a, "Unable to register lifecycle notifications. Application null.");
        } else {
            application.registerActivityLifecycleCallbacks(new p34(this));
        }
    }

    public static /* synthetic */ void d(Context context) {
        Bundle bundle;
        synchronized (q34.class) {
            try {
            } catch (Exception e) {
                Log.e("FA", "Exception reading flag from SharedPreferences.", e);
                k = Boolean.TRUE;
            }
            if (k != null) {
                return;
            }
            bi.g("app_measurement_internal_disable_startup_flags");
            try {
                ApplicationInfo applicationInfoA = i20.a(context).a(context.getPackageName(), 128);
                if (applicationInfoA != null && (bundle = applicationInfoA.metaData) != null) {
                    if (bundle.getBoolean("app_measurement_internal_disable_startup_flags")) {
                        k = Boolean.TRUE;
                        return;
                    }
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
            SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
            k = Boolean.valueOf(sharedPreferences.getBoolean("allow_remote_dynamite", true));
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.remove("allow_remote_dynamite");
            editorEdit.apply();
        }
    }

    public static final boolean f(String str, String str2) throws ClassNotFoundException {
        boolean z;
        if (str2 != null && str != null) {
            try {
                Class.forName("com.google.firebase.analytics.FirebaseAnalytics");
                z = true;
            } catch (ClassNotFoundException unused) {
                z = false;
            }
            if (!z) {
                return true;
            }
        }
        return false;
    }

    public static q34 g(Context context, String str, String str2, String str3, Bundle bundle) {
        Objects.requireNonNull(context, "null reference");
        if (j == null) {
            synchronized (q34.class) {
                if (j == null) {
                    j = new q34(context, str, str2, str3, bundle);
                }
            }
        }
        return j;
    }

    public final Map<String, Object> a(String str, String str2, boolean z) {
        dd4 dd4Var = new dd4();
        this.c.execute(new x24(this, str, str2, z, dd4Var));
        Bundle bundleL0 = dd4Var.l0(5000L);
        if (bundleL0 == null || bundleL0.size() == 0) {
            return Collections.emptyMap();
        }
        HashMap map = new HashMap(bundleL0.size());
        for (String str3 : bundleL0.keySet()) {
            Object obj = bundleL0.get(str3);
            if ((obj instanceof Double) || (obj instanceof Long) || (obj instanceof String)) {
                map.put(str3, obj);
            }
        }
        return map;
    }

    public final Bundle b(Bundle bundle, boolean z) {
        dd4 dd4Var = new dd4();
        this.c.execute(new z24(this, bundle, dd4Var));
        if (z) {
            return dd4Var.l0(5000L);
        }
        return null;
    }

    public final int c(String str) {
        dd4 dd4Var = new dd4();
        this.c.execute(new b34(this, str, dd4Var));
        Integer num = (Integer) dd4.b2(dd4Var.l0(10000L), Integer.class);
        if (num == null) {
            return 25;
        }
        return num.intValue();
    }

    public final void e(Exception exc, boolean z, boolean z2) {
        this.g |= z;
        if (z) {
            Log.w(this.a, "Data collection startup failed. No data will be collected.", exc);
            return;
        }
        if (z2) {
            this.c.execute(new y24(this, "Error with data collection. Data lost.", exc));
        }
        Log.w(this.a, "Error with data collection. Data lost.", exc);
    }

    public final void h(String str, String str2, Bundle bundle) {
        this.c.execute(new e34(this, null, str, str2, bundle, true, true));
    }

    public final void i(String str, String str2, Object obj, boolean z) {
        this.c.execute(new f34(this, str, str2, obj, z));
    }

    public final List<Bundle> j(String str, String str2) {
        dd4 dd4Var = new dd4();
        this.c.execute(new m24(this, str, str2, dd4Var));
        List<Bundle> list = (List) dd4.b2(dd4Var.l0(5000L), List.class);
        return list == null ? Collections.emptyList() : list;
    }

    public final long k() {
        dd4 dd4Var = new dd4();
        this.c.execute(new u24(this, dd4Var));
        Long l = (Long) dd4.b2(dd4Var.l0(500L), Long.class);
        if (l != null) {
            return l.longValue();
        }
        long jNextLong = new Random(System.nanoTime() ^ this.b.a()).nextLong();
        int i = this.f + 1;
        this.f = i;
        return jNextLong + i;
    }
}
