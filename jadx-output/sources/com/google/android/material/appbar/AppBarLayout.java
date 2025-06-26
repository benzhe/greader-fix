package com.google.android.material.appbar;

import android.animation.AnimatorInflater;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ScrollView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$integer;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import defpackage.a65;
import defpackage.b65;
import defpackage.c50;
import defpackage.d0;
import defpackage.ea;
import defpackage.fc5;
import defpackage.ha;
import defpackage.i55;
import defpackage.la5;
import defpackage.p0;
import defpackage.qa;
import defpackage.s55;
import defpackage.sa;
import defpackage.t55;
import defpackage.t85;
import defpackage.u55;
import defpackage.u75;
import defpackage.v55;
import defpackage.x55;
import defpackage.y55;
import defpackage.z9;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class AppBarLayout extends LinearLayout implements CoordinatorLayout.b {
    public static final int u = R$style.Widget_Design_AppBarLayout;
    public int e;
    public int f;
    public int g;
    public int h;
    public boolean i;
    public int j;
    public qa k;
    public List<b> l;
    public boolean m;
    public boolean n;
    public boolean o;
    public int p;
    public WeakReference<View> q;
    public ValueAnimator r;
    public int[] s;
    public Drawable t;

    public static class Behavior extends BaseBehavior<AppBarLayout> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    public static class ScrollingViewBehavior extends y55 {
        public ScrollingViewBehavior() {
        }

        public AppBarLayout E(List<View> list) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                View view = list.get(i);
                if (view instanceof AppBarLayout) {
                    return (AppBarLayout) view;
                }
            }
            return null;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public boolean d(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public boolean g(CoordinatorLayout coordinatorLayout, View view, View view2) throws Resources.NotFoundException {
            CoordinatorLayout.c cVar = ((CoordinatorLayout.f) view2.getLayoutParams()).a;
            if (cVar instanceof BaseBehavior) {
                ha.m(view, (((view2.getBottom() - view.getTop()) + ((BaseBehavior) cVar).j) + this.e) - D(view2));
            }
            if (!(view2 instanceof AppBarLayout)) {
                return false;
            }
            AppBarLayout appBarLayout = (AppBarLayout) view2;
            if (!appBarLayout.o) {
                return false;
            }
            appBarLayout.d(appBarLayout.e(view));
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public void h(CoordinatorLayout coordinatorLayout, View view, View view2) {
            if (view2 instanceof AppBarLayout) {
                ha.p(sa.a.h.a(), coordinatorLayout);
                ha.k(coordinatorLayout, 0);
                ha.p(sa.a.i.a(), coordinatorLayout);
                ha.k(coordinatorLayout, 0);
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public boolean t(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z) {
            AppBarLayout appBarLayoutE = E(coordinatorLayout.o(view));
            if (appBarLayoutE != null) {
                rect.offset(view.getLeft(), view.getTop());
                Rect rect2 = this.c;
                rect2.set(0, 0, coordinatorLayout.getWidth(), coordinatorLayout.getHeight());
                if (!rect2.contains(rect)) {
                    appBarLayoutE.setExpanded(false, !z);
                    return true;
                }
            }
            return false;
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ScrollingViewBehavior_Layout);
            this.f = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ScrollingViewBehavior_Layout_behavior_overlapTop, 0);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public class a implements ea {
        public a() {
        }

        @Override // defpackage.ea
        public qa a(View view, qa qaVar) {
            AppBarLayout appBarLayout = AppBarLayout.this;
            Objects.requireNonNull(appBarLayout);
            AtomicInteger atomicInteger = ha.a;
            qa qaVar2 = appBarLayout.getFitsSystemWindows() ? qaVar : null;
            if (!Objects.equals(appBarLayout.k, qaVar2)) {
                appBarLayout.k = qaVar2;
                appBarLayout.g();
                appBarLayout.requestLayout();
            }
            return qaVar;
        }
    }

    public interface b<T extends AppBarLayout> {
        void a(T t, int i);
    }

    public interface d extends b<AppBarLayout> {
    }

    public AppBarLayout(Context context) {
        this(context, null);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public c generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LinearLayout.LayoutParams ? new c((LinearLayout.LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new c((ViewGroup.MarginLayoutParams) layoutParams) : new c(layoutParams);
    }

    public void b(int i) {
        this.e = i;
        if (!willNotDraw()) {
            AtomicInteger atomicInteger = ha.a;
            postInvalidateOnAnimation();
        }
        List<b> list = this.l;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                b bVar = this.l.get(i2);
                if (bVar != null) {
                    bVar.a(this, i);
                }
            }
        }
    }

    public final void c(boolean z, boolean z2, boolean z3) {
        this.j = (z ? 1 : 2) | (z2 ? 4 : 0) | (z3 ? 8 : 0);
        requestLayout();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof c;
    }

    public boolean d(boolean z) throws Resources.NotFoundException {
        if (this.n == z) {
            return false;
        }
        this.n = z;
        refreshDrawableState();
        if (this.o && (getBackground() instanceof la5)) {
            la5 la5Var = (la5) getBackground();
            float dimension = getResources().getDimension(R$dimen.design_appbar_elevation);
            float f = z ? 0.0f : dimension;
            if (!z) {
                dimension = 0.0f;
            }
            ValueAnimator valueAnimator = this.r;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f, dimension);
            this.r = valueAnimatorOfFloat;
            valueAnimatorOfFloat.setDuration(getResources().getInteger(R$integer.app_bar_elevation_anim_duration));
            this.r.setInterpolator(i55.a);
            this.r.addUpdateListener(new s55(this, la5Var));
            this.r.start();
        }
        return true;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.t != null && getTopInset() > 0) {
            int iSave = canvas.save();
            canvas.translate(0.0f, -this.e);
            this.t.draw(canvas);
            canvas.restoreToCount(iSave);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.t;
        if (drawable != null && drawable.isStateful() && drawable.setState(drawableState)) {
            invalidateDrawable(drawable);
        }
    }

    public boolean e(View view) {
        int i;
        if (this.q == null && (i = this.p) != -1) {
            View viewFindViewById = view != null ? view.findViewById(i) : null;
            if (viewFindViewById == null && (getParent() instanceof ViewGroup)) {
                viewFindViewById = ((ViewGroup) getParent()).findViewById(this.p);
            }
            if (viewFindViewById != null) {
                this.q = new WeakReference<>(viewFindViewById);
            }
        }
        WeakReference<View> weakReference = this.q;
        View view2 = weakReference != null ? weakReference.get() : null;
        if (view2 != null) {
            view = view2;
        }
        return view != null && (view.canScrollVertically(-1) || view.getScrollY() > 0);
    }

    public final boolean f() {
        if (getChildCount() <= 0) {
            return false;
        }
        View childAt = getChildAt(0);
        if (childAt.getVisibility() == 8) {
            return false;
        }
        AtomicInteger atomicInteger = ha.a;
        return !childAt.getFitsSystemWindows();
    }

    public final void g() {
        setWillNotDraw(!(this.t != null && getTopInset() > 0));
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new c(-1, -2);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public CoordinatorLayout.c<AppBarLayout> getBehavior() {
        return new Behavior();
    }

    public int getDownNestedPreScrollRange() {
        int minimumHeight;
        int i = this.g;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            c cVar = (c) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i3 = cVar.a;
            if ((i3 & 5) != 5) {
                if (i2 > 0) {
                    break;
                }
            } else {
                int i4 = ((LinearLayout.LayoutParams) cVar).topMargin + ((LinearLayout.LayoutParams) cVar).bottomMargin;
                if ((i3 & 8) != 0) {
                    AtomicInteger atomicInteger = ha.a;
                    minimumHeight = i4 + childAt.getMinimumHeight();
                } else if ((i3 & 2) != 0) {
                    AtomicInteger atomicInteger2 = ha.a;
                    minimumHeight = i4 + (measuredHeight - childAt.getMinimumHeight());
                } else {
                    minimumHeight = i4 + measuredHeight;
                }
                if (childCount == 0) {
                    AtomicInteger atomicInteger3 = ha.a;
                    if (childAt.getFitsSystemWindows()) {
                        minimumHeight = Math.min(minimumHeight, measuredHeight - getTopInset());
                    }
                }
                i2 += minimumHeight;
            }
        }
        int iMax = Math.max(0, i2);
        this.g = iMax;
        return iMax;
    }

    public int getDownNestedScrollRange() {
        int i = this.h;
        if (i != -1) {
            return i;
        }
        int childCount = getChildCount();
        int i2 = 0;
        int minimumHeight = 0;
        while (true) {
            if (i2 >= childCount) {
                break;
            }
            View childAt = getChildAt(i2);
            c cVar = (c) childAt.getLayoutParams();
            int measuredHeight = ((LinearLayout.LayoutParams) cVar).topMargin + ((LinearLayout.LayoutParams) cVar).bottomMargin + childAt.getMeasuredHeight();
            int i3 = cVar.a;
            if ((i3 & 1) == 0) {
                break;
            }
            minimumHeight += measuredHeight;
            if ((i3 & 2) != 0) {
                AtomicInteger atomicInteger = ha.a;
                minimumHeight -= childAt.getMinimumHeight();
                break;
            }
            i2++;
        }
        int iMax = Math.max(0, minimumHeight);
        this.h = iMax;
        return iMax;
    }

    public int getLiftOnScrollTargetViewId() {
        return this.p;
    }

    public final int getMinimumHeightForVisibleOverlappingContent() {
        int topInset = getTopInset();
        AtomicInteger atomicInteger = ha.a;
        int minimumHeight = getMinimumHeight();
        if (minimumHeight == 0) {
            int childCount = getChildCount();
            minimumHeight = childCount >= 1 ? getChildAt(childCount - 1).getMinimumHeight() : 0;
            if (minimumHeight == 0) {
                return getHeight() / 3;
            }
        }
        return (minimumHeight * 2) + topInset;
    }

    public int getPendingAction() {
        return this.j;
    }

    public Drawable getStatusBarForeground() {
        return this.t;
    }

    @Deprecated
    public float getTargetElevation() {
        return 0.0f;
    }

    public final int getTopInset() {
        qa qaVar = this.k;
        if (qaVar != null) {
            return qaVar.e();
        }
        return 0;
    }

    public final int getTotalScrollRange() {
        int i = this.f;
        if (i != -1) {
            return i;
        }
        int childCount = getChildCount();
        int i2 = 0;
        int minimumHeight = 0;
        while (true) {
            if (i2 >= childCount) {
                break;
            }
            View childAt = getChildAt(i2);
            c cVar = (c) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i3 = cVar.a;
            if ((i3 & 1) == 0) {
                break;
            }
            int topInset = measuredHeight + ((LinearLayout.LayoutParams) cVar).topMargin + ((LinearLayout.LayoutParams) cVar).bottomMargin + minimumHeight;
            if (i2 == 0) {
                AtomicInteger atomicInteger = ha.a;
                if (childAt.getFitsSystemWindows()) {
                    topInset -= getTopInset();
                }
            }
            minimumHeight = topInset;
            if ((i3 & 2) != 0) {
                AtomicInteger atomicInteger2 = ha.a;
                minimumHeight -= childAt.getMinimumHeight();
                break;
            }
            i2++;
        }
        int iMax = Math.max(0, minimumHeight);
        this.f = iMax;
        return iMax;
    }

    public int getUpNestedPreScrollRange() {
        return getTotalScrollRange();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable background = getBackground();
        if (background instanceof la5) {
            c50.I0(this, (la5) background);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i) {
        if (this.s == null) {
            this.s = new int[4];
        }
        int[] iArr = this.s;
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + iArr.length);
        boolean z = this.m;
        int i2 = R$attr.state_liftable;
        if (!z) {
            i2 = -i2;
        }
        iArr[0] = i2;
        iArr[1] = (z && this.n) ? R$attr.state_lifted : -R$attr.state_lifted;
        int i3 = R$attr.state_collapsible;
        if (!z) {
            i3 = -i3;
        }
        iArr[2] = i3;
        iArr[3] = (z && this.n) ? R$attr.state_collapsed : -R$attr.state_collapsed;
        return LinearLayout.mergeDrawableStates(iArrOnCreateDrawableState, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        WeakReference<View> weakReference = this.q;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.q = null;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean z2;
        super.onLayout(z, i, i2, i3, i4);
        AtomicInteger atomicInteger = ha.a;
        boolean z3 = true;
        if (getFitsSystemWindows() && f()) {
            int topInset = getTopInset();
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                ha.m(getChildAt(childCount), topInset);
            }
        }
        this.f = -1;
        this.g = -1;
        this.h = -1;
        this.i = false;
        int childCount2 = getChildCount();
        int i5 = 0;
        while (true) {
            if (i5 >= childCount2) {
                break;
            }
            if (((c) getChildAt(i5).getLayoutParams()).b != null) {
                this.i = true;
                break;
            }
            i5++;
        }
        Drawable drawable = this.t;
        if (drawable != null) {
            drawable.setBounds(0, 0, getWidth(), getTopInset());
        }
        if (!this.o) {
            int childCount3 = getChildCount();
            int i6 = 0;
            while (true) {
                if (i6 >= childCount3) {
                    z2 = false;
                    break;
                }
                int i7 = ((c) getChildAt(i6).getLayoutParams()).a;
                if ((i7 & 1) == 1 && (i7 & 10) != 0) {
                    z2 = true;
                    break;
                }
                i6++;
            }
            if (!z2) {
                z3 = false;
            }
        }
        if (this.m != z3) {
            this.m = z3;
            refreshDrawableState();
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i2);
        if (mode != 1073741824) {
            AtomicInteger atomicInteger = ha.a;
            if (getFitsSystemWindows() && f()) {
                int measuredHeight = getMeasuredHeight();
                if (mode == Integer.MIN_VALUE) {
                    measuredHeight = d0.h.l(getTopInset() + getMeasuredHeight(), 0, View.MeasureSpec.getSize(i2));
                } else if (mode == 0) {
                    measuredHeight += getTopInset();
                }
                setMeasuredDimension(getMeasuredWidth(), measuredHeight);
            }
        }
        this.f = -1;
        this.g = -1;
        this.h = -1;
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        c50.H0(this, f);
    }

    public void setExpanded(boolean z) {
        AtomicInteger atomicInteger = ha.a;
        setExpanded(z, isLaidOut());
    }

    public void setLiftOnScroll(boolean z) {
        this.o = z;
    }

    public void setLiftOnScrollTargetViewId(int i) {
        this.p = i;
        WeakReference<View> weakReference = this.q;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.q = null;
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i) {
        if (i != 1) {
            throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
        }
        super.setOrientation(i);
    }

    public void setStatusBarForeground(Drawable drawable) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Drawable drawable2 = this.t;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.t = drawableMutate;
            if (drawableMutate != null) {
                if (drawableMutate.isStateful()) {
                    this.t.setState(getDrawableState());
                }
                Drawable drawable3 = this.t;
                AtomicInteger atomicInteger = ha.a;
                d0.h.Y(drawable3, getLayoutDirection());
                this.t.setVisible(getVisibility() == 0, false);
                this.t.setCallback(this);
            }
            g();
            AtomicInteger atomicInteger2 = ha.a;
            postInvalidateOnAnimation();
        }
    }

    public void setStatusBarForegroundColor(int i) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        setStatusBarForeground(new ColorDrawable(i));
    }

    public void setStatusBarForegroundResource(int i) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        setStatusBarForeground(p0.b(getContext(), i));
    }

    @Deprecated
    public void setTargetElevation(float f) throws Resources.NotFoundException {
        b65.a(this, f);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.t;
        if (drawable != null) {
            drawable.setVisible(z, false);
        }
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.t;
    }

    public static class BaseBehavior<T extends AppBarLayout> extends x55<T> {
        public int j;
        public int k;
        public ValueAnimator l;
        public int m;
        public boolean n;
        public float o;
        public WeakReference<View> p;

        public BaseBehavior() {
            this.m = -1;
        }

        public static boolean I(int i, int i2) {
            return (i & i2) == i2;
        }

        @Override // defpackage.x55
        public int D() {
            return B() + this.j;
        }

        /* JADX WARN: Removed duplicated region for block: B:32:0x008f  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x0094  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00ae  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x00b1  */
        @Override // defpackage.x55
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int G(androidx.coordinatorlayout.widget.CoordinatorLayout r8, android.view.View r9, int r10, int r11, int r12) throws android.content.res.Resources.NotFoundException {
            /*
                r7 = this;
                com.google.android.material.appbar.AppBarLayout r9 = (com.google.android.material.appbar.AppBarLayout) r9
                int r0 = r7.D()
                r1 = 0
                if (r11 == 0) goto Lbc
                if (r0 < r11) goto Lbc
                if (r0 > r12) goto Lbc
                int r3 = d0.h.l(r10, r11, r12)
                if (r0 == r3) goto Lbe
                boolean r10 = r9.i
                if (r10 == 0) goto L8a
                int r10 = java.lang.Math.abs(r3)
                int r11 = r9.getChildCount()
                r12 = 0
            L20:
                if (r12 >= r11) goto L8a
                android.view.View r2 = r9.getChildAt(r12)
                android.view.ViewGroup$LayoutParams r4 = r2.getLayoutParams()
                com.google.android.material.appbar.AppBarLayout$c r4 = (com.google.android.material.appbar.AppBarLayout.c) r4
                android.view.animation.Interpolator r5 = r4.b
                int r6 = r2.getTop()
                if (r10 < r6) goto L87
                int r6 = r2.getBottom()
                if (r10 > r6) goto L87
                if (r5 == 0) goto L8a
                int r11 = r4.a
                r12 = r11 & 1
                if (r12 == 0) goto L59
                int r12 = r2.getHeight()
                int r6 = r4.topMargin
                int r12 = r12 + r6
                int r4 = r4.bottomMargin
                int r12 = r12 + r4
                int r12 = r12 + r1
                r11 = r11 & 2
                if (r11 == 0) goto L5a
                java.util.concurrent.atomic.AtomicInteger r11 = defpackage.ha.a
                int r11 = r2.getMinimumHeight()
                int r12 = r12 - r11
                goto L5a
            L59:
                r12 = 0
            L5a:
                java.util.concurrent.atomic.AtomicInteger r11 = defpackage.ha.a
                boolean r11 = r2.getFitsSystemWindows()
                if (r11 == 0) goto L67
                int r11 = r9.getTopInset()
                int r12 = r12 - r11
            L67:
                if (r12 <= 0) goto L8a
                int r11 = r2.getTop()
                int r10 = r10 - r11
                float r11 = (float) r12
                float r10 = (float) r10
                float r10 = r10 / r11
                float r10 = r5.getInterpolation(r10)
                float r10 = r10 * r11
                int r10 = java.lang.Math.round(r10)
                int r11 = java.lang.Integer.signum(r3)
                int r12 = r2.getTop()
                int r12 = r12 + r10
                int r12 = r12 * r11
                goto L8b
            L87:
                int r12 = r12 + 1
                goto L20
            L8a:
                r12 = r3
            L8b:
                a65 r10 = r7.a
                if (r10 == 0) goto L94
                boolean r1 = r10.b(r12)
                goto L96
            L94:
                r7.b = r12
            L96:
                int r10 = r0 - r3
                int r11 = r3 - r12
                r7.j = r11
                if (r1 != 0) goto La5
                boolean r11 = r9.i
                if (r11 == 0) goto La5
                r8.g(r9)
            La5:
                int r11 = r7.B()
                r9.b(r11)
                if (r3 >= r0) goto Lb1
                r11 = -1
                r4 = -1
                goto Lb3
            Lb1:
                r11 = 1
                r4 = 1
            Lb3:
                r5 = 0
                r0 = r7
                r1 = r8
                r2 = r9
                r0.P(r1, r2, r3, r4, r5)
                r1 = r10
                goto Lbe
            Lbc:
                r7.j = r1
            Lbe:
                r7.O(r8, r9)
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.BaseBehavior.G(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, int, int, int):int");
        }

        public final void H(CoordinatorLayout coordinatorLayout, T t, int i, float f) {
            int iAbs = Math.abs(D() - i);
            float fAbs = Math.abs(f);
            int iRound = fAbs > 0.0f ? Math.round((iAbs / fAbs) * 1000.0f) * 3 : (int) (((iAbs / t.getHeight()) + 1.0f) * 150.0f);
            int iD = D();
            if (iD == i) {
                ValueAnimator valueAnimator = this.l;
                if (valueAnimator == null || !valueAnimator.isRunning()) {
                    return;
                }
                this.l.cancel();
                return;
            }
            ValueAnimator valueAnimator2 = this.l;
            if (valueAnimator2 == null) {
                ValueAnimator valueAnimator3 = new ValueAnimator();
                this.l = valueAnimator3;
                valueAnimator3.setInterpolator(i55.e);
                this.l.addUpdateListener(new t55(this, coordinatorLayout, t));
            } else {
                valueAnimator2.cancel();
            }
            this.l.setDuration(Math.min(iRound, 600));
            this.l.setIntValues(iD, i);
            this.l.start();
        }

        public final View J(CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                if ((childAt instanceof z9) || (childAt instanceof ListView) || (childAt instanceof ScrollView)) {
                    return childAt;
                }
            }
            return null;
        }

        public void K(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int[] iArr) throws Resources.NotFoundException {
            int i2;
            int downNestedPreScrollRange;
            if (i != 0) {
                if (i < 0) {
                    int i3 = -appBarLayout.getTotalScrollRange();
                    i2 = i3;
                    downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange() + i3;
                } else {
                    i2 = -appBarLayout.getUpNestedPreScrollRange();
                    downNestedPreScrollRange = 0;
                }
                if (i2 != downNestedPreScrollRange) {
                    iArr[1] = E(coordinatorLayout, appBarLayout, i, i2, downNestedPreScrollRange);
                }
            }
            if (appBarLayout.o) {
                appBarLayout.d(appBarLayout.e(view));
            }
        }

        public void L(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i, int[] iArr) {
            if (i < 0) {
                iArr[1] = E(coordinatorLayout, appBarLayout, i, -appBarLayout.getDownNestedScrollRange(), 0);
            }
            if (i == 0) {
                O(coordinatorLayout, appBarLayout);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x002a  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean M(androidx.coordinatorlayout.widget.CoordinatorLayout r3, com.google.android.material.appbar.AppBarLayout r4, android.view.View r5, int r6, int r7) {
            /*
                r2 = this;
                r6 = r6 & 2
                r0 = 1
                r1 = 0
                if (r6 == 0) goto L2a
                boolean r6 = r4.o
                if (r6 != 0) goto L2b
                int r6 = r4.getTotalScrollRange()
                if (r6 == 0) goto L12
                r6 = 1
                goto L13
            L12:
                r6 = 0
            L13:
                if (r6 == 0) goto L26
                int r3 = r3.getHeight()
                int r5 = r5.getHeight()
                int r3 = r3 - r5
                int r4 = r4.getHeight()
                if (r3 > r4) goto L26
                r3 = 1
                goto L27
            L26:
                r3 = 0
            L27:
                if (r3 == 0) goto L2a
                goto L2b
            L2a:
                r0 = 0
            L2b:
                if (r0 == 0) goto L34
                android.animation.ValueAnimator r3 = r2.l
                if (r3 == 0) goto L34
                r3.cancel()
            L34:
                r3 = 0
                r2.p = r3
                r2.k = r7
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.BaseBehavior.M(androidx.coordinatorlayout.widget.CoordinatorLayout, com.google.android.material.appbar.AppBarLayout, android.view.View, int, int):boolean");
        }

        public final void N(CoordinatorLayout coordinatorLayout, T t) {
            int iD = D();
            int childCount = t.getChildCount();
            int i = 0;
            while (true) {
                if (i >= childCount) {
                    i = -1;
                    break;
                }
                View childAt = t.getChildAt(i);
                int top = childAt.getTop();
                int bottom = childAt.getBottom();
                c cVar = (c) childAt.getLayoutParams();
                if (I(cVar.a, 32)) {
                    top -= ((LinearLayout.LayoutParams) cVar).topMargin;
                    bottom += ((LinearLayout.LayoutParams) cVar).bottomMargin;
                }
                int i2 = -iD;
                if (top <= i2 && bottom >= i2) {
                    break;
                } else {
                    i++;
                }
            }
            if (i >= 0) {
                View childAt2 = t.getChildAt(i);
                c cVar2 = (c) childAt2.getLayoutParams();
                int i3 = cVar2.a;
                if ((i3 & 17) == 17) {
                    int i4 = -childAt2.getTop();
                    int minimumHeight = -childAt2.getBottom();
                    if (i == t.getChildCount() - 1) {
                        minimumHeight += t.getTopInset();
                    }
                    if (I(i3, 2)) {
                        AtomicInteger atomicInteger = ha.a;
                        minimumHeight += childAt2.getMinimumHeight();
                    } else if (I(i3, 5)) {
                        AtomicInteger atomicInteger2 = ha.a;
                        int minimumHeight2 = childAt2.getMinimumHeight() + minimumHeight;
                        if (iD < minimumHeight2) {
                            i4 = minimumHeight2;
                        } else {
                            minimumHeight = minimumHeight2;
                        }
                    }
                    if (I(i3, 32)) {
                        i4 += ((LinearLayout.LayoutParams) cVar2).topMargin;
                        minimumHeight -= ((LinearLayout.LayoutParams) cVar2).bottomMargin;
                    }
                    if (iD < (minimumHeight + i4) / 2) {
                        i4 = minimumHeight;
                    }
                    H(coordinatorLayout, t, d0.h.l(i4, -t.getTotalScrollRange(), 0), 0.0f);
                }
            }
        }

        public final void O(CoordinatorLayout coordinatorLayout, T t) {
            sa.a aVar = sa.a.h;
            ha.p(aVar.a(), coordinatorLayout);
            ha.k(coordinatorLayout, 0);
            sa.a aVar2 = sa.a.i;
            ha.p(aVar2.a(), coordinatorLayout);
            ha.k(coordinatorLayout, 0);
            View viewJ = J(coordinatorLayout);
            if (viewJ == null || t.getTotalScrollRange() == 0 || !(((CoordinatorLayout.f) viewJ.getLayoutParams()).a instanceof ScrollingViewBehavior)) {
                return;
            }
            if (D() != (-t.getTotalScrollRange()) && viewJ.canScrollVertically(1)) {
                ha.q(coordinatorLayout, aVar, null, new v55(this, t, false));
            }
            if (D() != 0) {
                if (!viewJ.canScrollVertically(-1)) {
                    ha.q(coordinatorLayout, aVar2, null, new v55(this, t, true));
                    return;
                }
                int i = -t.getDownNestedPreScrollRange();
                if (i != 0) {
                    ha.q(coordinatorLayout, aVar2, null, new u55(this, coordinatorLayout, t, viewJ, i));
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x005d  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void P(androidx.coordinatorlayout.widget.CoordinatorLayout r7, T r8, int r9, int r10, boolean r11) throws android.content.res.Resources.NotFoundException {
            /*
                r6 = this;
                int r0 = java.lang.Math.abs(r9)
                int r1 = r8.getChildCount()
                r2 = 0
                r3 = 0
            La:
                if (r3 >= r1) goto L20
                android.view.View r4 = r8.getChildAt(r3)
                int r5 = r4.getTop()
                if (r0 < r5) goto L1d
                int r5 = r4.getBottom()
                if (r0 > r5) goto L1d
                goto L21
            L1d:
                int r3 = r3 + 1
                goto La
            L20:
                r4 = 0
            L21:
                if (r4 == 0) goto L9f
                android.view.ViewGroup$LayoutParams r0 = r4.getLayoutParams()
                com.google.android.material.appbar.AppBarLayout$c r0 = (com.google.android.material.appbar.AppBarLayout.c) r0
                int r0 = r0.a
                r1 = r0 & 1
                r3 = 1
                if (r1 == 0) goto L5d
                java.util.concurrent.atomic.AtomicInteger r1 = defpackage.ha.a
                int r1 = r4.getMinimumHeight()
                if (r10 <= 0) goto L4a
                r10 = r0 & 12
                if (r10 == 0) goto L4a
                int r9 = -r9
                int r10 = r4.getBottom()
                int r10 = r10 - r1
                int r0 = r8.getTopInset()
                int r10 = r10 - r0
                if (r9 < r10) goto L5d
                goto L5b
            L4a:
                r10 = r0 & 2
                if (r10 == 0) goto L5d
                int r9 = -r9
                int r10 = r4.getBottom()
                int r10 = r10 - r1
                int r0 = r8.getTopInset()
                int r10 = r10 - r0
                if (r9 < r10) goto L5d
            L5b:
                r9 = 1
                goto L5e
            L5d:
                r9 = 0
            L5e:
                boolean r10 = r8.o
                if (r10 == 0) goto L6a
                android.view.View r9 = r6.J(r7)
                boolean r9 = r8.e(r9)
            L6a:
                boolean r9 = r8.d(r9)
                if (r11 != 0) goto L9c
                if (r9 == 0) goto L9f
                java.util.List r7 = r7.p(r8)
                int r9 = r7.size()
                r10 = 0
            L7b:
                if (r10 >= r9) goto L9a
                java.lang.Object r11 = r7.get(r10)
                android.view.View r11 = (android.view.View) r11
                android.view.ViewGroup$LayoutParams r11 = r11.getLayoutParams()
                androidx.coordinatorlayout.widget.CoordinatorLayout$f r11 = (androidx.coordinatorlayout.widget.CoordinatorLayout.f) r11
                androidx.coordinatorlayout.widget.CoordinatorLayout$c r11 = r11.a
                boolean r0 = r11 instanceof com.google.android.material.appbar.AppBarLayout.ScrollingViewBehavior
                if (r0 == 0) goto L97
                com.google.android.material.appbar.AppBarLayout$ScrollingViewBehavior r11 = (com.google.android.material.appbar.AppBarLayout.ScrollingViewBehavior) r11
                int r7 = r11.f
                if (r7 == 0) goto L9a
                r2 = 1
                goto L9a
            L97:
                int r10 = r10 + 1
                goto L7b
            L9a:
                if (r2 == 0) goto L9f
            L9c:
                r8.jumpDrawablesToCurrentState()
            L9f:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.BaseBehavior.P(androidx.coordinatorlayout.widget.CoordinatorLayout, com.google.android.material.appbar.AppBarLayout, int, int, boolean):void");
        }

        @Override // defpackage.z55, androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public boolean k(CoordinatorLayout coordinatorLayout, View view, int i) throws Resources.NotFoundException {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            super.k(coordinatorLayout, appBarLayout, i);
            int pendingAction = appBarLayout.getPendingAction();
            int i2 = this.m;
            if (i2 >= 0 && (pendingAction & 8) == 0) {
                View childAt = appBarLayout.getChildAt(i2);
                int i3 = -childAt.getBottom();
                F(coordinatorLayout, appBarLayout, this.n ? appBarLayout.getTopInset() + childAt.getMinimumHeight() + i3 : Math.round(childAt.getHeight() * this.o) + i3);
            } else if (pendingAction != 0) {
                boolean z = (pendingAction & 4) != 0;
                if ((pendingAction & 2) != 0) {
                    int i4 = -appBarLayout.getUpNestedPreScrollRange();
                    if (z) {
                        H(coordinatorLayout, appBarLayout, i4, 0.0f);
                    } else {
                        F(coordinatorLayout, appBarLayout, i4);
                    }
                } else if ((pendingAction & 1) != 0) {
                    if (z) {
                        H(coordinatorLayout, appBarLayout, 0, 0.0f);
                    } else {
                        F(coordinatorLayout, appBarLayout, 0);
                    }
                }
            }
            appBarLayout.j = 0;
            this.m = -1;
            int iL = d0.h.l(B(), -appBarLayout.getTotalScrollRange(), 0);
            a65 a65Var = this.a;
            if (a65Var != null) {
                a65Var.b(iL);
            } else {
                this.b = iL;
            }
            P(coordinatorLayout, appBarLayout, B(), 0, true);
            appBarLayout.b(B());
            O(coordinatorLayout, appBarLayout);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public boolean l(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int i4) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            if (((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.f) appBarLayout.getLayoutParams())).height != -2) {
                return false;
            }
            coordinatorLayout.x(appBarLayout, i, i2, View.MeasureSpec.makeMeasureSpec(0, 0), i4);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public /* bridge */ /* synthetic */ void p(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2, int[] iArr, int i3) throws Resources.NotFoundException {
            K(coordinatorLayout, (AppBarLayout) view, view2, i2, iArr);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public /* bridge */ /* synthetic */ void r(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2, int i3, int i4, int i5, int[] iArr) {
            L(coordinatorLayout, (AppBarLayout) view, i4, iArr);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public void u(CoordinatorLayout coordinatorLayout, View view, Parcelable parcelable) {
            if (!(parcelable instanceof SavedState)) {
                this.m = -1;
                return;
            }
            SavedState savedState = (SavedState) parcelable;
            this.m = savedState.g;
            this.o = savedState.h;
            this.n = savedState.i;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public Parcelable v(CoordinatorLayout coordinatorLayout, View view) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            AbsSavedState absSavedState = View.BaseSavedState.EMPTY_STATE;
            int iB = B();
            int childCount = appBarLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = appBarLayout.getChildAt(i);
                int bottom = childAt.getBottom() + iB;
                if (childAt.getTop() + iB <= 0 && bottom >= 0) {
                    SavedState savedState = new SavedState(absSavedState);
                    savedState.g = i;
                    AtomicInteger atomicInteger = ha.a;
                    savedState.i = bottom == appBarLayout.getTopInset() + childAt.getMinimumHeight();
                    savedState.h = bottom / childAt.getHeight();
                    return savedState;
                }
            }
            return absSavedState;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public /* bridge */ /* synthetic */ boolean x(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i, int i2) {
            return M(coordinatorLayout, (AppBarLayout) view, view2, i, i2);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public void z(CoordinatorLayout coordinatorLayout, View view, View view2, int i) throws Resources.NotFoundException {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            if (this.k == 0 || i == 1) {
                N(coordinatorLayout, appBarLayout);
                if (appBarLayout.o) {
                    appBarLayout.d(appBarLayout.e(view2));
                }
            }
            this.p = new WeakReference<>(view2);
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.m = -1;
        }

        public static class SavedState extends androidx.customview.view.AbsSavedState {
            public static final Parcelable.Creator<SavedState> CREATOR = new a();
            public int g;
            public float h;
            public boolean i;

            public static class a implements Parcelable.ClassLoaderCreator<SavedState> {
                @Override // android.os.Parcelable.ClassLoaderCreator
                public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return new SavedState(parcel, classLoader);
                }

                @Override // android.os.Parcelable.Creator
                public Object[] newArray(int i) {
                    return new SavedState[i];
                }

                @Override // android.os.Parcelable.Creator
                public Object createFromParcel(Parcel parcel) {
                    return new SavedState(parcel, null);
                }
            }

            public SavedState(Parcel parcel, ClassLoader classLoader) {
                super(parcel, classLoader);
                this.g = parcel.readInt();
                this.h = parcel.readFloat();
                this.i = parcel.readByte() != 0;
            }

            @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeParcelable(this.e, i);
                parcel.writeInt(this.g);
                parcel.writeFloat(this.h);
                parcel.writeByte(this.i ? (byte) 1 : (byte) 0);
            }

            public SavedState(Parcelable parcelable) {
                super(parcelable);
            }
        }
    }

    public AppBarLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.appBarLayoutStyle);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LinearLayout.LayoutParams generateDefaultLayoutParams() {
        return new c(-1, -2);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Illegal instructions before constructor call */
    public AppBarLayout(Context context, AttributeSet attributeSet, int i) throws IllegalAccessException, Resources.NotFoundException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        int i2 = u;
        super(fc5.a(context, attributeSet, i, i2), attributeSet, i);
        this.f = -1;
        this.g = -1;
        this.h = -1;
        this.j = 0;
        Context context2 = getContext();
        setOrientation(1);
        int i3 = Build.VERSION.SDK_INT;
        setOutlineProvider(ViewOutlineProvider.BOUNDS);
        Context context3 = getContext();
        TypedArray typedArrayD = t85.d(context3, attributeSet, b65.a, i, i2, new int[0]);
        try {
            if (typedArrayD.hasValue(0)) {
                setStateListAnimator(AnimatorInflater.loadStateListAnimator(context3, typedArrayD.getResourceId(0, 0)));
            }
            typedArrayD.recycle();
            TypedArray typedArrayD2 = t85.d(context2, attributeSet, R$styleable.AppBarLayout, i, i2, new int[0]);
            Drawable drawable = typedArrayD2.getDrawable(R$styleable.AppBarLayout_android_background);
            AtomicInteger atomicInteger = ha.a;
            setBackground(drawable);
            if (getBackground() instanceof ColorDrawable) {
                ColorDrawable colorDrawable = (ColorDrawable) getBackground();
                la5 la5Var = new la5();
                la5Var.t(ColorStateList.valueOf(colorDrawable.getColor()));
                la5Var.e.b = new u75(context2);
                la5Var.E();
                setBackground(la5Var);
            }
            int i4 = R$styleable.AppBarLayout_expanded;
            if (typedArrayD2.hasValue(i4)) {
                c(typedArrayD2.getBoolean(i4, false), false, false);
            }
            if (typedArrayD2.hasValue(R$styleable.AppBarLayout_elevation)) {
                b65.a(this, typedArrayD2.getDimensionPixelSize(r14, 0));
            }
            if (i3 >= 26) {
                int i5 = R$styleable.AppBarLayout_android_keyboardNavigationCluster;
                if (typedArrayD2.hasValue(i5)) {
                    setKeyboardNavigationCluster(typedArrayD2.getBoolean(i5, false));
                }
                int i6 = R$styleable.AppBarLayout_android_touchscreenBlocksFocus;
                if (typedArrayD2.hasValue(i6)) {
                    setTouchscreenBlocksFocus(typedArrayD2.getBoolean(i6, false));
                }
            }
            this.o = typedArrayD2.getBoolean(R$styleable.AppBarLayout_liftOnScroll, false);
            this.p = typedArrayD2.getResourceId(R$styleable.AppBarLayout_liftOnScrollTargetViewId, -1);
            setStatusBarForeground(typedArrayD2.getDrawable(R$styleable.AppBarLayout_statusBarForeground));
            typedArrayD2.recycle();
            ha.t(this, new a());
        } catch (Throwable th) {
            typedArrayD.recycle();
            throw th;
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new c(getContext(), attributeSet);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LinearLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new c(getContext(), attributeSet);
    }

    public void setExpanded(boolean z, boolean z2) {
        c(z, z2, true);
    }

    public static class c extends LinearLayout.LayoutParams {
        public int a;
        public Interpolator b;

        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.a = 1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.AppBarLayout_Layout);
            this.a = typedArrayObtainStyledAttributes.getInt(R$styleable.AppBarLayout_Layout_layout_scrollFlags, 0);
            int i = R$styleable.AppBarLayout_Layout_layout_scrollInterpolator;
            if (typedArrayObtainStyledAttributes.hasValue(i)) {
                this.b = AnimationUtils.loadInterpolator(context, typedArrayObtainStyledAttributes.getResourceId(i, 0));
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        public c(int i, int i2) {
            super(i, i2);
            this.a = 1;
        }

        public c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.a = 1;
        }

        public c(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.a = 1;
        }

        public c(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.a = 1;
        }
    }
}
