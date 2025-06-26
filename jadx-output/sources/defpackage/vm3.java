package defpackage;

import android.app.Activity;
import android.app.Application;
import android.content.Context;

/* loaded from: classes.dex */
public final class vm3 {
    public final Object a = new Object();
    public ym3 b = null;
    public boolean c = false;

    public final Activity a() {
        synchronized (this.a) {
            ym3 ym3Var = this.b;
            if (ym3Var == null) {
                return null;
            }
            return ym3Var.e;
        }
    }

    public final Context b() {
        synchronized (this.a) {
            ym3 ym3Var = this.b;
            if (ym3Var == null) {
                return null;
            }
            return ym3Var.f;
        }
    }

    public final void c(Context context) {
        synchronized (this.a) {
            if (!this.c) {
                Context applicationContext = context.getApplicationContext();
                if (applicationContext == null) {
                    applicationContext = context;
                }
                Application application = applicationContext instanceof Application ? (Application) applicationContext : null;
                if (application == null) {
                    is0.zzez("Can not cast Context to Application");
                    return;
                }
                if (this.b == null) {
                    this.b = new ym3();
                }
                ym3 ym3Var = this.b;
                if (!ym3Var.m) {
                    application.registerActivityLifecycleCallbacks(ym3Var);
                    if (context instanceof Activity) {
                        ym3Var.a((Activity) context);
                    }
                    ym3Var.f = application;
                    ym3Var.n = ((Long) os3.j.f.a(y40.B0)).longValue();
                    ym3Var.m = true;
                }
                this.c = true;
            }
        }
    }

    public final void d(an3 an3Var) {
        synchronized (this.a) {
            if (this.b == null) {
                this.b = new ym3();
            }
            ym3 ym3Var = this.b;
            synchronized (ym3Var.g) {
                ym3Var.j.add(an3Var);
            }
        }
    }

    public final void e(an3 an3Var) {
        synchronized (this.a) {
            ym3 ym3Var = this.b;
            if (ym3Var == null) {
                return;
            }
            synchronized (ym3Var.g) {
                ym3Var.j.remove(an3Var);
            }
        }
    }
}
