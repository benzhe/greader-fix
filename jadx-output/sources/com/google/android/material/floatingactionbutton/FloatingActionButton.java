package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.R$animator;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomappbar.BottomAppBar;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.internal.VisibilityAwareImageButton;
import com.google.android.material.stateful.ExtendableSavedState;
import defpackage.b2;
import defpackage.b85;
import defpackage.c2;
import defpackage.c50;
import defpackage.c85;
import defpackage.d0;
import defpackage.d85;
import defpackage.da5;
import defpackage.e85;
import defpackage.fc5;
import defpackage.g85;
import defpackage.h85;
import defpackage.ha;
import defpackage.k85;
import defpackage.la5;
import defpackage.m4;
import defpackage.o55;
import defpackage.pa5;
import defpackage.r55;
import defpackage.t85;
import defpackage.ta5;
import defpackage.v75;
import defpackage.w75;
import defpackage.z75;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class FloatingActionButton extends VisibilityAwareImageButton implements v75, ta5, CoordinatorLayout.b {
    public static final int v = R$style.Widget_Design_FloatingActionButton;
    public ColorStateList f;
    public PorterDuff.Mode g;
    public ColorStateList h;
    public PorterDuff.Mode i;
    public ColorStateList j;
    public int k;
    public int l;
    public int m;
    public int n;
    public int o;
    public boolean p;
    public final Rect q;
    public final Rect r;
    public final c2 s;
    public final w75 t;
    public e85 u;

    public static class Behavior extends BaseBehavior<FloatingActionButton> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    public static abstract class a {
        public void a(FloatingActionButton floatingActionButton) {
        }

        public void b(FloatingActionButton floatingActionButton) {
        }
    }

    public class b implements da5 {
        public b() {
        }
    }

    public class c<T extends FloatingActionButton> implements e85.e {
        public final r55<T> a;

        public c(r55<T> r55Var) {
            this.a = r55Var;
        }

        @Override // e85.e
        public void a() {
            r55<T> r55Var = this.a;
            FloatingActionButton floatingActionButton = FloatingActionButton.this;
            BottomAppBar.b bVar = (BottomAppBar.b) r55Var;
            Objects.requireNonNull(bVar);
            float translationX = floatingActionButton.getTranslationX();
            if (BottomAppBar.this.getTopEdgeTreatment().i != translationX) {
                BottomAppBar.this.getTopEdgeTreatment().i = translationX;
                BottomAppBar.this.U.invalidateSelf();
            }
            float fMax = Math.max(0.0f, -floatingActionButton.getTranslationY());
            if (BottomAppBar.this.getTopEdgeTreatment().h != fMax) {
                BottomAppBar.this.getTopEdgeTreatment().d(fMax);
                BottomAppBar.this.U.invalidateSelf();
            }
            BottomAppBar.this.U.u(floatingActionButton.getVisibility() == 0 ? floatingActionButton.getScaleY() : 0.0f);
        }

        @Override // e85.e
        public void b() {
            r55<T> r55Var = this.a;
            FloatingActionButton floatingActionButton = FloatingActionButton.this;
            BottomAppBar.b bVar = (BottomAppBar.b) r55Var;
            Objects.requireNonNull(bVar);
            BottomAppBar.this.U.u(floatingActionButton.getVisibility() == 0 ? floatingActionButton.getScaleY() : 0.0f);
        }

        public boolean equals(Object obj) {
            return (obj instanceof c) && ((c) obj).a.equals(this.a);
        }

        public int hashCode() {
            return this.a.hashCode();
        }
    }

    public FloatingActionButton(Context context) {
        this(context, null);
    }

    private e85 getImpl() {
        if (this.u == null) {
            this.u = new h85(this, new b());
        }
        return this.u;
    }

    public static int n(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == Integer.MIN_VALUE) {
            return Math.min(i, size);
        }
        if (mode == 0) {
            return i;
        }
        if (mode == 1073741824) {
            return size;
        }
        throw new IllegalArgumentException();
    }

    @Override // defpackage.v75
    public boolean a() {
        return this.t.b;
    }

    public void d(Animator.AnimatorListener animatorListener) {
        e85 impl = getImpl();
        if (impl.w == null) {
            impl.w = new ArrayList<>();
        }
        impl.w.add(animatorListener);
    }

    @Override // android.widget.ImageView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        getImpl().k(getDrawableState());
    }

    public void e(Animator.AnimatorListener animatorListener) {
        e85 impl = getImpl();
        if (impl.v == null) {
            impl.v = new ArrayList<>();
        }
        impl.v.add(animatorListener);
    }

    public void f(r55<? extends FloatingActionButton> r55Var) {
        e85 impl = getImpl();
        c cVar = new c(r55Var);
        if (impl.x == null) {
            impl.x = new ArrayList<>();
        }
        impl.x.add(cVar);
    }

    @Deprecated
    public boolean g(Rect rect) {
        AtomicInteger atomicInteger = ha.a;
        if (!isLaidOut()) {
            return false;
        }
        rect.set(0, 0, getWidth(), getHeight());
        l(rect);
        return true;
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return this.f;
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return this.g;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public CoordinatorLayout.c<FloatingActionButton> getBehavior() {
        return new Behavior();
    }

    public float getCompatElevation() {
        return getImpl().d();
    }

    public float getCompatHoveredFocusedTranslationZ() {
        return getImpl().i;
    }

    public float getCompatPressedTranslationZ() {
        return getImpl().j;
    }

    public Drawable getContentBackground() {
        return getImpl().e;
    }

    public int getCustomSize() {
        return this.m;
    }

    public int getExpandedComponentIdHint() {
        return this.t.c;
    }

    public o55 getHideMotionSpec() {
        return getImpl().q;
    }

    @Deprecated
    public int getRippleColor() {
        ColorStateList colorStateList = this.j;
        if (colorStateList != null) {
            return colorStateList.getDefaultColor();
        }
        return 0;
    }

    public ColorStateList getRippleColorStateList() {
        return this.j;
    }

    public pa5 getShapeAppearanceModel() {
        pa5 pa5Var = getImpl().a;
        Objects.requireNonNull(pa5Var);
        return pa5Var;
    }

    public o55 getShowMotionSpec() {
        return getImpl().p;
    }

    public int getSize() {
        return this.l;
    }

    public int getSizeDimension() {
        return h(this.l);
    }

    public ColorStateList getSupportBackgroundTintList() {
        return getBackgroundTintList();
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return getBackgroundTintMode();
    }

    public ColorStateList getSupportImageTintList() {
        return this.h;
    }

    public PorterDuff.Mode getSupportImageTintMode() {
        return this.i;
    }

    public boolean getUseCompatPadding() {
        return this.p;
    }

    public final int h(int i) {
        int i2 = this.m;
        if (i2 != 0) {
            return i2;
        }
        Resources resources = getResources();
        return i != -1 ? i != 1 ? resources.getDimensionPixelSize(R$dimen.design_fab_size_normal) : resources.getDimensionPixelSize(R$dimen.design_fab_size_mini) : Math.max(resources.getConfiguration().screenWidthDp, resources.getConfiguration().screenHeightDp) < 470 ? h(1) : h(0);
    }

    public void i(a aVar, boolean z) {
        e85 impl = getImpl();
        b85 b85Var = aVar == null ? null : new b85(this, aVar);
        if (impl.g()) {
            return;
        }
        Animator animator = impl.o;
        if (animator != null) {
            animator.cancel();
        }
        if (!impl.t()) {
            impl.y.b(z ? 8 : 4, z);
            if (b85Var != null) {
                b85Var.a.a(b85Var.b);
                return;
            }
            return;
        }
        o55 o55Var = impl.q;
        if (o55Var == null) {
            if (impl.n == null) {
                impl.n = o55.b(impl.y.getContext(), R$animator.design_fab_hide_motion_spec);
            }
            o55Var = impl.n;
            Objects.requireNonNull(o55Var);
        }
        AnimatorSet animatorSetB = impl.b(o55Var, 0.0f, 0.0f, 0.0f);
        animatorSetB.addListener(new c85(impl, z, b85Var));
        ArrayList<Animator.AnimatorListener> arrayList = impl.w;
        if (arrayList != null) {
            Iterator<Animator.AnimatorListener> it = arrayList.iterator();
            while (it.hasNext()) {
                animatorSetB.addListener(it.next());
            }
        }
        animatorSetB.start();
    }

    public boolean j() {
        return getImpl().g();
    }

    @Override // android.widget.ImageView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        getImpl().i();
    }

    public boolean k() {
        return getImpl().h();
    }

    public final void l(Rect rect) {
        int i = rect.left;
        Rect rect2 = this.q;
        rect.left = i + rect2.left;
        rect.top += rect2.top;
        rect.right -= rect2.right;
        rect.bottom -= rect2.bottom;
    }

    public final void m() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        ColorStateList colorStateList = this.h;
        if (colorStateList == null) {
            d0.h.m(drawable);
            return;
        }
        int colorForState = colorStateList.getColorForState(getDrawableState(), 0);
        PorterDuff.Mode mode = this.i;
        if (mode == null) {
            mode = PorterDuff.Mode.SRC_IN;
        }
        drawable.mutate().setColorFilter(b2.c(colorForState, mode));
    }

    public void o(a aVar, boolean z) {
        e85 impl = getImpl();
        b85 b85Var = aVar == null ? null : new b85(this, aVar);
        if (impl.h()) {
            return;
        }
        Animator animator = impl.o;
        if (animator != null) {
            animator.cancel();
        }
        if (!impl.t()) {
            impl.y.b(0, z);
            impl.y.setAlpha(1.0f);
            impl.y.setScaleY(1.0f);
            impl.y.setScaleX(1.0f);
            impl.p(1.0f);
            if (b85Var != null) {
                b85Var.a.b(b85Var.b);
                return;
            }
            return;
        }
        if (impl.y.getVisibility() != 0) {
            impl.y.setAlpha(0.0f);
            impl.y.setScaleY(0.0f);
            impl.y.setScaleX(0.0f);
            impl.p(0.0f);
        }
        o55 o55Var = impl.p;
        if (o55Var == null) {
            if (impl.m == null) {
                impl.m = o55.b(impl.y.getContext(), R$animator.design_fab_show_motion_spec);
            }
            o55Var = impl.m;
            Objects.requireNonNull(o55Var);
        }
        AnimatorSet animatorSetB = impl.b(o55Var, 1.0f, 1.0f, 1.0f);
        animatorSetB.addListener(new d85(impl, z, b85Var));
        ArrayList<Animator.AnimatorListener> arrayList = impl.v;
        if (arrayList != null) {
            Iterator<Animator.AnimatorListener> it = arrayList.iterator();
            while (it.hasNext()) {
                animatorSetB.addListener(it.next());
            }
        }
        animatorSetB.start();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        e85 impl = getImpl();
        la5 la5Var = impl.b;
        if (la5Var != null) {
            c50.I0(impl.y, la5Var);
        }
        if (impl.o()) {
            ViewTreeObserver viewTreeObserver = impl.y.getViewTreeObserver();
            if (impl.E == null) {
                impl.E = new g85(impl);
            }
            viewTreeObserver.addOnPreDrawListener(impl.E);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        e85 impl = getImpl();
        ViewTreeObserver viewTreeObserver = impl.y.getViewTreeObserver();
        ViewTreeObserver.OnPreDrawListener onPreDrawListener = impl.E;
        if (onPreDrawListener != null) {
            viewTreeObserver.removeOnPreDrawListener(onPreDrawListener);
            impl.E = null;
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i, int i2) {
        int sizeDimension = getSizeDimension();
        this.n = (sizeDimension - this.o) / 2;
        getImpl().w();
        int iMin = Math.min(n(sizeDimension, i), n(sizeDimension, i2));
        Rect rect = this.q;
        setMeasuredDimension(rect.left + iMin + rect.right, iMin + rect.top + rect.bottom);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof ExtendableSavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        ExtendableSavedState extendableSavedState = (ExtendableSavedState) parcelable;
        super.onRestoreInstanceState(extendableSavedState.e);
        w75 w75Var = this.t;
        Bundle orDefault = extendableSavedState.g.getOrDefault("expandableWidgetHelper", null);
        Objects.requireNonNull(orDefault);
        Bundle bundle = orDefault;
        Objects.requireNonNull(w75Var);
        w75Var.b = bundle.getBoolean("expanded", false);
        w75Var.c = bundle.getInt("expandedComponentIdHint", 0);
        if (w75Var.b) {
            ViewParent parent = w75Var.a.getParent();
            if (parent instanceof CoordinatorLayout) {
                ((CoordinatorLayout) parent).g(w75Var.a);
            }
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        if (parcelableOnSaveInstanceState == null) {
            parcelableOnSaveInstanceState = new Bundle();
        }
        ExtendableSavedState extendableSavedState = new ExtendableSavedState(parcelableOnSaveInstanceState);
        m4<String, Bundle> m4Var = extendableSavedState.g;
        w75 w75Var = this.t;
        Objects.requireNonNull(w75Var);
        Bundle bundle = new Bundle();
        bundle.putBoolean("expanded", w75Var.b);
        bundle.putInt("expandedComponentIdHint", w75Var.c);
        m4Var.put("expandableWidgetHelper", bundle);
        return extendableSavedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0 && g(this.r) && !this.r.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        if (this.f != colorStateList) {
            this.f = colorStateList;
            e85 impl = getImpl();
            la5 la5Var = impl.b;
            if (la5Var != null) {
                la5Var.setTintList(colorStateList);
            }
            z75 z75Var = impl.d;
            if (z75Var != null) {
                z75Var.b(colorStateList);
            }
        }
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.g != mode) {
            this.g = mode;
            la5 la5Var = getImpl().b;
            if (la5Var != null) {
                la5Var.setTintMode(mode);
            }
        }
    }

    public void setCompatElevation(float f) {
        e85 impl = getImpl();
        if (impl.h != f) {
            impl.h = f;
            impl.l(f, impl.i, impl.j);
        }
    }

    public void setCompatElevationResource(int i) {
        setCompatElevation(getResources().getDimension(i));
    }

    public void setCompatHoveredFocusedTranslationZ(float f) {
        e85 impl = getImpl();
        if (impl.i != f) {
            impl.i = f;
            impl.l(impl.h, f, impl.j);
        }
    }

    public void setCompatHoveredFocusedTranslationZResource(int i) {
        setCompatHoveredFocusedTranslationZ(getResources().getDimension(i));
    }

    public void setCompatPressedTranslationZ(float f) {
        e85 impl = getImpl();
        if (impl.j != f) {
            impl.j = f;
            impl.l(impl.h, impl.i, f);
        }
    }

    public void setCompatPressedTranslationZResource(int i) {
        setCompatPressedTranslationZ(getResources().getDimension(i));
    }

    public void setCustomSize(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Custom size must be non-negative");
        }
        if (i != this.m) {
            this.m = i;
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        getImpl().x(f);
    }

    public void setEnsureMinTouchTargetSize(boolean z) {
        if (z != getImpl().f) {
            getImpl().f = z;
            requestLayout();
        }
    }

    public void setExpandedComponentIdHint(int i) {
        this.t.c = i;
    }

    public void setHideMotionSpec(o55 o55Var) {
        getImpl().q = o55Var;
    }

    public void setHideMotionSpecResource(int i) {
        setHideMotionSpec(o55.b(getContext(), i));
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        if (getDrawable() != drawable) {
            super.setImageDrawable(drawable);
            e85 impl = getImpl();
            impl.p(impl.s);
            if (this.h != null) {
                m();
            }
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        this.s.c(i);
        m();
    }

    public void setRippleColor(int i) {
        setRippleColor(ColorStateList.valueOf(i));
    }

    @Override // android.view.View
    public void setScaleX(float f) {
        super.setScaleX(f);
        getImpl().m();
    }

    @Override // android.view.View
    public void setScaleY(float f) {
        super.setScaleY(f);
        getImpl().m();
    }

    public void setShadowPaddingEnabled(boolean z) {
        e85 impl = getImpl();
        impl.g = z;
        impl.w();
    }

    @Override // defpackage.ta5
    public void setShapeAppearanceModel(pa5 pa5Var) {
        getImpl().r(pa5Var);
    }

    public void setShowMotionSpec(o55 o55Var) {
        getImpl().p = o55Var;
    }

    public void setShowMotionSpecResource(int i) {
        setShowMotionSpec(o55.b(getContext(), i));
    }

    public void setSize(int i) {
        this.m = 0;
        if (i != this.l) {
            this.l = i;
            requestLayout();
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        setBackgroundTintList(colorStateList);
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        setBackgroundTintMode(mode);
    }

    public void setSupportImageTintList(ColorStateList colorStateList) {
        if (this.h != colorStateList) {
            this.h = colorStateList;
            m();
        }
    }

    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        if (this.i != mode) {
            this.i = mode;
            m();
        }
    }

    @Override // android.view.View
    public void setTranslationX(float f) {
        super.setTranslationX(f);
        getImpl().n();
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        super.setTranslationY(f);
        getImpl().n();
    }

    @Override // android.view.View
    public void setTranslationZ(float f) {
        super.setTranslationZ(f);
        getImpl().n();
    }

    public void setUseCompatPadding(boolean z) {
        if (this.p != z) {
            this.p = z;
            getImpl().j();
        }
    }

    @Override // com.google.android.material.internal.VisibilityAwareImageButton, android.widget.ImageView, android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
    }

    public static class BaseBehavior<T extends FloatingActionButton> extends CoordinatorLayout.c<T> {
        public Rect a;
        public boolean b;

        public BaseBehavior() {
            this.b = true;
        }

        public boolean B(FloatingActionButton floatingActionButton, Rect rect) {
            Rect rect2 = floatingActionButton.q;
            rect.set(floatingActionButton.getLeft() + rect2.left, floatingActionButton.getTop() + rect2.top, floatingActionButton.getRight() - rect2.right, floatingActionButton.getBottom() - rect2.bottom);
            return true;
        }

        public final boolean C(View view, FloatingActionButton floatingActionButton) {
            return this.b && ((CoordinatorLayout.f) floatingActionButton.getLayoutParams()).f == view.getId() && floatingActionButton.getUserSetVisibility() == 0;
        }

        public final boolean D(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, FloatingActionButton floatingActionButton) {
            if (!C(appBarLayout, floatingActionButton)) {
                return false;
            }
            if (this.a == null) {
                this.a = new Rect();
            }
            Rect rect = this.a;
            k85.a(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                floatingActionButton.i(null, false);
                return true;
            }
            floatingActionButton.o(null, false);
            return true;
        }

        public final boolean E(View view, FloatingActionButton floatingActionButton) {
            if (!C(view, floatingActionButton)) {
                return false;
            }
            if (view.getTop() < (floatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.f) floatingActionButton.getLayoutParams())).topMargin) {
                floatingActionButton.i(null, false);
                return true;
            }
            floatingActionButton.o(null, false);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public /* bridge */ /* synthetic */ boolean a(CoordinatorLayout coordinatorLayout, View view, Rect rect) {
            return B((FloatingActionButton) view, rect);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public void f(CoordinatorLayout.f fVar) {
            if (fVar.h == 0) {
                fVar.h = 80;
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public boolean g(CoordinatorLayout coordinatorLayout, View view, View view2) {
            FloatingActionButton floatingActionButton = (FloatingActionButton) view;
            if (view2 instanceof AppBarLayout) {
                D(coordinatorLayout, (AppBarLayout) view2, floatingActionButton);
            } else {
                ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                if (layoutParams instanceof CoordinatorLayout.f ? ((CoordinatorLayout.f) layoutParams).a instanceof BottomSheetBehavior : false) {
                    E(view2, floatingActionButton);
                }
            }
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public boolean k(CoordinatorLayout coordinatorLayout, View view, int i) {
            FloatingActionButton floatingActionButton = (FloatingActionButton) view;
            List<View> listO = coordinatorLayout.o(floatingActionButton);
            int size = listO.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                View view2 = listO.get(i3);
                if (!(view2 instanceof AppBarLayout)) {
                    ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                    if ((layoutParams instanceof CoordinatorLayout.f ? ((CoordinatorLayout.f) layoutParams).a instanceof BottomSheetBehavior : false) && E(view2, floatingActionButton)) {
                        break;
                    }
                } else {
                    if (D(coordinatorLayout, (AppBarLayout) view2, floatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.w(floatingActionButton, i);
            Rect rect = floatingActionButton.q;
            if (rect == null || rect.centerX() <= 0 || rect.centerY() <= 0) {
                return true;
            }
            CoordinatorLayout.f fVar = (CoordinatorLayout.f) floatingActionButton.getLayoutParams();
            int i4 = floatingActionButton.getRight() >= coordinatorLayout.getWidth() - ((ViewGroup.MarginLayoutParams) fVar).rightMargin ? rect.right : floatingActionButton.getLeft() <= ((ViewGroup.MarginLayoutParams) fVar).leftMargin ? -rect.left : 0;
            if (floatingActionButton.getBottom() >= coordinatorLayout.getHeight() - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin) {
                i2 = rect.bottom;
            } else if (floatingActionButton.getTop() <= ((ViewGroup.MarginLayoutParams) fVar).topMargin) {
                i2 = -rect.top;
            }
            if (i2 != 0) {
                ha.m(floatingActionButton, i2);
            }
            if (i4 == 0) {
                return true;
            }
            ha.l(floatingActionButton, i4);
            return true;
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.FloatingActionButton_Behavior_Layout);
            this.b = typedArrayObtainStyledAttributes.getBoolean(R$styleable.FloatingActionButton_Behavior_Layout_behavior_autoHide, true);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.floatingActionButtonStyle);
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (this.j != colorStateList) {
            this.j = colorStateList;
            getImpl().q(this.j);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public FloatingActionButton(Context context, AttributeSet attributeSet, int i) throws Resources.NotFoundException {
        int i2 = v;
        super(fc5.a(context, attributeSet, i, i2), attributeSet, i);
        this.q = new Rect();
        this.r = new Rect();
        Context context2 = getContext();
        TypedArray typedArrayD = t85.d(context2, attributeSet, R$styleable.FloatingActionButton, i, i2, new int[0]);
        this.f = c50.a0(context2, typedArrayD, R$styleable.FloatingActionButton_backgroundTint);
        this.g = c50.B0(typedArrayD.getInt(R$styleable.FloatingActionButton_backgroundTintMode, -1), null);
        this.j = c50.a0(context2, typedArrayD, R$styleable.FloatingActionButton_rippleColor);
        this.l = typedArrayD.getInt(R$styleable.FloatingActionButton_fabSize, -1);
        this.m = typedArrayD.getDimensionPixelSize(R$styleable.FloatingActionButton_fabCustomSize, 0);
        this.k = typedArrayD.getDimensionPixelSize(R$styleable.FloatingActionButton_borderWidth, 0);
        float dimension = typedArrayD.getDimension(R$styleable.FloatingActionButton_elevation, 0.0f);
        float dimension2 = typedArrayD.getDimension(R$styleable.FloatingActionButton_hoveredFocusedTranslationZ, 0.0f);
        float dimension3 = typedArrayD.getDimension(R$styleable.FloatingActionButton_pressedTranslationZ, 0.0f);
        this.p = typedArrayD.getBoolean(R$styleable.FloatingActionButton_useCompatPadding, false);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R$dimen.mtrl_fab_min_touch_target);
        this.o = typedArrayD.getDimensionPixelSize(R$styleable.FloatingActionButton_maxImageSize, 0);
        o55 o55VarA = o55.a(context2, typedArrayD, R$styleable.FloatingActionButton_showMotionSpec);
        o55 o55VarA2 = o55.a(context2, typedArrayD, R$styleable.FloatingActionButton_hideMotionSpec);
        pa5 pa5VarA = pa5.b(context2, attributeSet, i, i2, pa5.m).a();
        boolean z = typedArrayD.getBoolean(R$styleable.FloatingActionButton_ensureMinTouchTargetSize, false);
        setEnabled(typedArrayD.getBoolean(R$styleable.FloatingActionButton_android_enabled, true));
        typedArrayD.recycle();
        c2 c2Var = new c2(this);
        this.s = c2Var;
        c2Var.b(attributeSet, i);
        this.t = new w75(this);
        getImpl().r(pa5VarA);
        getImpl().f(this.f, this.g, this.j, this.k);
        getImpl().k = dimensionPixelSize;
        e85 impl = getImpl();
        if (impl.h != dimension) {
            impl.h = dimension;
            impl.l(dimension, impl.i, impl.j);
        }
        e85 impl2 = getImpl();
        if (impl2.i != dimension2) {
            impl2.i = dimension2;
            impl2.l(impl2.h, dimension2, impl2.j);
        }
        e85 impl3 = getImpl();
        if (impl3.j != dimension3) {
            impl3.j = dimension3;
            impl3.l(impl3.h, impl3.i, dimension3);
        }
        e85 impl4 = getImpl();
        int i3 = this.o;
        if (impl4.t != i3) {
            impl4.t = i3;
            impl4.p(impl4.s);
        }
        getImpl().p = o55VarA;
        getImpl().q = o55VarA2;
        getImpl().f = z;
        setScaleType(ImageView.ScaleType.MATRIX);
    }
}
