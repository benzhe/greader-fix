package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.R$animator;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.button.MaterialButton;
import defpackage.a85;
import defpackage.fc5;
import defpackage.ha;
import defpackage.i85;
import defpackage.k85;
import defpackage.o55;
import defpackage.pa5;
import defpackage.t85;
import defpackage.x75;
import defpackage.y75;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class ExtendedFloatingActionButton extends MaterialButton implements CoordinatorLayout.b {
    public static final int K = R$style.Widget_MaterialComponents_ExtendedFloatingActionButton_Icon;
    public static final Property<View, Float> L = new c(Float.class, "width");
    public static final Property<View, Float> M = new d(Float.class, "height");
    public static final Property<View, Float> N = new e(Float.class, "paddingStart");
    public static final Property<View, Float> O = new f(Float.class, "paddingEnd");
    public final i85 A;
    public final i85 B;
    public final int C;
    public int D;
    public int E;
    public final CoordinatorLayout.c<ExtendedFloatingActionButton> F;
    public boolean G;
    public boolean H;
    public boolean I;
    public ColorStateList J;
    public int w;
    public final x75 x;
    public final i85 y;
    public final i85 z;

    public class a implements k {
        public a() {
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.k
        public int a() {
            return ExtendedFloatingActionButton.this.E;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.k
        public int b() {
            return ExtendedFloatingActionButton.this.D;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.k
        public int getHeight() {
            return ExtendedFloatingActionButton.this.getMeasuredHeight();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.k
        public ViewGroup.LayoutParams getLayoutParams() {
            return new ViewGroup.LayoutParams(-2, -2);
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.k
        public int getWidth() {
            int measuredWidth = ExtendedFloatingActionButton.this.getMeasuredWidth() - (ExtendedFloatingActionButton.this.getCollapsedPadding() * 2);
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            return measuredWidth + extendedFloatingActionButton.D + extendedFloatingActionButton.E;
        }
    }

    public class b implements k {
        public b() {
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.k
        public int a() {
            return ExtendedFloatingActionButton.this.getCollapsedPadding();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.k
        public int b() {
            return ExtendedFloatingActionButton.this.getCollapsedPadding();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.k
        public int getHeight() {
            return ExtendedFloatingActionButton.this.getCollapsedSize();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.k
        public ViewGroup.LayoutParams getLayoutParams() {
            return new ViewGroup.LayoutParams(ExtendedFloatingActionButton.this.getCollapsedSize(), ExtendedFloatingActionButton.this.getCollapsedSize());
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.k
        public int getWidth() {
            return ExtendedFloatingActionButton.this.getCollapsedSize();
        }
    }

    public static class c extends Property<View, Float> {
        public c(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public Float get(View view) {
            return Float.valueOf(view.getLayoutParams().width);
        }

        @Override // android.util.Property
        public void set(View view, Float f) {
            View view2 = view;
            view2.getLayoutParams().width = f.intValue();
            view2.requestLayout();
        }
    }

    public static class d extends Property<View, Float> {
        public d(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public Float get(View view) {
            return Float.valueOf(view.getLayoutParams().height);
        }

        @Override // android.util.Property
        public void set(View view, Float f) {
            View view2 = view;
            view2.getLayoutParams().height = f.intValue();
            view2.requestLayout();
        }
    }

    public static class e extends Property<View, Float> {
        public e(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public Float get(View view) {
            AtomicInteger atomicInteger = ha.a;
            return Float.valueOf(view.getPaddingStart());
        }

        @Override // android.util.Property
        public void set(View view, Float f) {
            View view2 = view;
            int iIntValue = f.intValue();
            int paddingTop = view2.getPaddingTop();
            AtomicInteger atomicInteger = ha.a;
            view2.setPaddingRelative(iIntValue, paddingTop, view2.getPaddingEnd(), view2.getPaddingBottom());
        }
    }

    public static class f extends Property<View, Float> {
        public f(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public Float get(View view) {
            AtomicInteger atomicInteger = ha.a;
            return Float.valueOf(view.getPaddingEnd());
        }

        @Override // android.util.Property
        public void set(View view, Float f) {
            View view2 = view;
            AtomicInteger atomicInteger = ha.a;
            view2.setPaddingRelative(view2.getPaddingStart(), view2.getPaddingTop(), f.intValue(), view2.getPaddingBottom());
        }
    }

    public class g extends y75 {
        public final k g;
        public final boolean h;

        public g(x75 x75Var, k kVar, boolean z) {
            super(ExtendedFloatingActionButton.this, x75Var);
            this.g = kVar;
            this.h = z;
        }

        @Override // defpackage.i85
        public int b() {
            return this.h ? R$animator.mtrl_extended_fab_change_size_expand_motion_spec : R$animator.mtrl_extended_fab_change_size_collapse_motion_spec;
        }

        @Override // defpackage.i85
        public void c() {
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            extendedFloatingActionButton.G = this.h;
            ViewGroup.LayoutParams layoutParams = extendedFloatingActionButton.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            layoutParams.width = this.g.getLayoutParams().width;
            layoutParams.height = this.g.getLayoutParams().height;
            ExtendedFloatingActionButton extendedFloatingActionButton2 = ExtendedFloatingActionButton.this;
            int iB = this.g.b();
            int paddingTop = ExtendedFloatingActionButton.this.getPaddingTop();
            int iA = this.g.a();
            int paddingBottom = ExtendedFloatingActionButton.this.getPaddingBottom();
            AtomicInteger atomicInteger = ha.a;
            extendedFloatingActionButton2.setPaddingRelative(iB, paddingTop, iA, paddingBottom);
            ExtendedFloatingActionButton.this.requestLayout();
        }

        @Override // defpackage.i85
        public boolean d() {
            boolean z = this.h;
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            return z == extendedFloatingActionButton.G || extendedFloatingActionButton.getIcon() == null || TextUtils.isEmpty(ExtendedFloatingActionButton.this.getText());
        }

        @Override // defpackage.y75, defpackage.i85
        public void e() {
            super.e();
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            extendedFloatingActionButton.H = false;
            extendedFloatingActionButton.setHorizontallyScrolling(false);
            ViewGroup.LayoutParams layoutParams = ExtendedFloatingActionButton.this.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            layoutParams.width = this.g.getLayoutParams().width;
            layoutParams.height = this.g.getLayoutParams().height;
        }

        @Override // defpackage.y75, defpackage.i85
        public AnimatorSet f() {
            o55 o55VarI = i();
            if (o55VarI.g("width")) {
                PropertyValuesHolder[] propertyValuesHolderArrE = o55VarI.e("width");
                propertyValuesHolderArrE[0].setFloatValues(ExtendedFloatingActionButton.this.getWidth(), this.g.getWidth());
                o55VarI.b.put("width", propertyValuesHolderArrE);
            }
            if (o55VarI.g("height")) {
                PropertyValuesHolder[] propertyValuesHolderArrE2 = o55VarI.e("height");
                propertyValuesHolderArrE2[0].setFloatValues(ExtendedFloatingActionButton.this.getHeight(), this.g.getHeight());
                o55VarI.b.put("height", propertyValuesHolderArrE2);
            }
            if (o55VarI.g("paddingStart")) {
                PropertyValuesHolder[] propertyValuesHolderArrE3 = o55VarI.e("paddingStart");
                PropertyValuesHolder propertyValuesHolder = propertyValuesHolderArrE3[0];
                ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
                AtomicInteger atomicInteger = ha.a;
                propertyValuesHolder.setFloatValues(extendedFloatingActionButton.getPaddingStart(), this.g.b());
                o55VarI.b.put("paddingStart", propertyValuesHolderArrE3);
            }
            if (o55VarI.g("paddingEnd")) {
                PropertyValuesHolder[] propertyValuesHolderArrE4 = o55VarI.e("paddingEnd");
                PropertyValuesHolder propertyValuesHolder2 = propertyValuesHolderArrE4[0];
                ExtendedFloatingActionButton extendedFloatingActionButton2 = ExtendedFloatingActionButton.this;
                AtomicInteger atomicInteger2 = ha.a;
                propertyValuesHolder2.setFloatValues(extendedFloatingActionButton2.getPaddingEnd(), this.g.a());
                o55VarI.b.put("paddingEnd", propertyValuesHolderArrE4);
            }
            if (o55VarI.g("labelOpacity")) {
                PropertyValuesHolder[] propertyValuesHolderArrE5 = o55VarI.e("labelOpacity");
                boolean z = this.h;
                propertyValuesHolderArrE5[0].setFloatValues(z ? 0.0f : 1.0f, z ? 1.0f : 0.0f);
                o55VarI.b.put("labelOpacity", propertyValuesHolderArrE5);
            }
            return h(o55VarI);
        }

        @Override // defpackage.i85
        public void g(i iVar) {
            if (iVar == null) {
                return;
            }
            if (!this.h) {
                throw null;
            }
            throw null;
        }

        @Override // defpackage.y75, defpackage.i85
        public void onAnimationStart(Animator animator) {
            x75 x75Var = this.d;
            Animator animator2 = x75Var.a;
            if (animator2 != null) {
                animator2.cancel();
            }
            x75Var.a = animator;
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            extendedFloatingActionButton.G = this.h;
            extendedFloatingActionButton.H = true;
            extendedFloatingActionButton.setHorizontallyScrolling(true);
        }
    }

    public class h extends y75 {
        public boolean g;

        public h(x75 x75Var) {
            super(ExtendedFloatingActionButton.this, x75Var);
        }

        @Override // defpackage.y75, defpackage.i85
        public void a() {
            this.d.a = null;
            this.g = true;
        }

        @Override // defpackage.i85
        public int b() {
            return R$animator.mtrl_extended_fab_hide_motion_spec;
        }

        @Override // defpackage.i85
        public void c() {
            ExtendedFloatingActionButton.this.setVisibility(8);
        }

        @Override // defpackage.i85
        public boolean d() {
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            int i = ExtendedFloatingActionButton.K;
            if (extendedFloatingActionButton.getVisibility() == 0) {
                if (extendedFloatingActionButton.w != 1) {
                    return false;
                }
            } else if (extendedFloatingActionButton.w == 2) {
                return false;
            }
            return true;
        }

        @Override // defpackage.y75, defpackage.i85
        public void e() {
            super.e();
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            extendedFloatingActionButton.w = 0;
            if (this.g) {
                return;
            }
            extendedFloatingActionButton.setVisibility(8);
        }

        @Override // defpackage.i85
        public void g(i iVar) {
            if (iVar != null) {
                throw null;
            }
        }

        @Override // defpackage.y75, defpackage.i85
        public void onAnimationStart(Animator animator) {
            x75 x75Var = this.d;
            Animator animator2 = x75Var.a;
            if (animator2 != null) {
                animator2.cancel();
            }
            x75Var.a = animator;
            this.g = false;
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.w = 1;
        }
    }

    public static abstract class i {
    }

    public class j extends y75 {
        public j(x75 x75Var) {
            super(ExtendedFloatingActionButton.this, x75Var);
        }

        @Override // defpackage.i85
        public int b() {
            return R$animator.mtrl_extended_fab_show_motion_spec;
        }

        @Override // defpackage.i85
        public void c() {
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.setAlpha(1.0f);
            ExtendedFloatingActionButton.this.setScaleY(1.0f);
            ExtendedFloatingActionButton.this.setScaleX(1.0f);
        }

        @Override // defpackage.i85
        public boolean d() {
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            int i = ExtendedFloatingActionButton.K;
            return extendedFloatingActionButton.j();
        }

        @Override // defpackage.y75, defpackage.i85
        public void e() {
            super.e();
            ExtendedFloatingActionButton.this.w = 0;
        }

        @Override // defpackage.i85
        public void g(i iVar) {
            if (iVar != null) {
                throw null;
            }
        }

        @Override // defpackage.y75, defpackage.i85
        public void onAnimationStart(Animator animator) {
            x75 x75Var = this.d;
            Animator animator2 = x75Var.a;
            if (animator2 != null) {
                animator2.cancel();
            }
            x75Var.a = animator;
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.w = 2;
        }
    }

    public interface k {
        int a();

        int b();

        int getHeight();

        ViewGroup.LayoutParams getLayoutParams();

        int getWidth();
    }

    public ExtendedFloatingActionButton(Context context) {
        this(context, null);
    }

    public static void i(ExtendedFloatingActionButton extendedFloatingActionButton, i85 i85Var) {
        Objects.requireNonNull(extendedFloatingActionButton);
        if (i85Var.d()) {
            return;
        }
        AtomicInteger atomicInteger = ha.a;
        if (!((extendedFloatingActionButton.isLaidOut() || (!extendedFloatingActionButton.j() && extendedFloatingActionButton.I)) && !extendedFloatingActionButton.isInEditMode())) {
            i85Var.c();
            i85Var.g(null);
            return;
        }
        extendedFloatingActionButton.measure(0, 0);
        AnimatorSet animatorSetF = i85Var.f();
        animatorSetF.addListener(new a85(extendedFloatingActionButton, i85Var));
        Iterator<Animator.AnimatorListener> it = ((y75) i85Var).c.iterator();
        while (it.hasNext()) {
            animatorSetF.addListener(it.next());
        }
        animatorSetF.start();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public CoordinatorLayout.c<ExtendedFloatingActionButton> getBehavior() {
        return this.F;
    }

    public int getCollapsedPadding() {
        return (getCollapsedSize() - getIconSize()) / 2;
    }

    public int getCollapsedSize() {
        int i2 = this.C;
        if (i2 >= 0) {
            return i2;
        }
        AtomicInteger atomicInteger = ha.a;
        return (Math.min(getPaddingStart(), getPaddingEnd()) * 2) + getIconSize();
    }

    public o55 getExtendMotionSpec() {
        return ((y75) this.z).f;
    }

    public o55 getHideMotionSpec() {
        return ((y75) this.B).f;
    }

    public o55 getShowMotionSpec() {
        return ((y75) this.A).f;
    }

    public o55 getShrinkMotionSpec() {
        return ((y75) this.y).f;
    }

    public final boolean j() {
        return getVisibility() != 0 ? this.w == 2 : this.w != 1;
    }

    public final void k() {
        this.J = getTextColors();
    }

    public void l(ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
    }

    @Override // com.google.android.material.button.MaterialButton, android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.G && TextUtils.isEmpty(getText()) && getIcon() != null) {
            this.G = false;
            this.y.c();
        }
    }

    public void setAnimateShowBeforeLayout(boolean z) {
        this.I = z;
    }

    public void setExtendMotionSpec(o55 o55Var) {
        ((y75) this.z).f = o55Var;
    }

    public void setExtendMotionSpecResource(int i2) {
        setExtendMotionSpec(o55.b(getContext(), i2));
    }

    public void setExtended(boolean z) {
        if (this.G == z) {
            return;
        }
        i85 i85Var = z ? this.z : this.y;
        if (i85Var.d()) {
            return;
        }
        i85Var.c();
    }

    public void setHideMotionSpec(o55 o55Var) {
        ((y75) this.B).f = o55Var;
    }

    public void setHideMotionSpecResource(int i2) {
        setHideMotionSpec(o55.b(getContext(), i2));
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i2, int i3, int i4, int i5) {
        super.setPadding(i2, i3, i4, i5);
        if (!this.G || this.H) {
            return;
        }
        AtomicInteger atomicInteger = ha.a;
        this.D = getPaddingStart();
        this.E = getPaddingEnd();
    }

    @Override // android.widget.TextView, android.view.View
    public void setPaddingRelative(int i2, int i3, int i4, int i5) {
        super.setPaddingRelative(i2, i3, i4, i5);
        if (!this.G || this.H) {
            return;
        }
        this.D = i2;
        this.E = i4;
    }

    public void setShowMotionSpec(o55 o55Var) {
        ((y75) this.A).f = o55Var;
    }

    public void setShowMotionSpecResource(int i2) {
        setShowMotionSpec(o55.b(getContext(), i2));
    }

    public void setShrinkMotionSpec(o55 o55Var) {
        ((y75) this.y).f = o55Var;
    }

    public void setShrinkMotionSpecResource(int i2) {
        setShrinkMotionSpec(o55.b(getContext(), i2));
    }

    @Override // android.widget.TextView
    public void setTextColor(int i2) {
        super.setTextColor(i2);
        k();
    }

    public ExtendedFloatingActionButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.extendedFloatingActionButtonStyle);
    }

    public static class ExtendedFloatingActionButtonBehavior<T extends ExtendedFloatingActionButton> extends CoordinatorLayout.c<T> {
        public Rect a;
        public boolean b;
        public boolean c;

        public ExtendedFloatingActionButtonBehavior() {
            this.b = false;
            this.c = true;
        }

        public final boolean B(View view, ExtendedFloatingActionButton extendedFloatingActionButton) {
            return (this.b || this.c) && ((CoordinatorLayout.f) extendedFloatingActionButton.getLayoutParams()).f == view.getId();
        }

        public final boolean C(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, ExtendedFloatingActionButton extendedFloatingActionButton) {
            if (!B(appBarLayout, extendedFloatingActionButton)) {
                return false;
            }
            if (this.a == null) {
                this.a = new Rect();
            }
            Rect rect = this.a;
            k85.a(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                ExtendedFloatingActionButton.i(extendedFloatingActionButton, this.c ? extendedFloatingActionButton.y : extendedFloatingActionButton.B);
                return true;
            }
            ExtendedFloatingActionButton.i(extendedFloatingActionButton, this.c ? extendedFloatingActionButton.z : extendedFloatingActionButton.A);
            return true;
        }

        public final boolean D(View view, ExtendedFloatingActionButton extendedFloatingActionButton) {
            if (!B(view, extendedFloatingActionButton)) {
                return false;
            }
            if (view.getTop() < (extendedFloatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.f) extendedFloatingActionButton.getLayoutParams())).topMargin) {
                ExtendedFloatingActionButton.i(extendedFloatingActionButton, this.c ? extendedFloatingActionButton.y : extendedFloatingActionButton.B);
                return true;
            }
            ExtendedFloatingActionButton.i(extendedFloatingActionButton, this.c ? extendedFloatingActionButton.z : extendedFloatingActionButton.A);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public /* bridge */ /* synthetic */ boolean a(CoordinatorLayout coordinatorLayout, View view, Rect rect) {
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public void f(CoordinatorLayout.f fVar) {
            if (fVar.h == 0) {
                fVar.h = 80;
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public boolean g(CoordinatorLayout coordinatorLayout, View view, View view2) {
            ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) view;
            if (view2 instanceof AppBarLayout) {
                C(coordinatorLayout, (AppBarLayout) view2, extendedFloatingActionButton);
            } else {
                ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                if (layoutParams instanceof CoordinatorLayout.f ? ((CoordinatorLayout.f) layoutParams).a instanceof BottomSheetBehavior : false) {
                    D(view2, extendedFloatingActionButton);
                }
            }
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public boolean k(CoordinatorLayout coordinatorLayout, View view, int i) {
            ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) view;
            List<View> listO = coordinatorLayout.o(extendedFloatingActionButton);
            int size = listO.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view2 = listO.get(i2);
                if (!(view2 instanceof AppBarLayout)) {
                    ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                    if ((layoutParams instanceof CoordinatorLayout.f ? ((CoordinatorLayout.f) layoutParams).a instanceof BottomSheetBehavior : false) && D(view2, extendedFloatingActionButton)) {
                        break;
                    }
                } else {
                    if (C(coordinatorLayout, (AppBarLayout) view2, extendedFloatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.w(extendedFloatingActionButton, i);
            return true;
        }

        public ExtendedFloatingActionButtonBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ExtendedFloatingActionButton_Behavior_Layout);
            this.b = typedArrayObtainStyledAttributes.getBoolean(R$styleable.ExtendedFloatingActionButton_Behavior_Layout_behavior_autoHide, false);
            this.c = typedArrayObtainStyledAttributes.getBoolean(R$styleable.ExtendedFloatingActionButton_Behavior_Layout_behavior_autoShrink, true);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ExtendedFloatingActionButton(Context context, AttributeSet attributeSet, int i2) {
        int i3 = K;
        super(fc5.a(context, attributeSet, i2, i3), attributeSet, i2);
        this.w = 0;
        x75 x75Var = new x75();
        this.x = x75Var;
        j jVar = new j(x75Var);
        this.A = jVar;
        h hVar = new h(x75Var);
        this.B = hVar;
        this.G = true;
        this.H = false;
        this.I = false;
        Context context2 = getContext();
        this.F = new ExtendedFloatingActionButtonBehavior(context2, attributeSet);
        TypedArray typedArrayD = t85.d(context2, attributeSet, R$styleable.ExtendedFloatingActionButton, i2, i3, new int[0]);
        o55 o55VarA = o55.a(context2, typedArrayD, R$styleable.ExtendedFloatingActionButton_showMotionSpec);
        o55 o55VarA2 = o55.a(context2, typedArrayD, R$styleable.ExtendedFloatingActionButton_hideMotionSpec);
        o55 o55VarA3 = o55.a(context2, typedArrayD, R$styleable.ExtendedFloatingActionButton_extendMotionSpec);
        o55 o55VarA4 = o55.a(context2, typedArrayD, R$styleable.ExtendedFloatingActionButton_shrinkMotionSpec);
        this.C = typedArrayD.getDimensionPixelSize(R$styleable.ExtendedFloatingActionButton_collapsedSize, -1);
        AtomicInteger atomicInteger = ha.a;
        this.D = getPaddingStart();
        this.E = getPaddingEnd();
        x75 x75Var2 = new x75();
        g gVar = new g(x75Var2, new a(), true);
        this.z = gVar;
        g gVar2 = new g(x75Var2, new b(), false);
        this.y = gVar2;
        jVar.f = o55VarA;
        hVar.f = o55VarA2;
        gVar.f = o55VarA3;
        gVar2.f = o55VarA4;
        typedArrayD.recycle();
        setShapeAppearanceModel(pa5.b(context2, attributeSet, i2, i3, pa5.m).a());
        k();
    }

    @Override // android.widget.TextView
    public void setTextColor(ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
        k();
    }
}
