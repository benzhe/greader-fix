package defpackage;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$id;
import androidx.appcompat.R$string;
import androidx.appcompat.R$styleable;
import androidx.appcompat.widget.ActionMenuPresenter;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.ScrollingTabContainerView;
import androidx.appcompat.widget.Toolbar;
import defpackage.j1;
import defpackage.p1;

/* loaded from: classes.dex */
public class e3 implements l2 {
    public Toolbar a;
    public int b;
    public View c;
    public View d;
    public Drawable e;
    public Drawable f;
    public Drawable g;
    public boolean h;
    public CharSequence i;
    public CharSequence j;
    public CharSequence k;
    public Window.Callback l;
    public boolean m;
    public ActionMenuPresenter n;
    public int o;
    public Drawable p;

    public class a extends oa {
        public boolean a = false;
        public final /* synthetic */ int b;

        public a(int i) {
            this.b = i;
        }

        @Override // defpackage.oa, defpackage.na
        public void a(View view) {
            this.a = true;
        }

        @Override // defpackage.na
        public void b(View view) {
            if (this.a) {
                return;
            }
            e3.this.a.setVisibility(this.b);
        }

        @Override // defpackage.oa, defpackage.na
        public void c(View view) {
            e3.this.a.setVisibility(0);
        }
    }

    public e3(Toolbar toolbar, boolean z) {
        int i;
        Drawable drawable;
        int i2 = R$string.abc_action_bar_up_description;
        this.o = 0;
        this.a = toolbar;
        this.i = toolbar.getTitle();
        this.j = toolbar.getSubtitle();
        this.h = this.i != null;
        this.g = toolbar.getNavigationIcon();
        c3 c3VarR = c3.r(toolbar.getContext(), null, R$styleable.ActionBar, R$attr.actionBarStyle, 0);
        this.p = c3VarR.g(R$styleable.ActionBar_homeAsUpIndicator);
        if (z) {
            CharSequence charSequenceO = c3VarR.o(R$styleable.ActionBar_title);
            if (!TextUtils.isEmpty(charSequenceO)) {
                setTitle(charSequenceO);
            }
            CharSequence charSequenceO2 = c3VarR.o(R$styleable.ActionBar_subtitle);
            if (!TextUtils.isEmpty(charSequenceO2)) {
                j(charSequenceO2);
            }
            Drawable drawableG = c3VarR.g(R$styleable.ActionBar_logo);
            if (drawableG != null) {
                this.f = drawableG;
                z();
            }
            Drawable drawableG2 = c3VarR.g(R$styleable.ActionBar_icon);
            if (drawableG2 != null) {
                this.e = drawableG2;
                z();
            }
            if (this.g == null && (drawable = this.p) != null) {
                this.g = drawable;
                y();
            }
            i(c3VarR.j(R$styleable.ActionBar_displayOptions, 0));
            int iM = c3VarR.m(R$styleable.ActionBar_customNavigationLayout, 0);
            if (iM != 0) {
                t(LayoutInflater.from(this.a.getContext()).inflate(iM, (ViewGroup) this.a, false));
                i(this.b | 16);
            }
            int iL = c3VarR.l(R$styleable.ActionBar_height, 0);
            if (iL > 0) {
                ViewGroup.LayoutParams layoutParams = this.a.getLayoutParams();
                layoutParams.height = iL;
                this.a.setLayoutParams(layoutParams);
            }
            int iE = c3VarR.e(R$styleable.ActionBar_contentInsetStart, -1);
            int iE2 = c3VarR.e(R$styleable.ActionBar_contentInsetEnd, -1);
            if (iE >= 0 || iE2 >= 0) {
                this.a.setContentInsetsRelative(Math.max(iE, 0), Math.max(iE2, 0));
            }
            int iM2 = c3VarR.m(R$styleable.ActionBar_titleTextStyle, 0);
            if (iM2 != 0) {
                Toolbar toolbar2 = this.a;
                toolbar2.setTitleTextAppearance(toolbar2.getContext(), iM2);
            }
            int iM3 = c3VarR.m(R$styleable.ActionBar_subtitleTextStyle, 0);
            if (iM3 != 0) {
                Toolbar toolbar3 = this.a;
                toolbar3.setSubtitleTextAppearance(toolbar3.getContext(), iM3);
            }
            int iM4 = c3VarR.m(R$styleable.ActionBar_popupTheme, 0);
            if (iM4 != 0) {
                this.a.setPopupTheme(iM4);
            }
        } else {
            if (this.a.getNavigationIcon() != null) {
                i = 15;
                this.p = this.a.getNavigationIcon();
            } else {
                i = 11;
            }
            this.b = i;
        }
        c3VarR.b.recycle();
        if (i2 != this.o) {
            this.o = i2;
            if (TextUtils.isEmpty(this.a.getNavigationContentDescription())) {
                int i3 = this.o;
                this.k = i3 != 0 ? getContext().getString(i3) : null;
                x();
            }
        }
        this.k = this.a.getNavigationContentDescription();
        this.a.setNavigationOnClickListener(new d3(this));
    }

    @Override // defpackage.l2
    public boolean a() {
        return this.a.p();
    }

    @Override // defpackage.l2
    public boolean b() {
        ActionMenuView actionMenuView;
        Toolbar toolbar = this.a;
        return toolbar.getVisibility() == 0 && (actionMenuView = toolbar.e) != null && actionMenuView.w;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x001e  */
    @Override // defpackage.l2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean c() {
        /*
            r4 = this;
            androidx.appcompat.widget.Toolbar r0 = r4.a
            androidx.appcompat.widget.ActionMenuView r0 = r0.e
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L22
            androidx.appcompat.widget.ActionMenuPresenter r0 = r0.x
            if (r0 == 0) goto L1e
            androidx.appcompat.widget.ActionMenuPresenter$c r3 = r0.A
            if (r3 != 0) goto L19
            boolean r0 = r0.f()
            if (r0 == 0) goto L17
            goto L19
        L17:
            r0 = 0
            goto L1a
        L19:
            r0 = 1
        L1a:
            if (r0 == 0) goto L1e
            r0 = 1
            goto L1f
        L1e:
            r0 = 0
        L1f:
            if (r0 == 0) goto L22
            r1 = 1
        L22:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.e3.c():boolean");
    }

    @Override // defpackage.l2
    public void collapseActionView() {
        Toolbar.d dVar = this.a.O;
        l1 l1Var = dVar == null ? null : dVar.f;
        if (l1Var != null) {
            l1Var.collapseActionView();
        }
    }

    @Override // defpackage.l2
    public boolean d() {
        ActionMenuView actionMenuView = this.a.e;
        if (actionMenuView == null) {
            return false;
        }
        ActionMenuPresenter actionMenuPresenter = actionMenuView.x;
        return actionMenuPresenter != null && actionMenuPresenter.d();
    }

    @Override // defpackage.l2
    public boolean e() {
        return this.a.v();
    }

    @Override // defpackage.l2
    public void f() {
        ActionMenuPresenter actionMenuPresenter;
        ActionMenuView actionMenuView = this.a.e;
        if (actionMenuView == null || (actionMenuPresenter = actionMenuView.x) == null) {
            return;
        }
        actionMenuPresenter.a();
    }

    @Override // defpackage.l2
    public void g(ScrollingTabContainerView scrollingTabContainerView) {
        View view = this.c;
        if (view != null) {
            ViewParent parent = view.getParent();
            Toolbar toolbar = this.a;
            if (parent == toolbar) {
                toolbar.removeView(this.c);
            }
        }
        this.c = null;
    }

    @Override // defpackage.l2
    public Context getContext() {
        return this.a.getContext();
    }

    @Override // defpackage.l2
    public CharSequence getTitle() {
        return this.a.getTitle();
    }

    @Override // defpackage.l2
    public boolean h() {
        Toolbar.d dVar = this.a.O;
        return (dVar == null || dVar.f == null) ? false : true;
    }

    @Override // defpackage.l2
    public void i(int i) {
        View view;
        int i2 = this.b ^ i;
        this.b = i;
        if (i2 != 0) {
            if ((i2 & 4) != 0) {
                if ((i & 4) != 0) {
                    x();
                }
                y();
            }
            if ((i2 & 3) != 0) {
                z();
            }
            if ((i2 & 8) != 0) {
                if ((i & 8) != 0) {
                    this.a.setTitle(this.i);
                    this.a.setSubtitle(this.j);
                } else {
                    this.a.setTitle((CharSequence) null);
                    this.a.setSubtitle((CharSequence) null);
                }
            }
            if ((i2 & 16) == 0 || (view = this.d) == null) {
                return;
            }
            if ((i & 16) != 0) {
                this.a.addView(view);
            } else {
                this.a.removeView(view);
            }
        }
    }

    @Override // defpackage.l2
    public void j(CharSequence charSequence) {
        this.j = charSequence;
        if ((this.b & 8) != 0) {
            this.a.setSubtitle(charSequence);
        }
    }

    @Override // defpackage.l2
    public Menu k() {
        return this.a.getMenu();
    }

    @Override // defpackage.l2
    public void l(int i) {
        this.f = i != 0 ? p0.b(getContext(), i) : null;
        z();
    }

    @Override // defpackage.l2
    public int m() {
        return 0;
    }

    @Override // defpackage.l2
    public ma n(int i, long j) {
        ma maVarB = ha.b(this.a);
        maVarB.a(i == 0 ? 1.0f : 0.0f);
        maVarB.c(j);
        a aVar = new a(i);
        View view = maVarB.a.get();
        if (view != null) {
            maVarB.e(view, aVar);
        }
        return maVarB;
    }

    @Override // defpackage.l2
    public void o(p1.a aVar, j1.a aVar2) {
        this.a.setMenuCallbacks(aVar, aVar2);
    }

    @Override // defpackage.l2
    public void p(int i) {
        this.a.setVisibility(i);
    }

    @Override // defpackage.l2
    public ViewGroup q() {
        return this.a;
    }

    @Override // defpackage.l2
    public void r(boolean z) {
    }

    @Override // defpackage.l2
    public int s() {
        return this.b;
    }

    @Override // defpackage.l2
    public void setIcon(int i) {
        this.e = i != 0 ? p0.b(getContext(), i) : null;
        z();
    }

    @Override // defpackage.l2
    public void setMenu(Menu menu, p1.a aVar) {
        if (this.n == null) {
            ActionMenuPresenter actionMenuPresenter = new ActionMenuPresenter(this.a.getContext());
            this.n = actionMenuPresenter;
            actionMenuPresenter.m = R$id.action_menu_presenter;
        }
        ActionMenuPresenter actionMenuPresenter2 = this.n;
        actionMenuPresenter2.i = aVar;
        this.a.setMenu((j1) menu, actionMenuPresenter2);
    }

    @Override // defpackage.l2
    public void setMenuPrepared() {
        this.m = true;
    }

    @Override // defpackage.l2
    public void setTitle(CharSequence charSequence) {
        this.h = true;
        this.i = charSequence;
        if ((this.b & 8) != 0) {
            this.a.setTitle(charSequence);
        }
    }

    @Override // defpackage.l2
    public void setWindowCallback(Window.Callback callback) {
        this.l = callback;
    }

    @Override // defpackage.l2
    public void setWindowTitle(CharSequence charSequence) {
        if (this.h) {
            return;
        }
        this.i = charSequence;
        if ((this.b & 8) != 0) {
            this.a.setTitle(charSequence);
        }
    }

    @Override // defpackage.l2
    public void t(View view) {
        View view2 = this.d;
        if (view2 != null && (this.b & 16) != 0) {
            this.a.removeView(view2);
        }
        this.d = view;
        if (view == null || (this.b & 16) == 0) {
            return;
        }
        this.a.addView(view);
    }

    @Override // defpackage.l2
    public void u() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // defpackage.l2
    public void v() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // defpackage.l2
    public void w(boolean z) {
        this.a.setCollapsible(z);
    }

    public final void x() {
        if ((this.b & 4) != 0) {
            if (TextUtils.isEmpty(this.k)) {
                this.a.setNavigationContentDescription(this.o);
            } else {
                this.a.setNavigationContentDescription(this.k);
            }
        }
    }

    public final void y() {
        if ((this.b & 4) == 0) {
            this.a.setNavigationIcon((Drawable) null);
            return;
        }
        Toolbar toolbar = this.a;
        Drawable drawable = this.g;
        if (drawable == null) {
            drawable = this.p;
        }
        toolbar.setNavigationIcon(drawable);
    }

    public final void z() {
        Drawable drawable;
        int i = this.b;
        if ((i & 2) == 0) {
            drawable = null;
        } else if ((i & 1) == 0 || (drawable = this.f) == null) {
            drawable = this.e;
        }
        this.a.setLogo(drawable);
    }

    @Override // defpackage.l2
    public void setIcon(Drawable drawable) {
        this.e = drawable;
        z();
    }
}
