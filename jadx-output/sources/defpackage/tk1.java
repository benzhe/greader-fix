package defpackage;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.internal.util.zzbn;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.internal.ads.zzaei;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class tk1 {
    public final zzf a;
    public final ll2 b;
    public final ak1 c;
    public final wj1 d;
    public final bl1 e;
    public final pl1 f;
    public final Executor g;
    public final Executor h;
    public final zzaei i;
    public final rj1 j;

    public tk1(zzf zzfVar, ll2 ll2Var, ak1 ak1Var, wj1 wj1Var, bl1 bl1Var, pl1 pl1Var, Executor executor, Executor executor2, rj1 rj1Var) {
        this.a = zzfVar;
        this.b = ll2Var;
        this.i = ll2Var.i;
        this.c = ak1Var;
        this.d = wj1Var;
        this.e = bl1Var;
        this.f = pl1Var;
        this.g = executor;
        this.h = executor2;
        this.j = rj1Var;
    }

    public static void a(RelativeLayout.LayoutParams layoutParams, int i) {
        if (i == 0) {
            layoutParams.addRule(10);
            layoutParams.addRule(9);
        } else if (i == 2) {
            layoutParams.addRule(12);
            layoutParams.addRule(11);
        } else if (i != 3) {
            layoutParams.addRule(10);
            layoutParams.addRule(11);
        } else {
            layoutParams.addRule(12);
            layoutParams.addRule(9);
        }
    }

    public final boolean b(ViewGroup viewGroup) {
        View viewN = this.d.n();
        if (viewN == null) {
            return false;
        }
        viewGroup.removeAllViews();
        if (viewN.getParent() instanceof ViewGroup) {
            ((ViewGroup) viewN.getParent()).removeView(viewN);
        }
        viewGroup.addView(viewN, ((Boolean) os3.j.f.a(y40.a2)).booleanValue() ? new FrameLayout.LayoutParams(-1, -1, 17) : new FrameLayout.LayoutParams(-2, -2, 17));
        return true;
    }

    public final void c(xl1 xl1Var) {
        if (xl1Var == null) {
            return;
        }
        Context context = xl1Var.y5().getContext();
        if (zzbn.zza(context, this.c.a)) {
            if (!(context instanceof Activity)) {
                is0.zzdz("Activity context is needed for policy validator.");
                return;
            }
            if (this.f == null || xl1Var.e2() == null) {
                return;
            }
            try {
                WindowManager windowManager = (WindowManager) context.getSystemService("window");
                windowManager.addView(this.f.b(xl1Var.e2(), windowManager), zzbn.zzaaj());
            } catch (ix0 e) {
                zzd.zza("web view can not be obtained", e);
            }
        }
    }
}
