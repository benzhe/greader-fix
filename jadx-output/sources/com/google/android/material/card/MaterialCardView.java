package com.google.android.material.card;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Checkable;
import android.widget.FrameLayout;
import androidx.cardview.widget.CardView;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import defpackage.c50;
import defpackage.fc5;
import defpackage.ha;
import defpackage.la5;
import defpackage.p0;
import defpackage.pa5;
import defpackage.r65;
import defpackage.t85;
import defpackage.ta5;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class MaterialCardView extends CardView implements Checkable, ta5 {
    public static final int[] s = {R.attr.state_checkable};
    public static final int[] t = {R.attr.state_checked};
    public static final int[] u = {R$attr.state_dragged};
    public static final int v = R$style.Widget_MaterialComponents_CardView;
    public final r65 n;
    public boolean o;
    public boolean p;
    public boolean q;
    public a r;

    public interface a {
        void a(MaterialCardView materialCardView, boolean z);
    }

    public MaterialCardView(Context context) {
        this(context, null);
    }

    private RectF getBoundsAsRectF() {
        RectF rectF = new RectF();
        rectF.set(this.n.c.getBounds());
        return rectF;
    }

    public final void f() {
        r65 r65Var;
        Drawable drawable;
        if (Build.VERSION.SDK_INT <= 26 || (drawable = (r65Var = this.n).n) == null) {
            return;
        }
        Rect bounds = drawable.getBounds();
        int i = bounds.bottom;
        r65Var.n.setBounds(bounds.left, bounds.top, bounds.right, i - 1);
        r65Var.n.setBounds(bounds.left, bounds.top, bounds.right, i);
    }

    public boolean g() {
        r65 r65Var = this.n;
        return r65Var != null && r65Var.s;
    }

    @Override // androidx.cardview.widget.CardView
    public ColorStateList getCardBackgroundColor() {
        return this.n.c.e.d;
    }

    public ColorStateList getCardForegroundColor() {
        return this.n.d.e.d;
    }

    public float getCardViewRadius() {
        return super.getRadius();
    }

    public Drawable getCheckedIcon() {
        return this.n.i;
    }

    public int getCheckedIconMargin() {
        return this.n.e;
    }

    public int getCheckedIconSize() {
        return this.n.f;
    }

    public ColorStateList getCheckedIconTint() {
        return this.n.k;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingBottom() {
        return this.n.b.bottom;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingLeft() {
        return this.n.b.left;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingRight() {
        return this.n.b.right;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingTop() {
        return this.n.b.top;
    }

    public float getProgress() {
        return this.n.c.e.k;
    }

    @Override // androidx.cardview.widget.CardView
    public float getRadius() {
        return this.n.c.n();
    }

    public ColorStateList getRippleColor() {
        return this.n.j;
    }

    public pa5 getShapeAppearanceModel() {
        return this.n.l;
    }

    @Deprecated
    public int getStrokeColor() {
        ColorStateList colorStateList = this.n.m;
        if (colorStateList == null) {
            return -1;
        }
        return colorStateList.getDefaultColor();
    }

    public ColorStateList getStrokeColorStateList() {
        return this.n.m;
    }

    public int getStrokeWidth() {
        return this.n.g;
    }

    public void h(int i, int i2, int i3, int i4) {
        super.setContentPadding(i, i2, i3, i4);
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.p;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        c50.I0(this, this.n.c);
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 3);
        if (g()) {
            FrameLayout.mergeDrawableStates(iArrOnCreateDrawableState, s);
        }
        if (isChecked()) {
            FrameLayout.mergeDrawableStates(iArrOnCreateDrawableState, t);
        }
        if (this.q) {
            FrameLayout.mergeDrawableStates(iArrOnCreateDrawableState, u);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.cardview.widget.CardView");
        accessibilityEvent.setChecked(isChecked());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.cardview.widget.CardView");
        accessibilityNodeInfo.setCheckable(g());
        accessibilityNodeInfo.setClickable(isClickable());
        accessibilityNodeInfo.setChecked(isChecked());
    }

    @Override // androidx.cardview.widget.CardView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        int i4;
        super.onMeasure(i, i2);
        r65 r65Var = this.n;
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (r65Var.o != null) {
            int i5 = r65Var.e;
            int i6 = r65Var.f;
            int iCeil = (measuredWidth - i5) - i6;
            int iCeil2 = (measuredHeight - i5) - i6;
            if (r65Var.a.getUseCompatPadding()) {
                iCeil2 -= (int) Math.ceil(r65Var.d() * 2.0f);
                iCeil -= (int) Math.ceil(r65Var.c() * 2.0f);
            }
            int i7 = iCeil2;
            int i8 = r65Var.e;
            MaterialCardView materialCardView = r65Var.a;
            AtomicInteger atomicInteger = ha.a;
            if (materialCardView.getLayoutDirection() == 1) {
                i4 = iCeil;
                i3 = i8;
            } else {
                i3 = iCeil;
                i4 = i8;
            }
            r65Var.o.setLayerInset(2, i3, r65Var.e, i4, i7);
        }
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (this.o) {
            if (!this.n.r) {
                Log.i("MaterialCardView", "Setting a custom background is not supported.");
                this.n.r = true;
            }
            super.setBackgroundDrawable(drawable);
        }
    }

    public void setBackgroundInternal(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardBackgroundColor(int i) {
        r65 r65Var = this.n;
        r65Var.c.t(ColorStateList.valueOf(i));
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardElevation(float f) {
        super.setCardElevation(f);
        r65 r65Var = this.n;
        r65Var.c.s(r65Var.a.getCardElevation());
    }

    public void setCardForegroundColor(ColorStateList colorStateList) {
        la5 la5Var = this.n.d;
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        la5Var.t(colorStateList);
    }

    public void setCheckable(boolean z) {
        this.n.s = z;
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (this.p != z) {
            toggle();
        }
    }

    public void setCheckedIcon(Drawable drawable) {
        this.n.g(drawable);
    }

    public void setCheckedIconMargin(int i) {
        this.n.e = i;
    }

    public void setCheckedIconMarginResource(int i) {
        if (i != -1) {
            this.n.e = getResources().getDimensionPixelSize(i);
        }
    }

    public void setCheckedIconResource(int i) {
        this.n.g(p0.b(getContext(), i));
    }

    public void setCheckedIconSize(int i) {
        this.n.f = i;
    }

    public void setCheckedIconSizeResource(int i) {
        if (i != 0) {
            this.n.f = getResources().getDimensionPixelSize(i);
        }
    }

    public void setCheckedIconTint(ColorStateList colorStateList) {
        r65 r65Var = this.n;
        r65Var.k = colorStateList;
        Drawable drawable = r65Var.i;
        if (drawable != null) {
            drawable.setTintList(colorStateList);
        }
    }

    @Override // android.view.View
    public void setClickable(boolean z) {
        super.setClickable(z);
        r65 r65Var = this.n;
        if (r65Var != null) {
            Drawable drawable = r65Var.h;
            Drawable drawableE = r65Var.a.isClickable() ? r65Var.e() : r65Var.d;
            r65Var.h = drawableE;
            if (drawable != drawableE) {
                if (Build.VERSION.SDK_INT < 23 || !(r65Var.a.getForeground() instanceof InsetDrawable)) {
                    r65Var.a.setForeground(r65Var.f(drawableE));
                } else {
                    ((InsetDrawable) r65Var.a.getForeground()).setDrawable(drawableE);
                }
            }
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setContentPadding(int i, int i2, int i3, int i4) {
        r65 r65Var = this.n;
        r65Var.b.set(i, i2, i3, i4);
        r65Var.k();
    }

    public void setDragged(boolean z) {
        if (this.q != z) {
            this.q = z;
            refreshDrawableState();
            f();
            invalidate();
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setMaxCardElevation(float f) {
        super.setMaxCardElevation(f);
        this.n.l();
    }

    public void setOnCheckedChangeListener(a aVar) {
        this.r = aVar;
    }

    @Override // androidx.cardview.widget.CardView
    public void setPreventCornerOverlap(boolean z) {
        super.setPreventCornerOverlap(z);
        this.n.l();
        this.n.k();
    }

    public void setProgress(float f) {
        r65 r65Var = this.n;
        r65Var.c.u(f);
        la5 la5Var = r65Var.d;
        if (la5Var != null) {
            la5Var.u(f);
        }
        la5 la5Var2 = r65Var.q;
        if (la5Var2 != null) {
            la5Var2.u(f);
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setRadius(float f) {
        super.setRadius(f);
        r65 r65Var = this.n;
        r65Var.h(r65Var.l.e(f));
        r65Var.h.invalidateSelf();
        if (r65Var.j() || r65Var.i()) {
            r65Var.k();
        }
        if (r65Var.j()) {
            r65Var.l();
        }
    }

    public void setRippleColor(ColorStateList colorStateList) {
        r65 r65Var = this.n;
        r65Var.j = colorStateList;
        r65Var.m();
    }

    public void setRippleColorResource(int i) {
        r65 r65Var = this.n;
        r65Var.j = p0.a(getContext(), i);
        r65Var.m();
    }

    @Override // defpackage.ta5
    public void setShapeAppearanceModel(pa5 pa5Var) {
        setClipToOutline(pa5Var.d(getBoundsAsRectF()));
        this.n.h(pa5Var);
    }

    public void setStrokeColor(int i) {
        r65 r65Var = this.n;
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(i);
        if (r65Var.m == colorStateListValueOf) {
            return;
        }
        r65Var.m = colorStateListValueOf;
        r65Var.n();
    }

    public void setStrokeWidth(int i) {
        r65 r65Var = this.n;
        if (i == r65Var.g) {
            return;
        }
        r65Var.g = i;
        r65Var.n();
    }

    @Override // androidx.cardview.widget.CardView
    public void setUseCompatPadding(boolean z) {
        super.setUseCompatPadding(z);
        this.n.l();
        this.n.k();
    }

    @Override // android.widget.Checkable
    public void toggle() {
        if (g() && isEnabled()) {
            this.p = !this.p;
            refreshDrawableState();
            f();
            a aVar = this.r;
            if (aVar != null) {
                aVar.a(this, this.p);
            }
        }
    }

    public MaterialCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.materialCardViewStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialCardView(Context context, AttributeSet attributeSet, int i) {
        int i2 = v;
        super(fc5.a(context, attributeSet, i, i2), attributeSet, i);
        this.p = false;
        this.q = false;
        this.o = true;
        TypedArray typedArrayD = t85.d(getContext(), attributeSet, R$styleable.MaterialCardView, i, i2, new int[0]);
        r65 r65Var = new r65(this, attributeSet, i, i2);
        this.n = r65Var;
        r65Var.c.t(super.getCardBackgroundColor());
        r65Var.b.set(super.getContentPaddingLeft(), super.getContentPaddingTop(), super.getContentPaddingRight(), super.getContentPaddingBottom());
        r65Var.k();
        ColorStateList colorStateListA0 = c50.a0(r65Var.a.getContext(), typedArrayD, R$styleable.MaterialCardView_strokeColor);
        r65Var.m = colorStateListA0;
        if (colorStateListA0 == null) {
            r65Var.m = ColorStateList.valueOf(-1);
        }
        r65Var.g = typedArrayD.getDimensionPixelSize(R$styleable.MaterialCardView_strokeWidth, 0);
        boolean z = typedArrayD.getBoolean(R$styleable.MaterialCardView_android_checkable, false);
        r65Var.s = z;
        r65Var.a.setLongClickable(z);
        r65Var.k = c50.a0(r65Var.a.getContext(), typedArrayD, R$styleable.MaterialCardView_checkedIconTint);
        r65Var.g(c50.f0(r65Var.a.getContext(), typedArrayD, R$styleable.MaterialCardView_checkedIcon));
        r65Var.f = typedArrayD.getDimensionPixelSize(R$styleable.MaterialCardView_checkedIconSize, 0);
        r65Var.e = typedArrayD.getDimensionPixelSize(R$styleable.MaterialCardView_checkedIconMargin, 0);
        ColorStateList colorStateListA02 = c50.a0(r65Var.a.getContext(), typedArrayD, R$styleable.MaterialCardView_rippleColor);
        r65Var.j = colorStateListA02;
        if (colorStateListA02 == null) {
            r65Var.j = ColorStateList.valueOf(c50.Z(r65Var.a, R$attr.colorControlHighlight));
        }
        ColorStateList colorStateListA03 = c50.a0(r65Var.a.getContext(), typedArrayD, R$styleable.MaterialCardView_cardForegroundColor);
        r65Var.d.t(colorStateListA03 == null ? ColorStateList.valueOf(0) : colorStateListA03);
        r65Var.m();
        r65Var.c.s(r65Var.a.getCardElevation());
        r65Var.n();
        r65Var.a.setBackgroundInternal(r65Var.f(r65Var.c));
        Drawable drawableE = r65Var.a.isClickable() ? r65Var.e() : r65Var.d;
        r65Var.h = drawableE;
        r65Var.a.setForeground(r65Var.f(drawableE));
        typedArrayD.recycle();
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardBackgroundColor(ColorStateList colorStateList) {
        this.n.c.t(colorStateList);
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        r65 r65Var = this.n;
        if (r65Var.m == colorStateList) {
            return;
        }
        r65Var.m = colorStateList;
        r65Var.n();
    }
}
