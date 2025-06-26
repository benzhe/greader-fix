package androidx.appcompat.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.OverScroller;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$id;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.b1;
import defpackage.ba;
import defpackage.ca;
import defpackage.da;
import defpackage.e8;
import defpackage.ha;
import defpackage.jo;
import defpackage.k2;
import defpackage.l2;
import defpackage.o0;
import defpackage.p1;
import defpackage.qa;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class ActionBarOverlayLayout extends ViewGroup implements k2, ba, ca {
    public static final int[] J = {R$attr.actionBarSize, R.attr.windowContentOverlay};
    public qa A;
    public qa B;
    public d C;
    public OverScroller D;
    public ViewPropertyAnimator E;
    public final AnimatorListenerAdapter F;
    public final Runnable G;
    public final Runnable H;
    public final da I;
    public int e;
    public int f;
    public ContentFrameLayout g;
    public ActionBarContainer h;
    public l2 i;
    public Drawable j;
    public boolean k;
    public boolean l;
    public boolean m;
    public boolean n;
    public boolean o;
    public int p;
    public int q;
    public final Rect r;
    public final Rect s;
    public final Rect t;
    public final Rect u;
    public final Rect v;
    public final Rect w;
    public final Rect x;
    public qa y;
    public qa z;

    public class a extends AnimatorListenerAdapter {
        public a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.E = null;
            actionBarOverlayLayout.o = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.E = null;
            actionBarOverlayLayout.o = false;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ActionBarOverlayLayout.this.o();
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.E = actionBarOverlayLayout.h.animate().translationY(0.0f).setListener(ActionBarOverlayLayout.this.F);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ActionBarOverlayLayout.this.o();
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.E = actionBarOverlayLayout.h.animate().translationY(-ActionBarOverlayLayout.this.h.getHeight()).setListener(ActionBarOverlayLayout.this.F);
        }
    }

    public interface d {
    }

    public static class e extends ViewGroup.MarginLayoutParams {
        public e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public e(int i, int i2) {
            super(i, i2);
        }

        public e(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public ActionBarOverlayLayout(Context context) {
        this(context, null);
    }

    @Override // defpackage.k2
    public boolean a() {
        q();
        return this.i.a();
    }

    @Override // defpackage.k2
    public boolean b() {
        q();
        return this.i.b();
    }

    @Override // defpackage.k2
    public boolean c() {
        q();
        return this.i.c();
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof e;
    }

    @Override // defpackage.k2
    public boolean d() {
        q();
        return this.i.d();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int translationY;
        super.draw(canvas);
        if (this.j == null || this.k) {
            return;
        }
        if (this.h.getVisibility() == 0) {
            translationY = (int) (this.h.getTranslationY() + this.h.getBottom() + 0.5f);
        } else {
            translationY = 0;
        }
        this.j.setBounds(0, translationY, getWidth(), this.j.getIntrinsicHeight() + translationY);
        this.j.draw(canvas);
    }

    @Override // defpackage.k2
    public boolean e() {
        q();
        return this.i.e();
    }

    @Override // defpackage.k2
    public void f(int i) {
        q();
        if (i == 2) {
            this.i.u();
        } else if (i == 5) {
            this.i.v();
        } else {
            if (i != 109) {
                return;
            }
            setOverlayMode(true);
        }
    }

    @Override // android.view.View
    public boolean fitSystemWindows(Rect rect) {
        return super.fitSystemWindows(rect);
    }

    @Override // defpackage.k2
    public void g() {
        q();
        this.i.f();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new e(-1, -1);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new e(getContext(), attributeSet);
    }

    public int getActionBarHideOffset() {
        ActionBarContainer actionBarContainer = this.h;
        if (actionBarContainer != null) {
            return -((int) actionBarContainer.getTranslationY());
        }
        return 0;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.I.a();
    }

    public CharSequence getTitle() {
        q();
        return this.i.getTitle();
    }

    @Override // defpackage.ca
    public void h(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        if (i5 == 0) {
            onNestedScroll(view, i, i2, i3, i4);
        }
    }

    @Override // defpackage.ba
    public void i(View view, int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            onNestedScroll(view, i, i2, i3, i4);
        }
    }

    @Override // defpackage.ba
    public boolean j(View view, View view2, int i, int i2) {
        return i2 == 0 && onStartNestedScroll(view, view2, i);
    }

    @Override // defpackage.ba
    public void k(View view, View view2, int i, int i2) {
        if (i2 == 0) {
            onNestedScrollAccepted(view, view2, i);
        }
    }

    @Override // defpackage.ba
    public void l(View view, int i) {
        if (i == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // defpackage.ba
    public void m(View view, int i, int i2, int[] iArr, int i3) {
        if (i3 == 0) {
            onNestedPreScroll(view, i, i2, iArr);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean n(android.view.View r3, android.graphics.Rect r4, boolean r5, boolean r6, boolean r7, boolean r8) {
        /*
            r2 = this;
            android.view.ViewGroup$LayoutParams r3 = r3.getLayoutParams()
            androidx.appcompat.widget.ActionBarOverlayLayout$e r3 = (androidx.appcompat.widget.ActionBarOverlayLayout.e) r3
            r0 = 1
            if (r5 == 0) goto L13
            int r5 = r3.leftMargin
            int r1 = r4.left
            if (r5 == r1) goto L13
            r3.leftMargin = r1
            r5 = 1
            goto L14
        L13:
            r5 = 0
        L14:
            if (r6 == 0) goto L1f
            int r6 = r3.topMargin
            int r1 = r4.top
            if (r6 == r1) goto L1f
            r3.topMargin = r1
            r5 = 1
        L1f:
            if (r8 == 0) goto L2a
            int r6 = r3.rightMargin
            int r8 = r4.right
            if (r6 == r8) goto L2a
            r3.rightMargin = r8
            r5 = 1
        L2a:
            if (r7 == 0) goto L35
            int r6 = r3.bottomMargin
            int r4 = r4.bottom
            if (r6 == r4) goto L35
            r3.bottomMargin = r4
            goto L36
        L35:
            r0 = r5
        L36:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionBarOverlayLayout.n(android.view.View, android.graphics.Rect, boolean, boolean, boolean, boolean):boolean");
    }

    public void o() {
        removeCallbacks(this.G);
        removeCallbacks(this.H);
        ViewPropertyAnimator viewPropertyAnimator = this.E;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    @Override // android.view.View
    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        q();
        Objects.requireNonNull(windowInsets);
        qa qaVar = new qa(windowInsets);
        boolean zN = n(this.h, new Rect(qaVar.c(), qaVar.e(), qaVar.d(), qaVar.b()), true, true, false, true);
        Rect rect = this.r;
        AtomicInteger atomicInteger = ha.a;
        WindowInsets windowInsetsJ = qaVar.j();
        if (windowInsetsJ != null) {
            qa.k(computeSystemWindowInsets(windowInsetsJ, rect));
        } else {
            rect.setEmpty();
        }
        Rect rect2 = this.r;
        qa qaVarH = qaVar.a.h(rect2.left, rect2.top, rect2.right, rect2.bottom);
        this.y = qaVarH;
        boolean z = true;
        if (!this.z.equals(qaVarH)) {
            this.z = this.y;
            zN = true;
        }
        if (this.s.equals(this.r)) {
            z = zN;
        } else {
            this.s.set(this.r);
        }
        if (z) {
            requestLayout();
        }
        return qaVar.a.a().a().a.b().j();
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        p(getContext());
        AtomicInteger atomicInteger = ha.a;
        requestApplyInsets();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        o();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                e eVar = (e) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i6 = ((ViewGroup.MarginLayoutParams) eVar).leftMargin + paddingLeft;
                int i7 = ((ViewGroup.MarginLayoutParams) eVar).topMargin + paddingTop;
                childAt.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int measuredHeight;
        q();
        measureChildWithMargins(this.h, i, 0, i2, 0);
        e eVar = (e) this.h.getLayoutParams();
        int iMax = Math.max(0, this.h.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) eVar).leftMargin + ((ViewGroup.MarginLayoutParams) eVar).rightMargin);
        int iMax2 = Math.max(0, this.h.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) eVar).topMargin + ((ViewGroup.MarginLayoutParams) eVar).bottomMargin);
        int iCombineMeasuredStates = View.combineMeasuredStates(0, this.h.getMeasuredState());
        AtomicInteger atomicInteger = ha.a;
        boolean z = (getWindowSystemUiVisibility() & RecyclerView.a0.FLAG_TMP_DETACHED) != 0;
        if (z) {
            measuredHeight = this.e;
            if (this.m && this.h.getTabContainer() != null) {
                measuredHeight += this.e;
            }
        } else {
            measuredHeight = this.h.getVisibility() != 8 ? this.h.getMeasuredHeight() : 0;
        }
        this.t.set(this.r);
        qa qaVar = this.y;
        this.A = qaVar;
        if (this.l || z) {
            e8 e8VarA = e8.a(qaVar.c(), this.A.e() + measuredHeight, this.A.d(), this.A.b() + 0);
            qa qaVar2 = this.A;
            qa.c bVar = Build.VERSION.SDK_INT >= 29 ? new qa.b(qaVar2) : new qa.a(qaVar2);
            bVar.c(e8VarA);
            this.A = bVar.a();
        } else {
            Rect rect = this.t;
            rect.top += measuredHeight;
            rect.bottom += 0;
            this.A = qaVar.a.h(0, measuredHeight, 0, 0);
        }
        n(this.g, this.t, true, true, true, true);
        if (!this.B.equals(this.A)) {
            qa qaVar3 = this.A;
            this.B = qaVar3;
            ha.e(this.g, qaVar3);
        }
        measureChildWithMargins(this.g, i, 0, i2, 0);
        e eVar2 = (e) this.g.getLayoutParams();
        int iMax3 = Math.max(iMax, this.g.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) eVar2).leftMargin + ((ViewGroup.MarginLayoutParams) eVar2).rightMargin);
        int iMax4 = Math.max(iMax2, this.g.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) eVar2).topMargin + ((ViewGroup.MarginLayoutParams) eVar2).bottomMargin);
        int iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates, this.g.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(getPaddingRight() + getPaddingLeft() + iMax3, getSuggestedMinimumWidth()), i, iCombineMeasuredStates2), View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + iMax4, getSuggestedMinimumHeight()), i2, iCombineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (!this.n || !z) {
            return false;
        }
        this.D.fling(0, 0, 0, (int) f2, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
        if (this.D.getFinalY() > this.h.getHeight()) {
            o();
            this.H.run();
        } else {
            o();
            this.G.run();
        }
        this.o = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedPreFling(View view, float f, float f2) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        int i5 = this.p + i2;
        this.p = i5;
        setActionBarHideOffset(i5);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScrollAccepted(View view, View view2, int i) {
        o0 o0Var;
        b1 b1Var;
        this.I.a = i;
        this.p = getActionBarHideOffset();
        o();
        d dVar = this.C;
        if (dVar == null || (b1Var = (o0Var = (o0) dVar).u) == null) {
            return;
        }
        b1Var.a();
        o0Var.u = null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onStartNestedScroll(View view, View view2, int i) {
        if ((i & 2) == 0 || this.h.getVisibility() != 0) {
            return false;
        }
        return this.n;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onStopNestedScroll(View view) {
        if (this.n && !this.o) {
            if (this.p <= this.h.getHeight()) {
                o();
                postDelayed(this.G, 600L);
            } else {
                o();
                postDelayed(this.H, 600L);
            }
        }
        d dVar = this.C;
        if (dVar != null) {
            Objects.requireNonNull((o0) dVar);
        }
    }

    @Override // android.view.View
    public void onWindowSystemUiVisibilityChanged(int i) {
        super.onWindowSystemUiVisibilityChanged(i);
        q();
        int i2 = this.q ^ i;
        this.q = i;
        boolean z = (i & 4) == 0;
        boolean z2 = (i & RecyclerView.a0.FLAG_TMP_DETACHED) != 0;
        d dVar = this.C;
        if (dVar != null) {
            ((o0) dVar).p = !z2;
            if (z || !z2) {
                o0 o0Var = (o0) dVar;
                if (o0Var.r) {
                    o0Var.r = false;
                    o0Var.C(true);
                }
            } else {
                o0 o0Var2 = (o0) dVar;
                if (!o0Var2.r) {
                    o0Var2.r = true;
                    o0Var2.C(true);
                }
            }
        }
        if ((i2 & RecyclerView.a0.FLAG_TMP_DETACHED) == 0 || this.C == null) {
            return;
        }
        AtomicInteger atomicInteger = ha.a;
        requestApplyInsets();
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        this.f = i;
        d dVar = this.C;
        if (dVar != null) {
            ((o0) dVar).o = i;
        }
    }

    public final void p(Context context) {
        TypedArray typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(J);
        this.e = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(1);
        this.j = drawable;
        setWillNotDraw(drawable == null);
        typedArrayObtainStyledAttributes.recycle();
        this.k = context.getApplicationInfo().targetSdkVersion < 19;
        this.D = new OverScroller(context);
    }

    public void q() {
        l2 wrapper;
        if (this.g == null) {
            this.g = (ContentFrameLayout) findViewById(R$id.action_bar_activity_content);
            this.h = (ActionBarContainer) findViewById(R$id.action_bar_container);
            KeyEvent.Callback callbackFindViewById = findViewById(R$id.action_bar);
            if (callbackFindViewById instanceof l2) {
                wrapper = (l2) callbackFindViewById;
            } else {
                if (!(callbackFindViewById instanceof Toolbar)) {
                    StringBuilder sbZ = jo.z("Can't make a decor toolbar out of ");
                    sbZ.append(callbackFindViewById.getClass().getSimpleName());
                    throw new IllegalStateException(sbZ.toString());
                }
                wrapper = ((Toolbar) callbackFindViewById).getWrapper();
            }
            this.i = wrapper;
        }
    }

    public void setActionBarHideOffset(int i) {
        o();
        this.h.setTranslationY(-Math.max(0, Math.min(i, this.h.getHeight())));
    }

    public void setActionBarVisibilityCallback(d dVar) {
        this.C = dVar;
        if (getWindowToken() != null) {
            ((o0) this.C).o = this.f;
            int i = this.q;
            if (i != 0) {
                onWindowSystemUiVisibilityChanged(i);
                AtomicInteger atomicInteger = ha.a;
                requestApplyInsets();
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean z) {
        this.m = z;
    }

    public void setHideOnContentScrollEnabled(boolean z) {
        if (z != this.n) {
            this.n = z;
            if (z) {
                return;
            }
            o();
            setActionBarHideOffset(0);
        }
    }

    public void setIcon(int i) {
        q();
        this.i.setIcon(i);
    }

    public void setLogo(int i) {
        q();
        this.i.l(i);
    }

    @Override // defpackage.k2
    public void setMenu(Menu menu, p1.a aVar) {
        q();
        this.i.setMenu(menu, aVar);
    }

    @Override // defpackage.k2
    public void setMenuPrepared() {
        q();
        this.i.setMenuPrepared();
    }

    public void setOverlayMode(boolean z) {
        this.l = z;
        this.k = z && getContext().getApplicationInfo().targetSdkVersion < 19;
    }

    public void setShowingForActionMode(boolean z) {
    }

    public void setUiOptions(int i) {
    }

    @Override // defpackage.k2
    public void setWindowCallback(Window.Callback callback) {
        q();
        this.i.setWindowCallback(callback);
    }

    @Override // defpackage.k2
    public void setWindowTitle(CharSequence charSequence) {
        q();
        this.i.setWindowTitle(charSequence);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f = 0;
        this.r = new Rect();
        this.s = new Rect();
        this.t = new Rect();
        this.u = new Rect();
        this.v = new Rect();
        this.w = new Rect();
        this.x = new Rect();
        qa qaVar = qa.b;
        this.y = qaVar;
        this.z = qaVar;
        this.A = qaVar;
        this.B = qaVar;
        this.F = new a();
        this.G = new b();
        this.H = new c();
        p(context);
        this.I = new da();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new e(layoutParams);
    }

    public void setIcon(Drawable drawable) {
        q();
        this.i.setIcon(drawable);
    }
}
