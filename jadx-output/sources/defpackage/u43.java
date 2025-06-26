package defpackage;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class u43 implements Application.ActivityLifecycleCallbacks {
    public final Application e;
    public final WeakReference<Application.ActivityLifecycleCallbacks> f;
    public boolean g = false;

    public u43(Application application, Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        this.f = new WeakReference<>(activityLifecycleCallbacks);
        this.e = application;
    }

    public final void a(pb3 pb3Var) {
        try {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = this.f.get();
            if (activityLifecycleCallbacks != null) {
                pb3Var.a(activityLifecycleCallbacks);
            } else {
                if (this.g) {
                    return;
                }
                this.e.unregisterActivityLifecycleCallbacks(this);
                this.g = true;
            }
        } catch (Exception unused) {
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        a(new r73(activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        a(new qb3(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        a(new o83(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        a(new k93(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        a(new ka3(activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        a(new r63(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        a(new bb3(activity));
    }
}
