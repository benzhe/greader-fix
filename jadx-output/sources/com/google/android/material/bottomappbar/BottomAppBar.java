package com.google.android.material.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import defpackage.a95;
import defpackage.c50;
import defpackage.e65;
import defpackage.f65;
import defpackage.fc5;
import defpackage.g65;
import defpackage.ha;
import defpackage.i65;
import defpackage.j65;
import defpackage.la5;
import defpackage.pa5;
import defpackage.qa;
import defpackage.r55;
import defpackage.t85;
import defpackage.u75;
import defpackage.w85;
import defpackage.z85;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class BottomAppBar extends Toolbar implements CoordinatorLayout.b {
    public static final int q0 = R$style.Widget_MaterialComponents_BottomAppBar;
    public final int T;
    public final la5 U;
    public Animator V;
    public Animator W;
    public int a0;
    public int b0;
    public boolean c0;
    public final boolean d0;
    public final boolean e0;
    public final boolean f0;
    public int g0;
    public int h0;
    public boolean i0;
    public boolean j0;
    public Behavior k0;
    public int l0;
    public int m0;
    public int n0;
    public AnimatorListenerAdapter o0;
    public r55<FloatingActionButton> p0;

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        public int g;
        public boolean h;

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

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.e, i);
            parcel.writeInt(this.g);
            parcel.writeInt(this.h ? 1 : 0);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.g = parcel.readInt();
            this.h = parcel.readInt() != 0;
        }
    }

    public class a extends AnimatorListenerAdapter {
        public a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BottomAppBar bottomAppBar = BottomAppBar.this;
            if (bottomAppBar.i0) {
                return;
            }
            bottomAppBar.I(bottomAppBar.a0, bottomAppBar.j0);
        }
    }

    public class b implements r55<FloatingActionButton> {
        public b() {
        }
    }

    public class c implements z85 {
        public c() {
        }

        @Override // defpackage.z85
        public qa a(View view, qa qaVar, a95 a95Var) {
            boolean z;
            BottomAppBar bottomAppBar = BottomAppBar.this;
            if (bottomAppBar.d0) {
                bottomAppBar.l0 = qaVar.b();
            }
            BottomAppBar bottomAppBar2 = BottomAppBar.this;
            boolean z2 = false;
            if (bottomAppBar2.e0) {
                z = bottomAppBar2.n0 != qaVar.c();
                BottomAppBar.this.n0 = qaVar.c();
            } else {
                z = false;
            }
            BottomAppBar bottomAppBar3 = BottomAppBar.this;
            if (bottomAppBar3.f0) {
                boolean z3 = bottomAppBar3.m0 != qaVar.d();
                BottomAppBar.this.m0 = qaVar.d();
                z2 = z3;
            }
            if (z || z2) {
                BottomAppBar bottomAppBar4 = BottomAppBar.this;
                Animator animator = bottomAppBar4.W;
                if (animator != null) {
                    animator.cancel();
                }
                Animator animator2 = bottomAppBar4.V;
                if (animator2 != null) {
                    animator2.cancel();
                }
                BottomAppBar.this.K();
                BottomAppBar.this.J();
            }
            return qaVar;
        }
    }

    public class d extends AnimatorListenerAdapter {
        public d() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BottomAppBar.w(BottomAppBar.this);
            BottomAppBar bottomAppBar = BottomAppBar.this;
            bottomAppBar.i0 = false;
            bottomAppBar.W = null;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BottomAppBar.this.g0++;
        }
    }

    public BottomAppBar(Context context) {
        this(context, null, 0);
    }

    private ActionMenuView getActionMenuView() {
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof ActionMenuView) {
                return (ActionMenuView) childAt;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getBottomInset() {
        return this.l0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getFabTranslationX() {
        return G(this.a0);
    }

    private float getFabTranslationY() {
        return -getTopEdgeTreatment().h;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getLeftInset() {
        return this.n0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getRightInset() {
        return this.m0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public j65 getTopEdgeTreatment() {
        return (j65) this.U.e.a.i;
    }

    public static void w(BottomAppBar bottomAppBar) {
        bottomAppBar.g0--;
    }

    public void C(int i) {
        FloatingActionButton floatingActionButtonD = D();
        if (floatingActionButtonD == null || floatingActionButtonD.j()) {
            return;
        }
        this.g0++;
        floatingActionButtonD.i(new f65(this, i), true);
    }

    public final FloatingActionButton D() {
        View viewE = E();
        if (viewE instanceof FloatingActionButton) {
            return (FloatingActionButton) viewE;
        }
        return null;
    }

    public final View E() {
        if (!(getParent() instanceof CoordinatorLayout)) {
            return null;
        }
        for (View view : ((CoordinatorLayout) getParent()).p(this)) {
            if ((view instanceof FloatingActionButton) || (view instanceof ExtendedFloatingActionButton)) {
                return view;
            }
        }
        return null;
    }

    public int F(ActionMenuView actionMenuView, int i, boolean z) {
        if (i != 1 || !z) {
            return 0;
        }
        boolean zN0 = c50.n0(this);
        int measuredWidth = zN0 ? getMeasuredWidth() : 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if ((childAt.getLayoutParams() instanceof Toolbar.e) && (((Toolbar.e) childAt.getLayoutParams()).a & 8388615) == 8388611) {
                measuredWidth = zN0 ? Math.min(measuredWidth, childAt.getLeft()) : Math.max(measuredWidth, childAt.getRight());
            }
        }
        return measuredWidth - ((zN0 ? actionMenuView.getRight() : actionMenuView.getLeft()) + (zN0 ? this.m0 : -this.n0));
    }

    public final float G(int i) {
        boolean zN0 = c50.n0(this);
        if (i == 1) {
            return ((getMeasuredWidth() / 2) - (this.T + (zN0 ? this.n0 : this.m0))) * (zN0 ? -1 : 1);
        }
        return 0.0f;
    }

    public final boolean H() {
        FloatingActionButton floatingActionButtonD = D();
        return floatingActionButtonD != null && floatingActionButtonD.k();
    }

    public final void I(int i, boolean z) {
        AtomicInteger atomicInteger = ha.a;
        if (!isLaidOut()) {
            this.i0 = false;
            int i2 = this.h0;
            if (i2 != 0) {
                this.h0 = 0;
                getMenu().clear();
                n(i2);
                return;
            }
            return;
        }
        Animator animator = this.W;
        if (animator != null) {
            animator.cancel();
        }
        ArrayList arrayList = new ArrayList();
        if (!H()) {
            i = 0;
            z = false;
        }
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView != null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(actionMenuView, "alpha", 1.0f);
            if (Math.abs(actionMenuView.getTranslationX() - F(actionMenuView, i, z)) > 1.0f) {
                ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(actionMenuView, "alpha", 0.0f);
                objectAnimatorOfFloat2.addListener(new g65(this, actionMenuView, i, z));
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.setDuration(150L);
                animatorSet.playSequentially(objectAnimatorOfFloat2, objectAnimatorOfFloat);
                arrayList.add(animatorSet);
            } else if (actionMenuView.getAlpha() < 1.0f) {
                arrayList.add(objectAnimatorOfFloat);
            }
        }
        AnimatorSet animatorSet2 = new AnimatorSet();
        animatorSet2.playTogether(arrayList);
        this.W = animatorSet2;
        animatorSet2.addListener(new d());
        this.W.start();
    }

    public final void J() {
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView == null || this.W != null) {
            return;
        }
        actionMenuView.setAlpha(1.0f);
        if (H()) {
            actionMenuView.setTranslationX(F(actionMenuView, this.a0, this.j0));
        } else {
            actionMenuView.setTranslationX(F(actionMenuView, 0, false));
        }
    }

    public final void K() {
        getTopEdgeTreatment().i = getFabTranslationX();
        View viewE = E();
        this.U.u((this.j0 && H()) ? 1.0f : 0.0f);
        if (viewE != null) {
            viewE.setTranslationY(getFabTranslationY());
            viewE.setTranslationX(getFabTranslationX());
        }
    }

    public boolean L(int i) {
        float f = i;
        if (f == getTopEdgeTreatment().g) {
            return false;
        }
        getTopEdgeTreatment().g = f;
        this.U.invalidateSelf();
        return true;
    }

    public ColorStateList getBackgroundTint() {
        return this.U.e.g;
    }

    public float getCradleVerticalOffset() {
        return getTopEdgeTreatment().h;
    }

    public int getFabAlignmentMode() {
        return this.a0;
    }

    public int getFabAnimationMode() {
        return this.b0;
    }

    public float getFabCradleMargin() {
        return getTopEdgeTreatment().f;
    }

    public float getFabCradleRoundedCornerRadius() {
        return getTopEdgeTreatment().e;
    }

    public boolean getHideOnScroll() {
        return this.c0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        c50.I0(this, this.U);
        if (getParent() instanceof ViewGroup) {
            ((ViewGroup) getParent()).setClipChildren(false);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            Animator animator = this.W;
            if (animator != null) {
                animator.cancel();
            }
            Animator animator2 = this.V;
            if (animator2 != null) {
                animator2.cancel();
            }
            K();
        }
        J();
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.e);
        this.a0 = savedState.g;
        this.j0 = savedState.h;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.g = this.a0;
        savedState.h = this.j0;
        return savedState;
    }

    public void setBackgroundTint(ColorStateList colorStateList) {
        this.U.setTintList(colorStateList);
    }

    public void setCradleVerticalOffset(float f) {
        if (f != getCradleVerticalOffset()) {
            getTopEdgeTreatment().d(f);
            this.U.invalidateSelf();
            K();
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        la5 la5Var = this.U;
        la5.b bVar = la5Var.e;
        if (bVar.o != f) {
            bVar.o = f;
            la5Var.E();
        }
        la5 la5Var2 = this.U;
        int iL = la5Var2.e.r - la5Var2.l();
        Behavior behavior = getBehavior();
        behavior.c = iL;
        if (behavior.b == 1) {
            setTranslationY(behavior.a + iL);
        }
    }

    public void setFabAlignmentMode(int i) {
        setFabAlignmentModeAndReplaceMenu(i, 0);
    }

    public void setFabAlignmentModeAndReplaceMenu(int i, int i2) {
        this.h0 = i2;
        this.i0 = true;
        I(i, this.j0);
        if (this.a0 != i) {
            AtomicInteger atomicInteger = ha.a;
            if (isLaidOut()) {
                Animator animator = this.V;
                if (animator != null) {
                    animator.cancel();
                }
                ArrayList arrayList = new ArrayList();
                if (this.b0 == 1) {
                    ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(D(), "translationX", G(i));
                    objectAnimatorOfFloat.setDuration(300L);
                    arrayList.add(objectAnimatorOfFloat);
                } else {
                    C(i);
                }
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.playTogether(arrayList);
                this.V = animatorSet;
                animatorSet.addListener(new e65(this));
                this.V.start();
            }
        }
        this.a0 = i;
    }

    public void setFabAnimationMode(int i) {
        this.b0 = i;
    }

    public void setFabCradleMargin(float f) {
        if (f != getFabCradleMargin()) {
            getTopEdgeTreatment().f = f;
            this.U.invalidateSelf();
        }
    }

    public void setFabCradleRoundedCornerRadius(float f) {
        if (f != getFabCradleRoundedCornerRadius()) {
            getTopEdgeTreatment().e = f;
            this.U.invalidateSelf();
        }
    }

    public void setHideOnScroll(boolean z) {
        this.c0 = z;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setSubtitle(CharSequence charSequence) {
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitle(CharSequence charSequence) {
    }

    public BottomAppBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.bottomAppBarStyle);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public Behavior getBehavior() {
        if (this.k0 == null) {
            this.k0 = new Behavior();
        }
        return this.k0;
    }

    public static class Behavior extends HideBottomViewOnScrollBehavior<BottomAppBar> {
        public final Rect e;
        public WeakReference<BottomAppBar> f;
        public int g;
        public final View.OnLayoutChangeListener h;

        public class a implements View.OnLayoutChangeListener {
            public a() {
            }

            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                BottomAppBar bottomAppBar = Behavior.this.f.get();
                if (bottomAppBar == null || !(view instanceof FloatingActionButton)) {
                    view.removeOnLayoutChangeListener(this);
                    return;
                }
                FloatingActionButton floatingActionButton = (FloatingActionButton) view;
                Rect rect = Behavior.this.e;
                rect.set(0, 0, floatingActionButton.getMeasuredWidth(), floatingActionButton.getMeasuredHeight());
                floatingActionButton.l(rect);
                int iHeight = Behavior.this.e.height();
                bottomAppBar.L(iHeight);
                CoordinatorLayout.f fVar = (CoordinatorLayout.f) view.getLayoutParams();
                if (Behavior.this.g == 0) {
                    ((ViewGroup.MarginLayoutParams) fVar).bottomMargin = bottomAppBar.getBottomInset() + (bottomAppBar.getResources().getDimensionPixelOffset(R$dimen.mtrl_bottomappbar_fab_bottom_margin) - ((floatingActionButton.getMeasuredHeight() - iHeight) / 2));
                    ((ViewGroup.MarginLayoutParams) fVar).leftMargin = bottomAppBar.getLeftInset();
                    ((ViewGroup.MarginLayoutParams) fVar).rightMargin = bottomAppBar.getRightInset();
                    if (c50.n0(floatingActionButton)) {
                        ((ViewGroup.MarginLayoutParams) fVar).leftMargin += bottomAppBar.T;
                    } else {
                        ((ViewGroup.MarginLayoutParams) fVar).rightMargin += bottomAppBar.T;
                    }
                }
            }
        }

        public Behavior() {
            this.h = new a();
            this.e = new Rect();
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public boolean k(CoordinatorLayout coordinatorLayout, View view, int i) {
            BottomAppBar bottomAppBar = (BottomAppBar) view;
            this.f = new WeakReference<>(bottomAppBar);
            int i2 = BottomAppBar.q0;
            View viewE = bottomAppBar.E();
            if (viewE != null) {
                AtomicInteger atomicInteger = ha.a;
                if (!viewE.isLaidOut()) {
                    CoordinatorLayout.f fVar = (CoordinatorLayout.f) viewE.getLayoutParams();
                    fVar.d = 49;
                    this.g = ((ViewGroup.MarginLayoutParams) fVar).bottomMargin;
                    if (viewE instanceof FloatingActionButton) {
                        FloatingActionButton floatingActionButton = (FloatingActionButton) viewE;
                        floatingActionButton.addOnLayoutChangeListener(this.h);
                        floatingActionButton.d(bottomAppBar.o0);
                        floatingActionButton.e(new i65(bottomAppBar));
                        floatingActionButton.f(bottomAppBar.p0);
                    }
                    bottomAppBar.K();
                }
            }
            coordinatorLayout.w(bottomAppBar, i);
            this.a = bottomAppBar.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) bottomAppBar.getLayoutParams()).bottomMargin;
            return false;
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public boolean x(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i, int i2) {
            if (((BottomAppBar) view).getHideOnScroll()) {
                if (i == 2) {
                    return true;
                }
            }
            return false;
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.h = new a();
            this.e = new Rect();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public BottomAppBar(Context context, AttributeSet attributeSet, int i) {
        int i2 = q0;
        super(fc5.a(context, attributeSet, i, i2), attributeSet, i);
        la5 la5Var = new la5();
        this.U = la5Var;
        this.g0 = 0;
        this.h0 = 0;
        this.i0 = false;
        this.j0 = true;
        this.o0 = new a();
        this.p0 = new b();
        Context context2 = getContext();
        TypedArray typedArrayD = t85.d(context2, attributeSet, R$styleable.BottomAppBar, i, i2, new int[0]);
        ColorStateList colorStateListA0 = c50.a0(context2, typedArrayD, R$styleable.BottomAppBar_backgroundTint);
        int dimensionPixelSize = typedArrayD.getDimensionPixelSize(R$styleable.BottomAppBar_elevation, 0);
        float dimensionPixelOffset = typedArrayD.getDimensionPixelOffset(R$styleable.BottomAppBar_fabCradleMargin, 0);
        float dimensionPixelOffset2 = typedArrayD.getDimensionPixelOffset(R$styleable.BottomAppBar_fabCradleRoundedCornerRadius, 0);
        float dimensionPixelOffset3 = typedArrayD.getDimensionPixelOffset(R$styleable.BottomAppBar_fabCradleVerticalOffset, 0);
        this.a0 = typedArrayD.getInt(R$styleable.BottomAppBar_fabAlignmentMode, 0);
        this.b0 = typedArrayD.getInt(R$styleable.BottomAppBar_fabAnimationMode, 0);
        this.c0 = typedArrayD.getBoolean(R$styleable.BottomAppBar_hideOnScroll, false);
        this.d0 = typedArrayD.getBoolean(R$styleable.BottomAppBar_paddingBottomSystemWindowInsets, false);
        this.e0 = typedArrayD.getBoolean(R$styleable.BottomAppBar_paddingLeftSystemWindowInsets, false);
        this.f0 = typedArrayD.getBoolean(R$styleable.BottomAppBar_paddingRightSystemWindowInsets, false);
        typedArrayD.recycle();
        this.T = getResources().getDimensionPixelOffset(R$dimen.mtrl_bottomappbar_fabOffsetEndMode);
        j65 j65Var = new j65(dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        pa5.b bVar = new pa5.b();
        bVar.i = j65Var;
        la5Var.e.a = bVar.a();
        la5Var.invalidateSelf();
        la5Var.x(2);
        la5Var.v(Paint.Style.FILL);
        la5Var.e.b = new u75(context2);
        la5Var.E();
        setElevation(dimensionPixelSize);
        la5Var.setTintList(colorStateListA0);
        AtomicInteger atomicInteger = ha.a;
        setBackground(la5Var);
        c cVar = new c();
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.Insets, i, i2);
        boolean z = typedArrayObtainStyledAttributes.getBoolean(R$styleable.Insets_paddingBottomSystemWindowInsets, false);
        boolean z2 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.Insets_paddingLeftSystemWindowInsets, false);
        boolean z3 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.Insets_paddingRightSystemWindowInsets, false);
        typedArrayObtainStyledAttributes.recycle();
        c50.O(this, new w85(z, z2, z3, cVar));
    }
}
