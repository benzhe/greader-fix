package defpackage;

import android.app.Activity;
import android.app.Application;

/* loaded from: classes.dex */
public final class lm3 implements rm3 {
    public final /* synthetic */ Activity a;

    public lm3(Activity activity) {
        this.a = activity;
    }

    @Override // defpackage.rm3
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityStarted(this.a);
    }
}
