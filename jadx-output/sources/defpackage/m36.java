package defpackage;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.os.Handler;

/* loaded from: classes.dex */
public class m36 implements Application.ActivityLifecycleCallbacks {
    public Runnable h;
    public final Handler e = new Handler();
    public boolean f = false;
    public boolean g = true;
    public final fj7<String> i = new fj7<>();

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        this.g = true;
        Runnable runnable = this.h;
        if (runnable != null) {
            this.e.removeCallbacks(runnable);
        }
        Handler handler = this.e;
        Runnable runnable2 = new Runnable(this) { // from class: l36
            public final m36 e;

            {
                this.e = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                m36 m36Var = this.e;
                boolean z = m36Var.f;
                m36Var.f = !(z && m36Var.g) && z;
            }
        };
        this.h = runnable2;
        handler.postDelayed(runnable2, 1000L);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        this.g = false;
        boolean z = !this.f;
        this.f = true;
        Runnable runnable = this.h;
        if (runnable != null) {
            this.e.removeCallbacks(runnable);
        }
        if (z) {
            n56.u1("went foreground");
            this.i.d("ON_FOREGROUND");
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }
}
