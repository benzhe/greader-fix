package defpackage;

import android.app.Activity;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import java.util.Collections;
import java.util.Set;

/* loaded from: classes.dex */
public final class sj0 extends yj0 {
    public String c;
    public boolean d;
    public int e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public final Object k;
    public final xw0 l;
    public final Activity m;
    public jy0 n;
    public ImageView o;
    public LinearLayout p;
    public yp1 q;
    public PopupWindow r;
    public RelativeLayout s;
    public ViewGroup t;

    static {
        Set setO0 = bi.o0(7, false);
        Collections.addAll(setO0, "top-left", "top-right", "top-center", "center", "bottom-left", "bottom-right", "bottom-center");
        Collections.unmodifiableSet(setO0);
    }

    public sj0(xw0 xw0Var, yp1 yp1Var) {
        super(xw0Var, "resize");
        this.c = "top-right";
        this.d = true;
        this.e = 0;
        this.f = 0;
        this.g = -1;
        this.h = 0;
        this.i = 0;
        this.j = -1;
        this.k = new Object();
        this.l = xw0Var;
        this.m = xw0Var.a();
        this.q = yp1Var;
    }

    public final void f(boolean z) {
        synchronized (this.k) {
            PopupWindow popupWindow = this.r;
            if (popupWindow != null) {
                popupWindow.dismiss();
                this.s.removeView(this.l.getView());
                ViewGroup viewGroup = this.t;
                if (viewGroup != null) {
                    viewGroup.removeView(this.o);
                    this.t.addView(this.l.getView());
                    this.l.J(this.n);
                }
                if (z) {
                    e("default");
                    yp1 yp1Var = this.q;
                    if (yp1Var != null) {
                        yp1Var.a.b.D0(cb1.a);
                    }
                }
                this.r = null;
                this.s = null;
                this.t = null;
                this.p = null;
            }
        }
    }
}
