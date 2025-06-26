package defpackage;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import org.apache.commons.text.lookup.InetAddressKeys;

/* loaded from: classes.dex */
public final class rz4 implements Application.ActivityLifecycleCallbacks {
    public final /* synthetic */ sz4 e;

    public /* synthetic */ rz4(sz4 sz4Var) {
        this.e = sz4Var;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        rx4 rx4Var;
        Uri data;
        try {
            try {
                this.e.a.a().n.a("onActivityCreated");
                Intent intent = activity.getIntent();
                if (intent == null || (data = intent.getData()) == null || !data.isHierarchical()) {
                    rx4Var = this.e.a;
                } else {
                    this.e.a.t();
                    String stringExtra = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
                    boolean z = true;
                    String str = true != ("android-app://com.google.android.googlequicksearchbox/https/www.google.com".equals(stringExtra) || "https://www.google.com".equals(stringExtra) || "android-app://com.google.appcrawler".equals(stringExtra)) ? "auto" : "gs";
                    String queryParameter = data.getQueryParameter("referrer");
                    if (bundle != null) {
                        z = false;
                    }
                    this.e.a.m().q(new qz4(this, z, data, str, queryParameter));
                    rx4Var = this.e.a;
                }
            } catch (Exception e) {
                this.e.a.a().f.b("Throwable caught in onActivityCreated", e);
                rx4Var = this.e.a;
            }
            rx4Var.y().t(activity, bundle);
        } catch (Throwable th) {
            this.e.a.y().t(activity, bundle);
            throw th;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        h05 h05VarY = this.e.a.y();
        synchronized (h05VarY.l) {
            if (activity == h05VarY.g) {
                h05VarY.g = null;
            }
        }
        if (h05VarY.a.g.x()) {
            h05VarY.f.remove(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) throws IllegalStateException {
        h05 h05VarY = this.e.a.y();
        if (h05VarY.a.g.s(null, ew4.u0)) {
            synchronized (h05VarY.l) {
                h05VarY.k = false;
                h05VarY.h = true;
            }
        }
        long jB = h05VarY.a.n.b();
        if (!h05VarY.a.g.s(null, ew4.t0) || h05VarY.a.g.x()) {
            a05 a05VarN = h05VarY.n(activity);
            h05VarY.d = h05VarY.c;
            h05VarY.c = null;
            h05VarY.a.m().q(new f05(h05VarY, a05VarN, jB));
        } else {
            h05VarY.c = null;
            h05VarY.a.m().q(new e05(h05VarY, jB));
        }
        x15 x15VarR = this.e.a.r();
        x15VarR.a.m().q(new p15(x15VarR, x15VarR.a.n.b()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) throws IllegalStateException {
        x15 x15VarR = this.e.a.r();
        x15VarR.a.m().q(new o15(x15VarR, x15VarR.a.n.b()));
        h05 h05VarY = this.e.a.y();
        if (h05VarY.a.g.s(null, ew4.u0)) {
            synchronized (h05VarY.l) {
                h05VarY.k = true;
                if (activity != h05VarY.g) {
                    synchronized (h05VarY.l) {
                        h05VarY.g = activity;
                        h05VarY.h = false;
                    }
                    if (h05VarY.a.g.s(null, ew4.t0) && h05VarY.a.g.x()) {
                        h05VarY.i = null;
                        h05VarY.a.m().q(new g05(h05VarY));
                    }
                }
            }
        }
        if (h05VarY.a.g.s(null, ew4.t0) && !h05VarY.a.g.x()) {
            h05VarY.c = h05VarY.i;
            h05VarY.a.m().q(new d05(h05VarY));
        } else {
            h05VarY.i(activity, h05VarY.n(activity), false);
            xu4 xu4VarC = h05VarY.a.c();
            xu4VarC.a.m().q(new wt4(xu4VarC, xu4VarC.a.n.b()));
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        a05 a05Var;
        h05 h05VarY = this.e.a.y();
        if (!h05VarY.a.g.x() || bundle == null || (a05Var = h05VarY.f.get(activity)) == null) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putLong("id", a05Var.c);
        bundle2.putString(InetAddressKeys.KEY_NAME, a05Var.a);
        bundle2.putString("referrer_name", a05Var.b);
        bundle.putBundle("com.google.app_measurement.screen_service", bundle2);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
