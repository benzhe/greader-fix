package defpackage;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class ym3 implements Application.ActivityLifecycleCallbacks {
    public Activity e;
    public Context f;
    public Runnable l;
    public long n;
    public final Object g = new Object();
    public boolean h = true;
    public boolean i = false;
    public final List<an3> j = new ArrayList();
    public final List<ln3> k = new ArrayList();
    public boolean m = false;

    public final void a(Activity activity) {
        synchronized (this.g) {
            if (!activity.getClass().getName().startsWith(MobileAds.ERROR_DOMAIN)) {
                this.e = activity;
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        synchronized (this.g) {
            Activity activity2 = this.e;
            if (activity2 == null) {
                return;
            }
            if (activity2.equals(activity)) {
                this.e = null;
            }
            Iterator<ln3> it = this.k.iterator();
            while (it.hasNext()) {
                try {
                    if (it.next().a(activity)) {
                        it.remove();
                    }
                } catch (Exception e) {
                    or0 or0VarZzkz = zzr.zzkz();
                    xl0.d(or0VarZzkz.e, or0VarZzkz.f).a(e, "AppActivityTracker.ActivityListener.onActivityDestroyed");
                    is0.zzc("", e);
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        a(activity);
        synchronized (this.g) {
            Iterator<ln3> it = this.k.iterator();
            while (it.hasNext()) {
                try {
                    it.next().onActivityPaused(activity);
                } catch (Exception e) {
                    or0 or0VarZzkz = zzr.zzkz();
                    xl0.d(or0VarZzkz.e, or0VarZzkz.f).a(e, "AppActivityTracker.ActivityListener.onActivityPaused");
                    is0.zzc("", e);
                }
            }
        }
        this.i = true;
        Runnable runnable = this.l;
        if (runnable != null) {
            zzj.zzegq.removeCallbacks(runnable);
        }
        ms2 ms2Var = zzj.zzegq;
        xm3 xm3Var = new xm3(this);
        this.l = xm3Var;
        ms2Var.postDelayed(xm3Var, this.n);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        a(activity);
        this.i = false;
        boolean z = !this.h;
        this.h = true;
        Runnable runnable = this.l;
        if (runnable != null) {
            zzj.zzegq.removeCallbacks(runnable);
        }
        synchronized (this.g) {
            Iterator<ln3> it = this.k.iterator();
            while (it.hasNext()) {
                try {
                    it.next().onActivityResumed(activity);
                } catch (Exception e) {
                    or0 or0VarZzkz = zzr.zzkz();
                    xl0.d(or0VarZzkz.e, or0VarZzkz.f).a(e, "AppActivityTracker.ActivityListener.onActivityResumed");
                    is0.zzc("", e);
                }
            }
            if (z) {
                Iterator<an3> it2 = this.j.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().a(true);
                    } catch (Exception e2) {
                        is0.zzc("", e2);
                    }
                }
            } else {
                is0.zzdz("App is still foreground.");
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        a(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
