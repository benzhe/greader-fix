package defpackage;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.util.Log;
import java.util.Objects;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class gh5 {
    public final fl5 a = new fl5();
    public final pe5 b;
    public final Context c;
    public PackageManager d;
    public String e;
    public PackageInfo f;
    public String g;
    public String h;
    public String i;
    public String j;
    public String k;
    public gj5 l;
    public bj5 m;

    public gh5(pe5 pe5Var, Context context, gj5 gj5Var, bj5 bj5Var) {
        this.b = pe5Var;
        this.c = context;
        this.l = gj5Var;
        this.m = bj5Var;
    }

    public static void a(gh5 gh5Var, pm5 pm5Var, String str, jm5 jm5Var, Executor executor, boolean z) throws Throwable {
        Objects.requireNonNull(gh5Var);
        im5 im5Var = im5.SKIP_CACHE_LOOKUP;
        if ("new".equals(pm5Var.a)) {
            if (new wm5(gh5Var.c(), pm5Var.b, gh5Var.a, "17.3.0").d(gh5Var.b(pm5Var.e, str), z)) {
                jm5Var.d(im5Var, executor);
                return;
            } else {
                if (ah5.a.a(6)) {
                    Log.e("FirebaseCrashlytics", "Failed to create app with Crashlytics service.", null);
                    return;
                }
                return;
            }
        }
        if ("configured".equals(pm5Var.a)) {
            jm5Var.d(im5Var, executor);
        } else if (pm5Var.f) {
            ah5.a.b("Server says an update is required - forcing a full App update.");
            new zm5(gh5Var.c(), pm5Var.b, gh5Var.a, "17.3.0").d(gh5Var.b(pm5Var.e, str), z);
        }
    }

    public final om5 b(String str, String str2) {
        return new om5(str, str2, this.l.c, this.h, this.g, vh5.e(vh5.k(this.c), str2, this.h, this.g), this.j, dj5.i(this.i).e, this.k, "0");
    }

    public String c() throws Resources.NotFoundException {
        Context context = this.c;
        int iM = vh5.m(context, "com.crashlytics.ApiEndpoint", "string");
        return iM > 0 ? context.getString(iM) : "";
    }
}
