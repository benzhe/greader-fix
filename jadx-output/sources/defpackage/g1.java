package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.os.Handler;
import android.os.Parcelable;
import android.os.SystemClock;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.appcompat.R$dimen;
import androidx.appcompat.R$layout;
import androidx.appcompat.widget.MenuPopupWindow;
import defpackage.p1;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class g1 extends n1 implements p1, View.OnKeyListener, PopupWindow.OnDismissListener {
    public static final int F = R$layout.abc_cascading_menu_item_layout;
    public boolean A;
    public p1.a B;
    public ViewTreeObserver C;
    public PopupWindow.OnDismissListener D;
    public boolean E;
    public final Context f;
    public final int g;
    public final int h;
    public final int i;
    public final boolean j;
    public final Handler k;
    public View s;
    public View t;
    public int u;
    public boolean v;
    public boolean w;
    public int x;
    public int y;
    public final List<j1> l = new ArrayList();
    public final List<d> m = new ArrayList();
    public final ViewTreeObserver.OnGlobalLayoutListener n = new a();
    public final View.OnAttachStateChangeListener o = new b();
    public final r2 p = new c();
    public int q = 0;
    public int r = 0;
    public boolean z = false;

    public class a implements ViewTreeObserver.OnGlobalLayoutListener {
        public a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!g1.this.a() || g1.this.m.size() <= 0 || g1.this.m.get(0).a.C) {
                return;
            }
            View view = g1.this.t;
            if (view == null || !view.isShown()) {
                g1.this.dismiss();
                return;
            }
            Iterator<d> it = g1.this.m.iterator();
            while (it.hasNext()) {
                it.next().a.show();
            }
        }
    }

    public class b implements View.OnAttachStateChangeListener {
        public b() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            ViewTreeObserver viewTreeObserver = g1.this.C;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    g1.this.C = view.getViewTreeObserver();
                }
                g1 g1Var = g1.this;
                g1Var.C.removeGlobalOnLayoutListener(g1Var.n);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    public class c implements r2 {

        public class a implements Runnable {
            public final /* synthetic */ d e;
            public final /* synthetic */ MenuItem f;
            public final /* synthetic */ j1 g;

            public a(d dVar, MenuItem menuItem, j1 j1Var) {
                this.e = dVar;
                this.f = menuItem;
                this.g = j1Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                d dVar = this.e;
                if (dVar != null) {
                    g1.this.E = true;
                    dVar.b.c(false);
                    g1.this.E = false;
                }
                if (this.f.isEnabled() && this.f.hasSubMenu()) {
                    this.g.r(this.f, 4);
                }
            }
        }

        public c() {
        }

        @Override // defpackage.r2
        public void c(j1 j1Var, MenuItem menuItem) {
            g1.this.k.removeCallbacksAndMessages(null);
            int size = g1.this.m.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    i = -1;
                    break;
                } else if (j1Var == g1.this.m.get(i).b) {
                    break;
                } else {
                    i++;
                }
            }
            if (i == -1) {
                return;
            }
            int i2 = i + 1;
            g1.this.k.postAtTime(new a(i2 < g1.this.m.size() ? g1.this.m.get(i2) : null, menuItem, j1Var), j1Var, SystemClock.uptimeMillis() + 200);
        }

        @Override // defpackage.r2
        public void f(j1 j1Var, MenuItem menuItem) {
            g1.this.k.removeCallbacksAndMessages(j1Var);
        }
    }

    public static class d {
        public final MenuPopupWindow a;
        public final j1 b;
        public final int c;

        public d(MenuPopupWindow menuPopupWindow, j1 j1Var, int i) {
            this.a = menuPopupWindow;
            this.b = j1Var;
            this.c = i;
        }
    }

    public g1(Context context, View view, int i, int i2, boolean z) {
        this.f = context;
        this.s = view;
        this.h = i;
        this.i = i2;
        this.j = z;
        AtomicInteger atomicInteger = ha.a;
        this.u = view.getLayoutDirection() != 1 ? 1 : 0;
        Resources resources = context.getResources();
        this.g = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R$dimen.abc_config_prefDialogWidth));
        this.k = new Handler();
    }

    @Override // defpackage.s1
    public boolean a() {
        return this.m.size() > 0 && this.m.get(0).a.a();
    }

    @Override // defpackage.p1
    public void b(j1 j1Var, boolean z) {
        int size = this.m.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                i = -1;
                break;
            } else if (j1Var == this.m.get(i).b) {
                break;
            } else {
                i++;
            }
        }
        if (i < 0) {
            return;
        }
        int i2 = i + 1;
        if (i2 < this.m.size()) {
            this.m.get(i2).b.c(false);
        }
        d dVarRemove = this.m.remove(i);
        dVarRemove.b.u(this);
        if (this.E) {
            MenuPopupWindow menuPopupWindow = dVarRemove.a;
            Objects.requireNonNull(menuPopupWindow);
            if (Build.VERSION.SDK_INT >= 23) {
                menuPopupWindow.D.setExitTransition(null);
            }
            dVarRemove.a.D.setAnimationStyle(0);
        }
        dVarRemove.a.dismiss();
        int size2 = this.m.size();
        if (size2 > 0) {
            this.u = this.m.get(size2 - 1).c;
        } else {
            View view = this.s;
            AtomicInteger atomicInteger = ha.a;
            this.u = view.getLayoutDirection() == 1 ? 0 : 1;
        }
        if (size2 != 0) {
            if (z) {
                this.m.get(0).b.c(false);
                return;
            }
            return;
        }
        dismiss();
        p1.a aVar = this.B;
        if (aVar != null) {
            aVar.b(j1Var, true);
        }
        ViewTreeObserver viewTreeObserver = this.C;
        if (viewTreeObserver != null) {
            if (viewTreeObserver.isAlive()) {
                this.C.removeGlobalOnLayoutListener(this.n);
            }
            this.C = null;
        }
        this.t.removeOnAttachStateChangeListener(this.o);
        this.D.onDismiss();
    }

    @Override // defpackage.n1
    public void c(j1 j1Var) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        j1Var.b(this, this.f);
        if (a()) {
            y(j1Var);
        } else {
            this.l.add(j1Var);
        }
    }

    @Override // defpackage.n1
    public boolean d() {
        return false;
    }

    @Override // defpackage.s1
    public void dismiss() {
        int size = this.m.size();
        if (size > 0) {
            d[] dVarArr = (d[]) this.m.toArray(new d[size]);
            for (int i = size - 1; i >= 0; i--) {
                d dVar = dVarArr[i];
                if (dVar.a.a()) {
                    dVar.a.dismiss();
                }
            }
        }
    }

    @Override // defpackage.n1
    public void f(View view) {
        if (this.s != view) {
            this.s = view;
            int i = this.q;
            AtomicInteger atomicInteger = ha.a;
            this.r = Gravity.getAbsoluteGravity(i, view.getLayoutDirection());
        }
    }

    @Override // defpackage.n1
    public void g(boolean z) {
        this.z = z;
    }

    @Override // defpackage.s1
    public ListView h() {
        if (this.m.isEmpty()) {
            return null;
        }
        return this.m.get(r0.size() - 1).a.g;
    }

    @Override // defpackage.n1
    public void i(int i) {
        if (this.q != i) {
            this.q = i;
            View view = this.s;
            AtomicInteger atomicInteger = ha.a;
            this.r = Gravity.getAbsoluteGravity(i, view.getLayoutDirection());
        }
    }

    @Override // defpackage.n1
    public void j(int i) {
        this.v = true;
        this.x = i;
    }

    @Override // defpackage.n1
    public void k(PopupWindow.OnDismissListener onDismissListener) {
        this.D = onDismissListener;
    }

    @Override // defpackage.n1
    public void l(boolean z) {
        this.A = z;
    }

    @Override // defpackage.n1
    public void m(int i) {
        this.w = true;
        this.y = i;
    }

    @Override // defpackage.p1
    public void o(boolean z) {
        Iterator<d> it = this.m.iterator();
        while (it.hasNext()) {
            ListAdapter adapter = it.next().a.g.getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                adapter = ((HeaderViewListAdapter) adapter).getWrappedAdapter();
            }
            ((i1) adapter).notifyDataSetChanged();
        }
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        d dVar;
        int size = this.m.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                dVar = null;
                break;
            }
            dVar = this.m.get(i);
            if (!dVar.a.a()) {
                break;
            } else {
                i++;
            }
        }
        if (dVar != null) {
            dVar.b.c(false);
        }
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // defpackage.p1
    public boolean p() {
        return false;
    }

    @Override // defpackage.p1
    public void s(p1.a aVar) {
        this.B = aVar;
    }

    @Override // defpackage.s1
    public void show() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (a()) {
            return;
        }
        Iterator<j1> it = this.l.iterator();
        while (it.hasNext()) {
            y(it.next());
        }
        this.l.clear();
        View view = this.s;
        this.t = view;
        if (view != null) {
            boolean z = this.C == null;
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            this.C = viewTreeObserver;
            if (z) {
                viewTreeObserver.addOnGlobalLayoutListener(this.n);
            }
            this.t.addOnAttachStateChangeListener(this.o);
        }
    }

    @Override // defpackage.p1
    public void u(Parcelable parcelable) {
    }

    @Override // defpackage.p1
    public boolean v(u1 u1Var) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        for (d dVar : this.m) {
            if (u1Var == dVar.b) {
                dVar.a.g.requestFocus();
                return true;
            }
        }
        if (!u1Var.hasVisibleItems()) {
            return false;
        }
        u1Var.b(this, this.f);
        if (a()) {
            y(u1Var);
        } else {
            this.l.add(u1Var);
        }
        p1.a aVar = this.B;
        if (aVar != null) {
            aVar.c(u1Var);
        }
        return true;
    }

    @Override // defpackage.p1
    public Parcelable w() {
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01b4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void y(defpackage.j1 r17) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            Method dump skipped, instructions count: 529
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.g1.y(j1):void");
    }
}
