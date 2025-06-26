package defpackage;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class jm3 implements Application.ActivityLifecycleCallbacks {
    public final Application e;
    public final WeakReference<Application.ActivityLifecycleCallbacks> f;
    public boolean g = false;

    public jm3(Application application, Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        this.f = new WeakReference<>(activityLifecycleCallbacks);
        this.e = application;
    }

    public final void a(rm3 rm3Var) {
        try {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = this.f.get();
            if (activityLifecycleCallbacks != null) {
                rm3Var.a(activityLifecycleCallbacks);
            } else {
                if (this.g) {
                    return;
                }
                this.e.unregisterActivityLifecycleCallbacks(this);
                this.g = true;
            }
        } catch (Exception e) {
            is0.zzc("Error while dispatching lifecycle callback.", e);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        a(new mm3(activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        a(new sm3(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        a(new nm3(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        a(new om3(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        a(new pm3(activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        a(new lm3(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        a(new qm3(activity));
    }
}
