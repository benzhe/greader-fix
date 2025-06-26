package defpackage;

import android.app.Activity;
import android.app.Application;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;

/* loaded from: classes.dex */
public final class i7 {
    public static final Class<?> a;
    public static final Field b;
    public static final Field c;
    public static final Method d;
    public static final Method e;
    public static final Method f;
    public static final Handler g = new Handler(Looper.getMainLooper());

    public class a implements Runnable {
        public final /* synthetic */ c e;
        public final /* synthetic */ Object f;

        public a(c cVar, Object obj) {
            this.e = cVar;
            this.f = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.e.e = this.f;
        }
    }

    public class b implements Runnable {
        public final /* synthetic */ Application e;
        public final /* synthetic */ c f;

        public b(Application application, c cVar) {
            this.e = application;
            this.f = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.e.unregisterActivityLifecycleCallbacks(this.f);
        }
    }

    public static final class c implements Application.ActivityLifecycleCallbacks {
        public Object e;
        public Activity f;
        public final int g;
        public boolean h = false;
        public boolean i = false;
        public boolean j = false;

        public c(Activity activity) {
            this.f = activity;
            this.g = activity.hashCode();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if (this.f == activity) {
                this.f = null;
                this.i = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            if (!this.i || this.j || this.h) {
                return;
            }
            Object obj = this.e;
            int i = this.g;
            boolean z = false;
            try {
                Object obj2 = i7.c.get(activity);
                if (obj2 == obj && activity.hashCode() == i) {
                    i7.g.postAtFrontOfQueue(new j7(i7.b.get(activity), obj2));
                    z = true;
                }
            } catch (Throwable th) {
                Log.e("ActivityRecreator", "Exception while fetching field values", th);
            }
            if (z) {
                this.j = true;
                this.e = null;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            if (this.f == activity) {
                this.h = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    }

    static {
        Class<?> cls;
        Field declaredField;
        Field declaredField2;
        Method declaredMethod;
        Method declaredMethod2;
        Method method = null;
        try {
            cls = Class.forName("android.app.ActivityThread");
        } catch (Throwable unused) {
            cls = null;
        }
        a = cls;
        try {
            declaredField = Activity.class.getDeclaredField("mMainThread");
            declaredField.setAccessible(true);
        } catch (Throwable unused2) {
            declaredField = null;
        }
        b = declaredField;
        try {
            declaredField2 = Activity.class.getDeclaredField("mToken");
            declaredField2.setAccessible(true);
        } catch (Throwable unused3) {
            declaredField2 = null;
        }
        c = declaredField2;
        Class<?> cls2 = a;
        if (cls2 == null) {
            declaredMethod = null;
        } else {
            try {
                declaredMethod = cls2.getDeclaredMethod("performStopActivity", IBinder.class, Boolean.TYPE, String.class);
                declaredMethod.setAccessible(true);
            } catch (Throwable unused4) {
            }
        }
        d = declaredMethod;
        Class<?> cls3 = a;
        if (cls3 == null) {
            declaredMethod2 = null;
        } else {
            try {
                declaredMethod2 = cls3.getDeclaredMethod("performStopActivity", IBinder.class, Boolean.TYPE);
                declaredMethod2.setAccessible(true);
            } catch (Throwable unused5) {
            }
        }
        e = declaredMethod2;
        Class<?> cls4 = a;
        if (a() && cls4 != null) {
            try {
                Class<?> cls5 = Boolean.TYPE;
                Method declaredMethod3 = cls4.getDeclaredMethod("requestRelaunchActivity", IBinder.class, List.class, List.class, Integer.TYPE, cls5, Configuration.class, Configuration.class, cls5, cls5);
                declaredMethod3.setAccessible(true);
                method = declaredMethod3;
            } catch (Throwable unused6) {
            }
        }
        f = method;
    }

    public static boolean a() {
        int i = Build.VERSION.SDK_INT;
        return i == 26 || i == 27;
    }

    public static boolean b(Activity activity) {
        Object obj;
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
            return true;
        }
        if (a() && f == null) {
            return false;
        }
        if (e == null && d == null) {
            return false;
        }
        try {
            Object obj2 = c.get(activity);
            if (obj2 == null || (obj = b.get(activity)) == null) {
                return false;
            }
            Application application = activity.getApplication();
            c cVar = new c(activity);
            application.registerActivityLifecycleCallbacks(cVar);
            Handler handler = g;
            handler.post(new a(cVar, obj2));
            try {
                if (a()) {
                    Method method = f;
                    Boolean bool = Boolean.FALSE;
                    method.invoke(obj, obj2, null, null, 0, bool, null, null, bool, bool);
                } else {
                    activity.recreate();
                }
                handler.post(new b(application, cVar));
                return true;
            } catch (Throwable th) {
                g.post(new b(application, cVar));
                throw th;
            }
        } catch (Throwable unused) {
            return false;
        }
    }
}
