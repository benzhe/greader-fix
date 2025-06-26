package defpackage;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.Display;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import androidx.appcompat.R$dimen;
import defpackage.p1;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class o1 {
    public final Context a;
    public final j1 b;
    public final boolean c;
    public final int d;
    public final int e;
    public View f;
    public boolean h;
    public p1.a i;
    public n1 j;
    public PopupWindow.OnDismissListener k;
    public int g = 8388611;
    public final PopupWindow.OnDismissListener l = new a();

    public class a implements PopupWindow.OnDismissListener {
        public a() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            o1.this.c();
        }
    }

    public o1(Context context, j1 j1Var, View view, boolean z, int i, int i2) {
        this.a = context;
        this.b = j1Var;
        this.f = view;
        this.c = z;
        this.d = i;
        this.e = i2;
    }

    public n1 a() {
        if (this.j == null) {
            Display defaultDisplay = ((WindowManager) this.a.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            n1 g1Var = Math.min(point.x, point.y) >= this.a.getResources().getDimensionPixelSize(R$dimen.abc_cascading_menus_min_smallest_width) ? new g1(this.a, this.f, this.d, this.e, this.c) : new t1(this.a, this.b, this.f, this.d, this.e, this.c);
            g1Var.c(this.b);
            g1Var.k(this.l);
            g1Var.f(this.f);
            g1Var.s(this.i);
            g1Var.g(this.h);
            g1Var.i(this.g);
            this.j = g1Var;
        }
        return this.j;
    }

    public boolean b() {
        n1 n1Var = this.j;
        return n1Var != null && n1Var.a();
    }

    public void c() {
        this.j = null;
        PopupWindow.OnDismissListener onDismissListener = this.k;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    public void d(p1.a aVar) {
        this.i = aVar;
        n1 n1Var = this.j;
        if (n1Var != null) {
            n1Var.s(aVar);
        }
    }

    public final void e(int i, int i2, boolean z, boolean z2) {
        n1 n1VarA = a();
        n1VarA.l(z2);
        if (z) {
            int i3 = this.g;
            View view = this.f;
            AtomicInteger atomicInteger = ha.a;
            if ((Gravity.getAbsoluteGravity(i3, view.getLayoutDirection()) & 7) == 5) {
                i -= this.f.getWidth();
            }
            n1VarA.j(i);
            n1VarA.m(i2);
            int i4 = (int) ((this.a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            n1VarA.e = new Rect(i - i4, i2 - i4, i + i4, i2 + i4);
        }
        n1VarA.show();
    }

    public boolean f() {
        if (b()) {
            return true;
        }
        if (this.f == null) {
            return false;
        }
        e(0, 0, false, false);
        return true;
    }
}
