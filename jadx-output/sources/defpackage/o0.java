package defpackage;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$bool;
import androidx.appcompat.R$id;
import androidx.appcompat.R$styleable;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.ActionMenuPresenter;
import androidx.appcompat.widget.Toolbar;
import defpackage.j1;
import defpackage.u;
import defpackage.v0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class o0 extends u implements ActionBarOverlayLayout.d {
    public static final Interpolator A = new AccelerateInterpolator();
    public static final Interpolator B = new DecelerateInterpolator();
    public Context a;
    public Context b;
    public ActionBarOverlayLayout c;
    public ActionBarContainer d;
    public l2 e;
    public ActionBarContextView f;
    public View g;
    public boolean h;
    public d i;
    public v0 j;
    public v0.a k;
    public boolean l;
    public ArrayList<u.b> m;
    public boolean n;
    public int o;
    public boolean p;
    public boolean q;
    public boolean r;
    public boolean s;
    public boolean t;
    public b1 u;
    public boolean v;
    public boolean w;
    public final na x;
    public final na y;
    public final pa z;

    public class a extends oa {
        public a() {
        }

        @Override // defpackage.na
        public void b(View view) {
            View view2;
            o0 o0Var = o0.this;
            if (o0Var.p && (view2 = o0Var.g) != null) {
                view2.setTranslationY(0.0f);
                o0.this.d.setTranslationY(0.0f);
            }
            o0.this.d.setVisibility(8);
            o0.this.d.setTransitioning(false);
            o0 o0Var2 = o0.this;
            o0Var2.u = null;
            v0.a aVar = o0Var2.k;
            if (aVar != null) {
                aVar.a(o0Var2.j);
                o0Var2.j = null;
                o0Var2.k = null;
            }
            ActionBarOverlayLayout actionBarOverlayLayout = o0.this.c;
            if (actionBarOverlayLayout != null) {
                AtomicInteger atomicInteger = ha.a;
                actionBarOverlayLayout.requestApplyInsets();
            }
        }
    }

    public class b extends oa {
        public b() {
        }

        @Override // defpackage.na
        public void b(View view) {
            o0 o0Var = o0.this;
            o0Var.u = null;
            o0Var.d.requestLayout();
        }
    }

    public class c implements pa {
        public c() {
        }
    }

    public class d extends v0 implements j1.a {
        public final Context g;
        public final j1 h;
        public v0.a i;
        public WeakReference<View> j;

        public d(Context context, v0.a aVar) {
            this.g = context;
            this.i = aVar;
            j1 j1Var = new j1(context);
            j1Var.l = 1;
            this.h = j1Var;
            j1Var.e = this;
        }

        @Override // j1.a
        public boolean a(j1 j1Var, MenuItem menuItem) {
            v0.a aVar = this.i;
            if (aVar != null) {
                return aVar.d(this, menuItem);
            }
            return false;
        }

        @Override // j1.a
        public void b(j1 j1Var) {
            if (this.i == null) {
                return;
            }
            i();
            ActionMenuPresenter actionMenuPresenter = o0.this.f.h;
            if (actionMenuPresenter != null) {
                actionMenuPresenter.g();
            }
        }

        @Override // defpackage.v0
        public void c() {
            o0 o0Var = o0.this;
            if (o0Var.i != this) {
                return;
            }
            if ((o0Var.q || o0Var.r) ? false : true) {
                this.i.a(this);
            } else {
                o0Var.j = this;
                o0Var.k = this.i;
            }
            this.i = null;
            o0.this.y(false);
            ActionBarContextView actionBarContextView = o0.this.f;
            if (actionBarContextView.o == null) {
                actionBarContextView.h();
            }
            o0.this.e.q().sendAccessibilityEvent(32);
            o0 o0Var2 = o0.this;
            o0Var2.c.setHideOnContentScrollEnabled(o0Var2.w);
            o0.this.i = null;
        }

        @Override // defpackage.v0
        public View d() {
            WeakReference<View> weakReference = this.j;
            if (weakReference != null) {
                return weakReference.get();
            }
            return null;
        }

        @Override // defpackage.v0
        public Menu e() {
            return this.h;
        }

        @Override // defpackage.v0
        public MenuInflater f() {
            return new a1(this.g);
        }

        @Override // defpackage.v0
        public CharSequence g() {
            return o0.this.f.getSubtitle();
        }

        @Override // defpackage.v0
        public CharSequence h() {
            return o0.this.f.getTitle();
        }

        @Override // defpackage.v0
        public void i() {
            if (o0.this.i != this) {
                return;
            }
            this.h.B();
            try {
                this.i.c(this, this.h);
            } finally {
                this.h.A();
            }
        }

        @Override // defpackage.v0
        public boolean j() {
            return o0.this.f.v;
        }

        @Override // defpackage.v0
        public void k(View view) {
            o0.this.f.setCustomView(view);
            this.j = new WeakReference<>(view);
        }

        @Override // defpackage.v0
        public void l(int i) throws Resources.NotFoundException {
            o0.this.f.setSubtitle(o0.this.a.getResources().getString(i));
        }

        @Override // defpackage.v0
        public void m(CharSequence charSequence) {
            o0.this.f.setSubtitle(charSequence);
        }

        @Override // defpackage.v0
        public void n(int i) throws Resources.NotFoundException {
            o0.this.f.setTitle(o0.this.a.getResources().getString(i));
        }

        @Override // defpackage.v0
        public void o(CharSequence charSequence) {
            o0.this.f.setTitle(charSequence);
        }

        @Override // defpackage.v0
        public void p(boolean z) {
            this.f = z;
            o0.this.f.setTitleOptional(z);
        }
    }

    public o0(Activity activity, boolean z) {
        new ArrayList();
        this.m = new ArrayList<>();
        this.o = 0;
        this.p = true;
        this.t = true;
        this.x = new a();
        this.y = new b();
        this.z = new c();
        View decorView = activity.getWindow().getDecorView();
        z(decorView);
        if (z) {
            return;
        }
        this.g = decorView.findViewById(R.id.content);
    }

    public void A(int i, int i2) {
        int iS = this.e.s();
        if ((i2 & 4) != 0) {
            this.h = true;
        }
        this.e.i((i & i2) | ((~i2) & iS));
    }

    public final void B(boolean z) {
        this.n = z;
        if (z) {
            this.d.setTabContainer(null);
            this.e.g(null);
        } else {
            this.e.g(null);
            this.d.setTabContainer(null);
        }
        boolean z2 = this.e.m() == 2;
        this.e.w(!this.n && z2);
        this.c.setHasNonEmbeddedTabs(!this.n && z2);
    }

    public final void C(boolean z) {
        View view;
        View view2;
        View view3;
        if (!(this.s || !(this.q || this.r))) {
            if (this.t) {
                this.t = false;
                b1 b1Var = this.u;
                if (b1Var != null) {
                    b1Var.a();
                }
                if (this.o != 0 || (!this.v && !z)) {
                    this.x.b(null);
                    return;
                }
                this.d.setAlpha(1.0f);
                this.d.setTransitioning(true);
                b1 b1Var2 = new b1();
                float f = -this.d.getHeight();
                if (z) {
                    this.d.getLocationInWindow(new int[]{0, 0});
                    f -= r9[1];
                }
                ma maVarB = ha.b(this.d);
                maVarB.g(f);
                maVarB.f(this.z);
                if (!b1Var2.e) {
                    b1Var2.a.add(maVarB);
                }
                if (this.p && (view = this.g) != null) {
                    ma maVarB2 = ha.b(view);
                    maVarB2.g(f);
                    if (!b1Var2.e) {
                        b1Var2.a.add(maVarB2);
                    }
                }
                Interpolator interpolator = A;
                boolean z2 = b1Var2.e;
                if (!z2) {
                    b1Var2.c = interpolator;
                }
                if (!z2) {
                    b1Var2.b = 250L;
                }
                na naVar = this.x;
                if (!z2) {
                    b1Var2.d = naVar;
                }
                this.u = b1Var2;
                b1Var2.b();
                return;
            }
            return;
        }
        if (this.t) {
            return;
        }
        this.t = true;
        b1 b1Var3 = this.u;
        if (b1Var3 != null) {
            b1Var3.a();
        }
        this.d.setVisibility(0);
        if (this.o == 0 && (this.v || z)) {
            this.d.setTranslationY(0.0f);
            float f2 = -this.d.getHeight();
            if (z) {
                this.d.getLocationInWindow(new int[]{0, 0});
                f2 -= r9[1];
            }
            this.d.setTranslationY(f2);
            b1 b1Var4 = new b1();
            ma maVarB3 = ha.b(this.d);
            maVarB3.g(0.0f);
            maVarB3.f(this.z);
            if (!b1Var4.e) {
                b1Var4.a.add(maVarB3);
            }
            if (this.p && (view3 = this.g) != null) {
                view3.setTranslationY(f2);
                ma maVarB4 = ha.b(this.g);
                maVarB4.g(0.0f);
                if (!b1Var4.e) {
                    b1Var4.a.add(maVarB4);
                }
            }
            Interpolator interpolator2 = B;
            boolean z3 = b1Var4.e;
            if (!z3) {
                b1Var4.c = interpolator2;
            }
            if (!z3) {
                b1Var4.b = 250L;
            }
            na naVar2 = this.y;
            if (!z3) {
                b1Var4.d = naVar2;
            }
            this.u = b1Var4;
            b1Var4.b();
        } else {
            this.d.setAlpha(1.0f);
            this.d.setTranslationY(0.0f);
            if (this.p && (view2 = this.g) != null) {
                view2.setTranslationY(0.0f);
            }
            this.y.b(null);
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.c;
        if (actionBarOverlayLayout != null) {
            AtomicInteger atomicInteger = ha.a;
            actionBarOverlayLayout.requestApplyInsets();
        }
    }

    @Override // defpackage.u
    public boolean b() {
        l2 l2Var = this.e;
        if (l2Var == null || !l2Var.h()) {
            return false;
        }
        this.e.collapseActionView();
        return true;
    }

    @Override // defpackage.u
    public void c(boolean z) {
        if (z == this.l) {
            return;
        }
        this.l = z;
        int size = this.m.size();
        for (int i = 0; i < size; i++) {
            this.m.get(i).a(z);
        }
    }

    @Override // defpackage.u
    public int d() {
        return this.e.s();
    }

    @Override // defpackage.u
    public Context e() {
        if (this.b == null) {
            TypedValue typedValue = new TypedValue();
            this.a.getTheme().resolveAttribute(R$attr.actionBarWidgetTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                this.b = new ContextThemeWrapper(this.a, i);
            } else {
                this.b = this.a;
            }
        }
        return this.b;
    }

    @Override // defpackage.u
    public void f() {
        if (this.q) {
            return;
        }
        this.q = true;
        C(false);
    }

    @Override // defpackage.u
    public void h(Configuration configuration) {
        B(this.a.getResources().getBoolean(R$bool.abc_action_bar_embed_tabs));
    }

    @Override // defpackage.u
    public boolean j(int i, KeyEvent keyEvent) {
        j1 j1Var;
        d dVar = this.i;
        if (dVar == null || (j1Var = dVar.h) == null) {
            return false;
        }
        j1Var.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return j1Var.performShortcut(i, keyEvent, 0);
    }

    @Override // defpackage.u
    public void m(View view) {
        this.e.t(view);
    }

    @Override // defpackage.u
    public void n(boolean z) {
        if (this.h) {
            return;
        }
        A(z ? 4 : 0, 4);
    }

    @Override // defpackage.u
    public void o(boolean z) {
        A(z ? 4 : 0, 4);
    }

    @Override // defpackage.u
    public void p(boolean z) {
        A(z ? 16 : 0, 16);
    }

    @Override // defpackage.u
    public void q(boolean z) {
        A(z ? 8 : 0, 8);
    }

    @Override // defpackage.u
    public void r(boolean z) {
        b1 b1Var;
        this.v = z;
        if (z || (b1Var = this.u) == null) {
            return;
        }
        b1Var.a();
    }

    @Override // defpackage.u
    public void s(CharSequence charSequence) {
        this.e.j(charSequence);
    }

    @Override // defpackage.u
    public void t(int i) {
        this.e.setTitle(this.a.getString(i));
    }

    @Override // defpackage.u
    public void u(CharSequence charSequence) {
        this.e.setTitle(charSequence);
    }

    @Override // defpackage.u
    public void v(CharSequence charSequence) {
        this.e.setWindowTitle(charSequence);
    }

    @Override // defpackage.u
    public void w() {
        if (this.q) {
            this.q = false;
            C(false);
        }
    }

    @Override // defpackage.u
    public v0 x(v0.a aVar) {
        d dVar = this.i;
        if (dVar != null) {
            dVar.c();
        }
        this.c.setHideOnContentScrollEnabled(false);
        this.f.h();
        d dVar2 = new d(this.f.getContext(), aVar);
        dVar2.h.B();
        try {
            if (!dVar2.i.b(dVar2, dVar2.h)) {
                return null;
            }
            this.i = dVar2;
            dVar2.i();
            this.f.f(dVar2);
            y(true);
            this.f.sendAccessibilityEvent(32);
            return dVar2;
        } finally {
            dVar2.h.A();
        }
    }

    public void y(boolean z) {
        ma maVarN;
        ma maVarE;
        if (z) {
            if (!this.s) {
                this.s = true;
                ActionBarOverlayLayout actionBarOverlayLayout = this.c;
                if (actionBarOverlayLayout != null) {
                    actionBarOverlayLayout.setShowingForActionMode(true);
                }
                C(false);
            }
        } else if (this.s) {
            this.s = false;
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.c;
            if (actionBarOverlayLayout2 != null) {
                actionBarOverlayLayout2.setShowingForActionMode(false);
            }
            C(false);
        }
        ActionBarContainer actionBarContainer = this.d;
        AtomicInteger atomicInteger = ha.a;
        if (!actionBarContainer.isLaidOut()) {
            if (z) {
                this.e.p(4);
                this.f.setVisibility(0);
                return;
            } else {
                this.e.p(0);
                this.f.setVisibility(8);
                return;
            }
        }
        if (z) {
            maVarE = this.e.n(4, 100L);
            maVarN = this.f.e(0, 200L);
        } else {
            maVarN = this.e.n(0, 200L);
            maVarE = this.f.e(8, 100L);
        }
        b1 b1Var = new b1();
        b1Var.a.add(maVarE);
        View view = maVarE.a.get();
        long duration = view != null ? view.animate().getDuration() : 0L;
        View view2 = maVarN.a.get();
        if (view2 != null) {
            view2.animate().setStartDelay(duration);
        }
        b1Var.a.add(maVarN);
        b1Var.b();
    }

    public final void z(View view) {
        l2 wrapper;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(R$id.decor_content_parent);
        this.c = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        KeyEvent.Callback callbackFindViewById = view.findViewById(R$id.action_bar);
        if (callbackFindViewById instanceof l2) {
            wrapper = (l2) callbackFindViewById;
        } else {
            if (!(callbackFindViewById instanceof Toolbar)) {
                StringBuilder sbZ = jo.z("Can't make a decor toolbar out of ");
                sbZ.append(callbackFindViewById != null ? callbackFindViewById.getClass().getSimpleName() : "null");
                throw new IllegalStateException(sbZ.toString());
            }
            wrapper = ((Toolbar) callbackFindViewById).getWrapper();
        }
        this.e = wrapper;
        this.f = (ActionBarContextView) view.findViewById(R$id.action_context_bar);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(R$id.action_bar_container);
        this.d = actionBarContainer;
        l2 l2Var = this.e;
        if (l2Var == null || this.f == null || actionBarContainer == null) {
            throw new IllegalStateException(o0.class.getSimpleName() + " can only be used with a compatible window decor layout");
        }
        this.a = l2Var.getContext();
        boolean z = (this.e.s() & 4) != 0;
        if (z) {
            this.h = true;
        }
        Context context = this.a;
        this.e.r((context.getApplicationInfo().targetSdkVersion < 14) || z);
        B(context.getResources().getBoolean(R$bool.abc_action_bar_embed_tabs));
        TypedArray typedArrayObtainStyledAttributes = this.a.obtainStyledAttributes(null, R$styleable.ActionBar, R$attr.actionBarStyle, 0);
        if (typedArrayObtainStyledAttributes.getBoolean(R$styleable.ActionBar_hideOnContentScroll, false)) {
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.c;
            if (!actionBarOverlayLayout2.l) {
                throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
            }
            this.w = true;
            actionBarOverlayLayout2.setHideOnContentScrollEnabled(true);
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ActionBar_elevation, 0);
        if (dimensionPixelSize != 0) {
            ActionBarContainer actionBarContainer2 = this.d;
            AtomicInteger atomicInteger = ha.a;
            actionBarContainer2.setElevation(dimensionPixelSize);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public o0(Dialog dialog) {
        new ArrayList();
        this.m = new ArrayList<>();
        this.o = 0;
        this.p = true;
        this.t = true;
        this.x = new a();
        this.y = new b();
        this.z = new c();
        z(dialog.getWindow().getDecorView());
    }
}
