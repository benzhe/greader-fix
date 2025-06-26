package defpackage;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.google.firebase.inappmessaging.FirebaseInAppMessagingDisplay;

/* loaded from: classes.dex */
public class e06 implements FirebaseInAppMessagingDisplay, Application.ActivityLifecycleCallbacks {
    @Override // com.google.firebase.inappmessaging.FirebaseInAppMessagingDisplay
    public void displayMessage(j96 j96Var, uy5 uy5Var) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        StringBuilder sbZ = jo.z("Created activity: ");
        sbZ.append(activity.getClass().getName());
        c50.s0(sbZ.toString());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        StringBuilder sbZ = jo.z("Destroyed activity: ");
        sbZ.append(activity.getClass().getName());
        c50.s0(sbZ.toString());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        StringBuilder sbZ = jo.z("Pausing activity: ");
        sbZ.append(activity.getClass().getName());
        c50.s0(sbZ.toString());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        StringBuilder sbZ = jo.z("Resumed activity: ");
        sbZ.append(activity.getClass().getName());
        c50.s0(sbZ.toString());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        StringBuilder sbZ = jo.z("SavedInstance activity: ");
        sbZ.append(activity.getClass().getName());
        c50.s0(sbZ.toString());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        StringBuilder sbZ = jo.z("Started activity: ");
        sbZ.append(activity.getClass().getName());
        c50.s0(sbZ.toString());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        StringBuilder sbZ = jo.z("Stopped activity: ");
        sbZ.append(activity.getClass().getName());
        c50.s0(sbZ.toString());
    }
}
