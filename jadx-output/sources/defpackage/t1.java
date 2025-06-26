package defpackage;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Parcelable;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.R$dimen;
import androidx.appcompat.R$layout;
import androidx.appcompat.widget.MenuPopupWindow;
import defpackage.p1;
import java.util.Objects;

/* loaded from: classes.dex */
public final class t1 extends n1 implements PopupWindow.OnDismissListener, AdapterView.OnItemClickListener, p1, View.OnKeyListener {
    public static final int z = R$layout.abc_popup_menu_item_layout;
    public final Context f;
    public final j1 g;
    public final i1 h;
    public final boolean i;
    public final int j;
    public final int k;
    public final int l;
    public final MenuPopupWindow m;
    public PopupWindow.OnDismissListener p;
    public View q;
    public View r;
    public p1.a s;
    public ViewTreeObserver t;
    public boolean u;
    public boolean v;
    public int w;
    public boolean y;
    public final ViewTreeObserver.OnGlobalLayoutListener n = new a();
    public final View.OnAttachStateChangeListener o = new b();
    public int x = 0;

    public class a implements ViewTreeObserver.OnGlobalLayoutListener {
        public a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (t1.this.a()) {
                t1 t1Var = t1.this;
                if (t1Var.m.C) {
                    return;
                }
                View view = t1Var.r;
                if (view == null || !view.isShown()) {
                    t1.this.dismiss();
                } else {
                    t1.this.m.show();
                }
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
            ViewTreeObserver viewTreeObserver = t1.this.t;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    t1.this.t = view.getViewTreeObserver();
                }
                t1 t1Var = t1.this;
                t1Var.t.removeGlobalOnLayoutListener(t1Var.n);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    public t1(Context context, j1 j1Var, View view, int i, int i2, boolean z2) {
        this.f = context;
        this.g = j1Var;
        this.i = z2;
        this.h = new i1(j1Var, LayoutInflater.from(context), z2, z);
        this.k = i;
        this.l = i2;
        Resources resources = context.getResources();
        this.j = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R$dimen.abc_config_prefDialogWidth));
        this.q = view;
        this.m = new MenuPopupWindow(context, null, i, i2);
        j1Var.b(this, context);
    }

    @Override // defpackage.s1
    public boolean a() {
        return !this.u && this.m.a();
    }

    @Override // defpackage.p1
    public void b(j1 j1Var, boolean z2) {
        if (j1Var != this.g) {
            return;
        }
        dismiss();
        p1.a aVar = this.s;
        if (aVar != null) {
            aVar.b(j1Var, z2);
        }
    }

    @Override // defpackage.n1
    public void c(j1 j1Var) {
    }

    @Override // defpackage.s1
    public void dismiss() {
        if (a()) {
            this.m.dismiss();
        }
    }

    @Override // defpackage.n1
    public void f(View view) {
        this.q = view;
    }

    @Override // defpackage.n1
    public void g(boolean z2) {
        this.h.g = z2;
    }

    @Override // defpackage.s1
    public ListView h() {
        return this.m.g;
    }

    @Override // defpackage.n1
    public void i(int i) {
        this.x = i;
    }

    @Override // defpackage.n1
    public void j(int i) {
        this.m.j = i;
    }

    @Override // defpackage.n1
    public void k(PopupWindow.OnDismissListener onDismissListener) {
        this.p = onDismissListener;
    }

    @Override // defpackage.n1
    public void l(boolean z2) {
        this.y = z2;
    }

    @Override // defpackage.n1
    public void m(int i) {
        MenuPopupWindow menuPopupWindow = this.m;
        menuPopupWindow.k = i;
        menuPopupWindow.m = true;
    }

    @Override // defpackage.p1
    public void o(boolean z2) {
        this.v = false;
        i1 i1Var = this.h;
        if (i1Var != null) {
            i1Var.notifyDataSetChanged();
        }
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        this.u = true;
        this.g.c(true);
        ViewTreeObserver viewTreeObserver = this.t;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.t = this.r.getViewTreeObserver();
            }
            this.t.removeGlobalOnLayoutListener(this.n);
            this.t = null;
        }
        this.r.removeOnAttachStateChangeListener(this.o);
        PopupWindow.OnDismissListener onDismissListener = this.p;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
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
        this.s = aVar;
    }

    @Override // defpackage.s1
    public void show() {
        View view;
        boolean z2 = false;
        if (a()) {
            z2 = true;
        } else if (!this.u && (view = this.q) != null) {
            this.r = view;
            this.m.D.setOnDismissListener(this);
            MenuPopupWindow menuPopupWindow = this.m;
            menuPopupWindow.u = this;
            menuPopupWindow.r(true);
            View view2 = this.r;
            boolean z3 = this.t == null;
            ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
            this.t = viewTreeObserver;
            if (z3) {
                viewTreeObserver.addOnGlobalLayoutListener(this.n);
            }
            view2.addOnAttachStateChangeListener(this.o);
            MenuPopupWindow menuPopupWindow2 = this.m;
            menuPopupWindow2.t = view2;
            menuPopupWindow2.p = this.x;
            if (!this.v) {
                this.w = n1.e(this.h, null, this.f, this.j);
                this.v = true;
            }
            this.m.q(this.w);
            this.m.D.setInputMethodMode(2);
            MenuPopupWindow menuPopupWindow3 = this.m;
            Rect rect = this.e;
            Objects.requireNonNull(menuPopupWindow3);
            menuPopupWindow3.B = rect != null ? new Rect(rect) : null;
            this.m.show();
            n2 n2Var = this.m.g;
            n2Var.setOnKeyListener(this);
            if (this.y && this.g.m != null) {
                FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(this.f).inflate(R$layout.abc_popup_menu_header_item_layout, (ViewGroup) n2Var, false);
                TextView textView = (TextView) frameLayout.findViewById(R.id.title);
                if (textView != null) {
                    textView.setText(this.g.m);
                }
                frameLayout.setEnabled(false);
                n2Var.addHeaderView(frameLayout, null, false);
            }
            this.m.o(this.h);
            this.m.show();
            z2 = true;
        }
        if (!z2) {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
    }

    @Override // defpackage.p1
    public void u(Parcelable parcelable) {
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0070  */
    @Override // defpackage.p1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean v(defpackage.u1 r10) {
        /*
            r9 = this;
            boolean r0 = r10.hasVisibleItems()
            r1 = 0
            if (r0 == 0) goto L78
            o1 r0 = new o1
            android.content.Context r3 = r9.f
            android.view.View r5 = r9.r
            boolean r6 = r9.i
            int r7 = r9.k
            int r8 = r9.l
            r2 = r0
            r4 = r10
            r2.<init>(r3, r4, r5, r6, r7, r8)
            p1$a r2 = r9.s
            r0.d(r2)
            boolean r2 = defpackage.n1.x(r10)
            r0.h = r2
            n1 r3 = r0.j
            if (r3 == 0) goto L2a
            r3.g(r2)
        L2a:
            android.widget.PopupWindow$OnDismissListener r2 = r9.p
            r0.k = r2
            r2 = 0
            r9.p = r2
            j1 r2 = r9.g
            r2.c(r1)
            androidx.appcompat.widget.MenuPopupWindow r2 = r9.m
            int r3 = r2.j
            boolean r4 = r2.m
            if (r4 != 0) goto L40
            r2 = 0
            goto L42
        L40:
            int r2 = r2.k
        L42:
            int r4 = r9.x
            android.view.View r5 = r9.q
            java.util.concurrent.atomic.AtomicInteger r6 = defpackage.ha.a
            int r5 = r5.getLayoutDirection()
            int r4 = android.view.Gravity.getAbsoluteGravity(r4, r5)
            r4 = r4 & 7
            r5 = 5
            if (r4 != r5) goto L5c
            android.view.View r4 = r9.q
            int r4 = r4.getWidth()
            int r3 = r3 + r4
        L5c:
            boolean r4 = r0.b()
            r5 = 1
            if (r4 == 0) goto L64
            goto L6d
        L64:
            android.view.View r4 = r0.f
            if (r4 != 0) goto L6a
            r0 = 0
            goto L6e
        L6a:
            r0.e(r3, r2, r5, r5)
        L6d:
            r0 = 1
        L6e:
            if (r0 == 0) goto L78
            p1$a r0 = r9.s
            if (r0 == 0) goto L77
            r0.c(r10)
        L77:
            return r5
        L78:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.t1.v(u1):boolean");
    }

    @Override // defpackage.p1
    public Parcelable w() {
        return null;
    }
}
