package defpackage;

import android.app.Activity;
import android.app.Application;

/* loaded from: classes.dex */
public final class bb3 implements pb3 {
    public final /* synthetic */ Activity a;

    public bb3(Activity activity) {
        this.a = activity;
    }

    @Override // defpackage.pb3
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityStopped(this.a);
    }
}
