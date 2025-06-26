package defpackage;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;

/* loaded from: classes.dex */
public final class ka3 implements pb3 {
    public final /* synthetic */ Activity a;
    public final /* synthetic */ Bundle b;

    public ka3(Activity activity, Bundle bundle) {
        this.a = activity;
        this.b = bundle;
    }

    @Override // defpackage.pb3
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivitySaveInstanceState(this.a, this.b);
    }
}
