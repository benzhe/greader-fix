package defpackage;

import android.app.Activity;
import android.app.Application;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.PowerManager;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.util.zzbp;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.lang.ref.WeakReference;
import java.util.HashSet;

/* loaded from: classes.dex */
public final class am3 implements Application.ActivityLifecycleCallbacks, View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {
    public static final long t = ((Long) os3.j.f.a(y40.P0)).longValue();
    public final Context e;
    public Application f;
    public final WindowManager g;
    public final PowerManager h;
    public final KeyguardManager i;
    public BroadcastReceiver j;
    public WeakReference<ViewTreeObserver> k;
    public WeakReference<View> l;
    public jm3 m;
    public zzbp n = new zzbp(t);
    public boolean o = false;
    public int p = -1;
    public final HashSet<em3> q = new HashSet<>();
    public final DisplayMetrics r;
    public final Rect s;

    public am3(Context context, View view) {
        Context applicationContext = context.getApplicationContext();
        this.e = applicationContext;
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        this.g = windowManager;
        this.h = (PowerManager) applicationContext.getSystemService("power");
        this.i = (KeyguardManager) context.getSystemService("keyguard");
        if (applicationContext instanceof Application) {
            this.f = (Application) applicationContext;
            this.m = new jm3((Application) applicationContext, this);
        }
        this.r = context.getResources().getDisplayMetrics();
        Rect rect = new Rect();
        this.s = rect;
        rect.right = windowManager.getDefaultDisplay().getWidth();
        rect.bottom = windowManager.getDefaultDisplay().getHeight();
        WeakReference<View> weakReference = this.l;
        View view2 = weakReference != null ? weakReference.get() : null;
        if (view2 != null) {
            view2.removeOnAttachStateChangeListener(this);
            h(view2);
        }
        this.l = new WeakReference<>(view);
        if (view != null) {
            if (zzr.zzkx().isAttachedToWindow(view)) {
                g(view);
            }
            view.addOnAttachStateChangeListener(this);
        }
    }

    public final Rect a(Rect rect) {
        return new Rect(e(rect.left), e(rect.top), e(rect.right), e(rect.bottom));
    }

    public final void b(Activity activity, int i) {
        Window window;
        if (this.l == null || (window = activity.getWindow()) == null) {
            return;
        }
        View viewPeekDecorView = window.peekDecorView();
        View view = this.l.get();
        if (view == null || viewPeekDecorView == null || view.getRootView() != viewPeekDecorView.getRootView()) {
            return;
        }
        this.p = i;
    }

    public final void c(em3 em3Var) {
        this.q.add(em3Var);
        d(3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00ff  */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v20, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v21, types: [java.util.ArrayList] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void d(int r32) {
        /*
            Method dump skipped, instructions count: 383
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.am3.d(int):void");
    }

    public final int e(int i) {
        return (int) (i / this.r.density);
    }

    public final void f() {
        zzj.zzegq.post(new Runnable(this) { // from class: dm3
            public final am3 e;

            {
                this.e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.e.d(3);
            }
        });
    }

    public final void g(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.k = new WeakReference<>(viewTreeObserver);
            viewTreeObserver.addOnScrollChangedListener(this);
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        if (this.j == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            this.j = new cm3(this);
            zzr.zzlq().zza(this.e, this.j, intentFilter);
        }
        Application application = this.f;
        if (application != null) {
            try {
                application.registerActivityLifecycleCallbacks(this.m);
            } catch (Exception e) {
                is0.zzc("Error registering activity lifecycle callbacks.", e);
            }
        }
    }

    public final void h(View view) {
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
        } catch (Exception e) {
            is0.zzc("Error while unregistering listeners from the last ViewTreeObserver.", e);
        }
        try {
            ViewTreeObserver viewTreeObserver2 = view.getViewTreeObserver();
            if (viewTreeObserver2.isAlive()) {
                viewTreeObserver2.removeOnScrollChangedListener(this);
                viewTreeObserver2.removeGlobalOnLayoutListener(this);
            }
        } catch (Exception e2) {
            is0.zzc("Error while unregistering listeners from the ViewTreeObserver.", e2);
        }
        if (this.j != null) {
            try {
                zzr.zzlq().zza(this.e, this.j);
            } catch (IllegalStateException e3) {
                is0.zzc("Failed trying to unregister the receiver", e3);
            } catch (Exception e4) {
                or0 or0VarZzkz = zzr.zzkz();
                xl0.d(or0VarZzkz.e, or0VarZzkz.f).a(e4, "ActiveViewUnit.stopScreenStatusMonitoring");
            }
            this.j = null;
        }
        Application application = this.f;
        if (application != null) {
            try {
                application.unregisterActivityLifecycleCallbacks(this.m);
            } catch (Exception e5) {
                is0.zzc("Error registering activity lifecycle callbacks.", e5);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        b(activity, 0);
        d(3);
        f();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        d(3);
        f();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        b(activity, 4);
        d(3);
        f();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        b(activity, 0);
        d(3);
        f();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        d(3);
        f();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        b(activity, 0);
        d(3);
        f();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        d(3);
        f();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        d(2);
        f();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        d(1);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.p = -1;
        g(view);
        d(3);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.p = -1;
        d(3);
        f();
        h(view);
    }
}
