package defpackage;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class xy implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2 {
    public static final xy i = new xy();
    public final AtomicBoolean e = new AtomicBoolean();
    public final AtomicBoolean f = new AtomicBoolean();
    public final ArrayList<a> g = new ArrayList<>();
    public boolean h = false;

    public interface a {
        void a(boolean z);
    }

    public static void a(Application application) {
        xy xyVar = i;
        synchronized (xyVar) {
            if (!xyVar.h) {
                application.registerActivityLifecycleCallbacks(xyVar);
                application.registerComponentCallbacks(xyVar);
                xyVar.h = true;
            }
        }
    }

    public final void b(boolean z) {
        synchronized (i) {
            ArrayList<a> arrayList = this.g;
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                a aVar = arrayList.get(i2);
                i2++;
                aVar.a(z);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        boolean zCompareAndSet = this.e.compareAndSet(true, false);
        this.f.set(true);
        if (zCompareAndSet) {
            b(false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        boolean zCompareAndSet = this.e.compareAndSet(true, false);
        this.f.set(true);
        if (zCompareAndSet) {
            b(false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i2) {
        if (i2 == 20 && this.e.compareAndSet(false, true)) {
            this.f.set(true);
            b(true);
        }
    }
}
