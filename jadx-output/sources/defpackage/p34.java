package defpackage;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;

/* loaded from: classes.dex */
public final class p34 implements Application.ActivityLifecycleCallbacks {
    public final /* synthetic */ q34 e;

    public p34(q34 q34Var) {
        this.e = q34Var;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        q34 q34Var = this.e;
        q34Var.c.execute(new i34(this, bundle, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        q34 q34Var = this.e;
        q34Var.c.execute(new o34(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        q34 q34Var = this.e;
        q34Var.c.execute(new l34(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        q34 q34Var = this.e;
        q34Var.c.execute(new k34(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        dd4 dd4Var = new dd4();
        q34 q34Var = this.e;
        q34Var.c.execute(new n34(this, activity, dd4Var));
        Bundle bundleL0 = dd4Var.l0(50L);
        if (bundleL0 != null) {
            bundle.putAll(bundleL0);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        q34 q34Var = this.e;
        q34Var.c.execute(new j34(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        q34 q34Var = this.e;
        q34Var.c.execute(new m34(this, activity));
    }
}
