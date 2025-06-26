package defpackage;

import android.app.Activity;
import android.app.Application;

/* loaded from: classes.dex */
public final class sm3 implements rm3 {
    public final /* synthetic */ Activity a;

    public sm3(Activity activity) {
        this.a = activity;
    }

    @Override // defpackage.rm3
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityDestroyed(this.a);
    }
}
