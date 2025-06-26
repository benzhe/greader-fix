package defpackage;

import android.app.Activity;
import android.app.Application;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import com.google.android.gms.internal.ads.zzfa;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class dc3 implements Application.ActivityLifecycleCallbacks, View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {
    public static final Handler q = new Handler(Looper.getMainLooper());
    public final Context e;
    public Application f;
    public final PowerManager g;
    public final KeyguardManager h;
    public BroadcastReceiver i;
    public final zzfa j;
    public WeakReference<ViewTreeObserver> k;
    public WeakReference<View> l;
    public u43 m;
    public byte n = -1;
    public int o = -1;
    public long p = -3;

    public dc3(Context context, zzfa zzfaVar) {
        Context applicationContext = context.getApplicationContext();
        this.e = applicationContext;
        this.j = zzfaVar;
        this.g = (PowerManager) applicationContext.getSystemService("power");
        this.h = (KeyguardManager) applicationContext.getSystemService("keyguard");
        if (applicationContext instanceof Application) {
            this.f = (Application) applicationContext;
            this.m = new u43((Application) applicationContext, this);
        }
        e(null);
    }

    public final View a() {
        WeakReference<View> weakReference = this.l;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public final void b(Activity activity, int i) {
        Window window;
        if (this.l == null || (window = activity.getWindow()) == null) {
            return;
        }
        View viewPeekDecorView = window.peekDecorView();
        View viewA = a();
        if (viewA == null || viewPeekDecorView == null || viewA.getRootView() != viewPeekDecorView.getRootView()) {
            return;
        }
        this.o = i;
    }

    public final long c() {
        if (this.p <= -2 && a() == null) {
            this.p = -3L;
        }
        return this.p;
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x006c, code lost:
    
        r7 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0089  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void d() {
        /*
            Method dump skipped, instructions count: 204
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.dc3.d():void");
    }

    public final void e(View view) {
        View viewA = a();
        if (viewA != null) {
            viewA.removeOnAttachStateChangeListener(this);
            g(viewA);
        }
        this.l = new WeakReference<>(view);
        if (view == null) {
            this.p = -3L;
            return;
        }
        if ((view.getWindowToken() == null && view.getWindowVisibility() == 8) ? false : true) {
            f(view);
        }
        view.addOnAttachStateChangeListener(this);
        this.p = -2L;
    }

    public final void f(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.k = new WeakReference<>(viewTreeObserver);
            viewTreeObserver.addOnScrollChangedListener(this);
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        if (this.i == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            fc3 fc3Var = new fc3(this);
            this.i = fc3Var;
            this.e.registerReceiver(fc3Var, intentFilter);
        }
        Application application = this.f;
        if (application != null) {
            try {
                application.registerActivityLifecycleCallbacks(this.m);
            } catch (Exception unused) {
            }
        }
    }

    public final void g(View view) {
        try {
            WeakReference<ViewTreeObserver> weakReference = this.k;
            if (weakReference != null) {
                ViewTreeObserver viewTreeObserver = weakReference.get();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnScrollChangedListener(this);
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
                this.k = null;
            }
        } catch (Exception unused) {
        }
        try {
            ViewTreeObserver viewTreeObserver2 = view.getViewTreeObserver();
            if (viewTreeObserver2.isAlive()) {
                viewTreeObserver2.removeOnScrollChangedListener(this);
                viewTreeObserver2.removeGlobalOnLayoutListener(this);
            }
        } catch (Exception unused2) {
        }
        BroadcastReceiver broadcastReceiver = this.i;
        if (broadcastReceiver != null) {
            try {
                this.e.unregisterReceiver(broadcastReceiver);
            } catch (Exception unused3) {
            }
            this.i = null;
        }
        Application application = this.f;
        if (application != null) {
            try {
                application.unregisterActivityLifecycleCallbacks(this.m);
            } catch (Exception unused4) {
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        b(activity, 0);
        d();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        d();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        b(activity, 4);
        d();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        b(activity, 0);
        d();
        q.post(new gc3(this));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        d();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        b(activity, 0);
        d();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        d();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        d();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        d();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.o = -1;
        f(view);
        d();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.o = -1;
        d();
        q.post(new gc3(this));
        g(view);
    }
}
