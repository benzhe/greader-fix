package defpackage;

import android.app.Activity;
import android.app.Application;

/* loaded from: classes.dex */
public final class r63 implements pb3 {
    public final /* synthetic */ Activity a;

    public r63(Activity activity) {
        this.a = activity;
    }

    @Override // defpackage.pb3
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityStarted(this.a);
    }
}
