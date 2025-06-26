package defpackage;

import android.R;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.content.Context;
import android.graphics.Rect;
import android.os.PowerManager;
import android.os.Process;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import com.google.android.gms.ads.internal.zzr;
import java.util.List;

/* loaded from: classes.dex */
public final class zm3 extends Thread {
    public boolean e;
    public boolean f;
    public final Object g;
    public final wm3 h;
    public final int i;
    public final int j;
    public final int k;
    public final int l;
    public final int m;
    public final int n;
    public final int o;
    public final int p;
    public final String q;
    public final boolean r;
    public final boolean s;
    public final boolean t;

    public zm3() {
        wm3 wm3Var = new wm3();
        this.e = false;
        this.f = false;
        this.h = wm3Var;
        this.g = new Object();
        this.j = l60.d.a().intValue();
        this.k = l60.a.a().intValue();
        this.l = l60.e.a().intValue();
        this.m = l60.c.a().intValue();
        this.n = ((Integer) os3.j.f.a(y40.L)).intValue();
        this.o = ((Integer) os3.j.f.a(y40.M)).intValue();
        this.p = ((Integer) os3.j.f.a(y40.N)).intValue();
        this.i = l60.f.a().intValue();
        this.q = (String) os3.j.f.a(y40.P);
        this.r = ((Boolean) os3.j.f.a(y40.Q)).booleanValue();
        this.s = ((Boolean) os3.j.f.a(y40.R)).booleanValue();
        this.t = ((Boolean) os3.j.f.a(y40.S)).booleanValue();
        setName("ContentFetchTask");
    }

    public static boolean b() {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        try {
            Context contextB = zzr.zzky().b();
            if (contextB == null) {
                return false;
            }
            ActivityManager activityManager = (ActivityManager) contextB.getSystemService("activity");
            KeyguardManager keyguardManager = (KeyguardManager) contextB.getSystemService("keyguard");
            if (activityManager == null || keyguardManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
                return false;
            }
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (Process.myPid() == runningAppProcessInfo.pid) {
                    if (runningAppProcessInfo.importance != 100 || keyguardManager.inKeyguardRestrictedInputMode()) {
                        return false;
                    }
                    PowerManager powerManager = (PowerManager) contextB.getSystemService("power");
                    return powerManager == null ? false : powerManager.isScreenOn();
                }
            }
            return false;
        } catch (Throwable th) {
            or0 or0VarZzkz = zzr.zzkz();
            xl0.d(or0VarZzkz.e, or0VarZzkz.f).a(th, "ContentFetchTask.isInForeground");
            return false;
        }
    }

    public final dn3 a(View view, tm3 tm3Var) {
        if (view == null) {
            return new dn3(0, 0);
        }
        boolean globalVisibleRect = view.getGlobalVisibleRect(new Rect());
        if ((view instanceof TextView) && !(view instanceof EditText)) {
            CharSequence text = ((TextView) view).getText();
            if (TextUtils.isEmpty(text)) {
                return new dn3(0, 0);
            }
            tm3Var.c(text.toString(), globalVisibleRect, view.getX(), view.getY(), view.getWidth(), view.getHeight());
            return new dn3(1, 0);
        }
        if ((view instanceof WebView) && !(view instanceof xw0)) {
            WebView webView = (WebView) view;
            synchronized (tm3Var.g) {
                tm3Var.m++;
            }
            webView.post(new bn3(this, tm3Var, webView, globalVisibleRect));
            return new dn3(0, 1);
        }
        if (!(view instanceof ViewGroup)) {
            return new dn3(0, 0);
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
            dn3 dn3VarA = a(viewGroup.getChildAt(i3), tm3Var);
            i += dn3VarA.a;
            i2 += dn3VarA.b;
        }
        return new dn3(i, i2);
    }

    public final void c() {
        synchronized (this.g) {
            this.f = true;
            StringBuilder sb = new StringBuilder(42);
            sb.append("ContentFetchThread: paused, mPause = ");
            sb.append(true);
            is0.zzdz(sb.toString());
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() throws InterruptedException {
        while (true) {
            try {
                if (b()) {
                    Activity activityA = zzr.zzky().a();
                    if (activityA == null) {
                        is0.zzdz("ContentFetchThread: no activity. Sleeping.");
                        c();
                    } else {
                        View viewFindViewById = null;
                        try {
                            if (activityA.getWindow() != null && activityA.getWindow().getDecorView() != null) {
                                viewFindViewById = activityA.getWindow().getDecorView().findViewById(R.id.content);
                            }
                        } catch (Exception e) {
                            or0 or0VarZzkz = zzr.zzkz();
                            xl0.d(or0VarZzkz.e, or0VarZzkz.f).a(e, "ContentFetchTask.extractContent");
                            is0.zzdz("Failed getting root view of activity. Content not extracted.");
                        }
                        if (viewFindViewById != null) {
                            viewFindViewById.post(new cn3(this, viewFindViewById));
                        }
                    }
                } else {
                    is0.zzdz("ContentFetchTask: sleeping");
                    c();
                }
                Thread.sleep(this.i * 1000);
            } catch (InterruptedException e2) {
                is0.zzc("Error in ContentFetchTask", e2);
            } catch (Exception e3) {
                is0.zzc("Error in ContentFetchTask", e3);
                or0 or0VarZzkz2 = zzr.zzkz();
                xl0.d(or0VarZzkz2.e, or0VarZzkz2.f).a(e3, "ContentFetchTask.run");
            }
            synchronized (this.g) {
                while (this.f) {
                    try {
                        is0.zzdz("ContentFetchTask: waiting");
                        this.g.wait();
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }
    }
}
