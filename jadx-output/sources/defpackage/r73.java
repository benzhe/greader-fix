package defpackage;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;

/* loaded from: classes.dex */
public final class r73 implements pb3 {
    public final /* synthetic */ Activity a;
    public final /* synthetic */ Bundle b;

    public r73(Activity activity, Bundle bundle) {
        this.a = activity;
        this.b = bundle;
    }

    @Override // defpackage.pb3
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityCreated(this.a, this.b);
    }
}
