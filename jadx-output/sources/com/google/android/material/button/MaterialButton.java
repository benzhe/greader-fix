package com.google.android.material.button;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.Log;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.CompoundButton;
import androidx.appcompat.widget.AppCompatButton;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import defpackage.ba5;
import defpackage.c50;
import defpackage.d0;
import defpackage.ea5;
import defpackage.fc5;
import defpackage.ha;
import defpackage.la5;
import defpackage.p0;
import defpackage.pa5;
import defpackage.q65;
import defpackage.t85;
import defpackage.ta5;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class MaterialButton extends AppCompatButton implements Checkable, ta5 {
    public static final int[] t = {R.attr.state_checkable};
    public static final int[] u = {R.attr.state_checked};
    public static final int v = R$style.Widget_MaterialComponents_Button;
    public final q65 g;
    public final LinkedHashSet<a> h;
    public b i;
    public PorterDuff.Mode j;
    public ColorStateList k;
    public Drawable l;
    public int m;
    public int n;
    public int o;
    public int p;
    public boolean q;
    public boolean r;
    public int s;

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        public boolean g;

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
            parcel.writeInt(this.g ? 1 : 0);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            if (classLoader == null) {
                SavedState.class.getClassLoader();
            }
            this.g = parcel.readInt() == 1;
        }
    }

    public interface a {
        void a(MaterialButton materialButton, boolean z);
    }

    public interface b {
    }

    public MaterialButton(Context context) {
        this(context, null);
    }

    private String getA11yClassName() {
        return (a() ? CompoundButton.class : Button.class).getName();
    }

    private int getTextHeight() {
        TextPaint paint = getPaint();
        String string = getText().toString();
        if (getTransformationMethod() != null) {
            string = getTransformationMethod().getTransformation(string, this).toString();
        }
        Rect rect = new Rect();
        paint.getTextBounds(string, 0, string.length(), rect);
        return Math.min(rect.height(), getLayout().getHeight());
    }

    private int getTextWidth() {
        TextPaint paint = getPaint();
        String string = getText().toString();
        if (getTransformationMethod() != null) {
            string = getTransformationMethod().getTransformation(string, this).toString();
        }
        return Math.min((int) paint.measureText(string), getLayout().getEllipsizedWidth());
    }

    public boolean a() {
        q65 q65Var = this.g;
        return q65Var != null && q65Var.q;
    }

    public final boolean b() {
        int i = this.s;
        return i == 3 || i == 4;
    }

    public final boolean c() {
        int i = this.s;
        return i == 1 || i == 2;
    }

    public final boolean d() {
        int i = this.s;
        return i == 16 || i == 32;
    }

    public final boolean e() {
        q65 q65Var = this.g;
        return (q65Var == null || q65Var.o) ? false : true;
    }

    public final void f() {
        if (c()) {
            setCompoundDrawablesRelative(this.l, null, null, null);
        } else if (b()) {
            setCompoundDrawablesRelative(null, null, this.l, null);
        } else if (d()) {
            setCompoundDrawablesRelative(null, this.l, null, null);
        }
    }

    public final void g(boolean z) {
        Drawable drawable = this.l;
        if (drawable != null) {
            Drawable drawableMutate = d0.h.l0(drawable).mutate();
            this.l = drawableMutate;
            drawableMutate.setTintList(this.k);
            PorterDuff.Mode mode = this.j;
            if (mode != null) {
                this.l.setTintMode(mode);
            }
            int intrinsicWidth = this.m;
            if (intrinsicWidth == 0) {
                intrinsicWidth = this.l.getIntrinsicWidth();
            }
            int intrinsicHeight = this.m;
            if (intrinsicHeight == 0) {
                intrinsicHeight = this.l.getIntrinsicHeight();
            }
            Drawable drawable2 = this.l;
            int i = this.n;
            int i2 = this.o;
            drawable2.setBounds(i, i2, intrinsicWidth + i, intrinsicHeight + i2);
        }
        if (z) {
            f();
            return;
        }
        Drawable[] compoundDrawablesRelative = getCompoundDrawablesRelative();
        boolean z2 = false;
        Drawable drawable3 = compoundDrawablesRelative[0];
        Drawable drawable4 = compoundDrawablesRelative[1];
        Drawable drawable5 = compoundDrawablesRelative[2];
        if ((c() && drawable3 != this.l) || ((b() && drawable5 != this.l) || (d() && drawable4 != this.l))) {
            z2 = true;
        }
        if (z2) {
            f();
        }
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    public int getCornerRadius() {
        if (e()) {
            return this.g.g;
        }
        return 0;
    }

    public Drawable getIcon() {
        return this.l;
    }

    public int getIconGravity() {
        return this.s;
    }

    public int getIconPadding() {
        return this.p;
    }

    public int getIconSize() {
        return this.m;
    }

    public ColorStateList getIconTint() {
        return this.k;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.j;
    }

    public int getInsetBottom() {
        return this.g.f;
    }

    public int getInsetTop() {
        return this.g.e;
    }

    public ColorStateList getRippleColor() {
        if (e()) {
            return this.g.l;
        }
        return null;
    }

    public pa5 getShapeAppearanceModel() {
        if (e()) {
            return this.g.b;
        }
        throw new IllegalStateException("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
    }

    public ColorStateList getStrokeColor() {
        if (e()) {
            return this.g.k;
        }
        return null;
    }

    public int getStrokeWidth() {
        if (e()) {
            return this.g.h;
        }
        return 0;
    }

    @Override // androidx.appcompat.widget.AppCompatButton
    public ColorStateList getSupportBackgroundTintList() {
        return e() ? this.g.j : super.getSupportBackgroundTintList();
    }

    @Override // androidx.appcompat.widget.AppCompatButton
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return e() ? this.g.i : super.getSupportBackgroundTintMode();
    }

    public final void h(int i, int i2) {
        if (this.l == null || getLayout() == null) {
            return;
        }
        if (!c() && !b()) {
            if (d()) {
                this.n = 0;
                if (this.s == 16) {
                    this.o = 0;
                    g(false);
                    return;
                }
                int intrinsicHeight = this.m;
                if (intrinsicHeight == 0) {
                    intrinsicHeight = this.l.getIntrinsicHeight();
                }
                int textHeight = (((((i2 - getTextHeight()) - getPaddingTop()) - intrinsicHeight) - this.p) - getPaddingBottom()) / 2;
                if (this.o != textHeight) {
                    this.o = textHeight;
                    g(false);
                    return;
                }
                return;
            }
            return;
        }
        this.o = 0;
        int i3 = this.s;
        if (i3 == 1 || i3 == 3) {
            this.n = 0;
            g(false);
            return;
        }
        int intrinsicWidth = this.m;
        if (intrinsicWidth == 0) {
            intrinsicWidth = this.l.getIntrinsicWidth();
        }
        int textWidth = i - getTextWidth();
        AtomicInteger atomicInteger = ha.a;
        int paddingEnd = ((((textWidth - getPaddingEnd()) - intrinsicWidth) - this.p) - getPaddingStart()) / 2;
        if ((getLayoutDirection() == 1) != (this.s == 4)) {
            paddingEnd = -paddingEnd;
        }
        if (this.n != paddingEnd) {
            this.n = paddingEnd;
            g(false);
        }
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.q;
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (e()) {
            c50.I0(this, this.g.b());
        }
    }

    @Override // android.widget.TextView, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (a()) {
            Button.mergeDrawableStates(iArrOnCreateDrawableState, t);
        }
        if (isChecked()) {
            Button.mergeDrawableStates(iArrOnCreateDrawableState, u);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(getA11yClassName());
        accessibilityEvent.setChecked(isChecked());
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getA11yClassName());
        accessibilityNodeInfo.setCheckable(a());
        accessibilityNodeInfo.setChecked(isChecked());
        accessibilityNodeInfo.setClickable(isClickable());
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        q65 q65Var;
        super.onLayout(z, i, i2, i3, i4);
        if (Build.VERSION.SDK_INT != 21 || (q65Var = this.g) == null) {
            return;
        }
        int i5 = i4 - i2;
        int i6 = i3 - i;
        Drawable drawable = q65Var.m;
        if (drawable != null) {
            drawable.setBounds(q65Var.c, q65Var.e, i6 - q65Var.d, i5 - q65Var.f);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.e);
        setChecked(savedState.g);
    }

    @Override // android.widget.TextView, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.g = this.q;
        return savedState;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        h(i, i2);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        h(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public boolean performClick() {
        toggle();
        return super.performClick();
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        if (!e()) {
            super.setBackgroundColor(i);
            return;
        }
        q65 q65Var = this.g;
        if (q65Var.b() != null) {
            q65Var.b().setTint(i);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (!e()) {
            super.setBackgroundDrawable(drawable);
            return;
        }
        if (drawable == getBackground()) {
            getBackground().setState(drawable.getState());
            return;
        }
        Log.w("MaterialButton", "MaterialButton manages its own background to control elevation, shape, color and states. Consider using backgroundTint, shapeAppearance and other attributes where available. A custom background will ignore these attributes and you should consider handling interaction states such as pressed, focused and disabled");
        q65 q65Var = this.g;
        q65Var.o = true;
        q65Var.a.setSupportBackgroundTintList(q65Var.j);
        q65Var.a.setSupportBackgroundTintMode(q65Var.i);
        super.setBackgroundDrawable(drawable);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundResource(int i) {
        setBackgroundDrawable(i != 0 ? p0.b(getContext(), i) : null);
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    public void setCheckable(boolean z) {
        if (e()) {
            this.g.q = z;
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (a() && isEnabled() && this.q != z) {
            this.q = z;
            refreshDrawableState();
            if (this.r) {
                return;
            }
            this.r = true;
            Iterator<a> it = this.h.iterator();
            while (it.hasNext()) {
                it.next().a(this, this.q);
            }
            this.r = false;
        }
    }

    public void setCornerRadius(int i) {
        if (e()) {
            q65 q65Var = this.g;
            if (q65Var.p && q65Var.g == i) {
                return;
            }
            q65Var.g = i;
            q65Var.p = true;
            q65Var.e(q65Var.b.e(i));
        }
    }

    public void setCornerRadiusResource(int i) {
        if (e()) {
            setCornerRadius(getResources().getDimensionPixelSize(i));
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        if (e()) {
            la5 la5VarB = this.g.b();
            la5.b bVar = la5VarB.e;
            if (bVar.o != f) {
                bVar.o = f;
                la5VarB.E();
            }
        }
    }

    public void setIcon(Drawable drawable) {
        if (this.l != drawable) {
            this.l = drawable;
            g(true);
            h(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconGravity(int i) {
        if (this.s != i) {
            this.s = i;
            h(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconPadding(int i) {
        if (this.p != i) {
            this.p = i;
            setCompoundDrawablePadding(i);
        }
    }

    public void setIconResource(int i) {
        setIcon(i != 0 ? p0.b(getContext(), i) : null);
    }

    public void setIconSize(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("iconSize cannot be less than 0");
        }
        if (this.m != i) {
            this.m = i;
            g(true);
        }
    }

    public void setIconTint(ColorStateList colorStateList) {
        if (this.k != colorStateList) {
            this.k = colorStateList;
            g(false);
        }
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.j != mode) {
            this.j = mode;
            g(false);
        }
    }

    public void setIconTintResource(int i) {
        setIconTint(p0.a(getContext(), i));
    }

    public void setInsetBottom(int i) {
        q65 q65Var = this.g;
        q65Var.f(q65Var.e, i);
    }

    public void setInsetTop(int i) {
        q65 q65Var = this.g;
        q65Var.f(i, q65Var.f);
    }

    public void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    public void setOnPressedChangeListenerInternal(b bVar) {
        this.i = bVar;
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        b bVar = this.i;
        if (bVar != null) {
            MaterialButtonToggleGroup.this.invalidate();
        }
        super.setPressed(z);
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (e()) {
            q65 q65Var = this.g;
            if (q65Var.l != colorStateList) {
                q65Var.l = colorStateList;
                if (q65Var.a.getBackground() instanceof RippleDrawable) {
                    ((RippleDrawable) q65Var.a.getBackground()).setColor(ba5.c(colorStateList));
                }
            }
        }
    }

    public void setRippleColorResource(int i) {
        if (e()) {
            setRippleColor(p0.a(getContext(), i));
        }
    }

    @Override // defpackage.ta5
    public void setShapeAppearanceModel(pa5 pa5Var) {
        if (!e()) {
            throw new IllegalStateException("Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background.");
        }
        this.g.e(pa5Var);
    }

    public void setShouldDrawSurfaceColorStroke(boolean z) {
        if (e()) {
            q65 q65Var = this.g;
            q65Var.n = z;
            q65Var.h();
        }
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        if (e()) {
            q65 q65Var = this.g;
            if (q65Var.k != colorStateList) {
                q65Var.k = colorStateList;
                q65Var.h();
            }
        }
    }

    public void setStrokeColorResource(int i) {
        if (e()) {
            setStrokeColor(p0.a(getContext(), i));
        }
    }

    public void setStrokeWidth(int i) {
        if (e()) {
            q65 q65Var = this.g;
            if (q65Var.h != i) {
                q65Var.h = i;
                q65Var.h();
            }
        }
    }

    public void setStrokeWidthResource(int i) {
        if (e()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i));
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (!e()) {
            super.setSupportBackgroundTintList(colorStateList);
            return;
        }
        q65 q65Var = this.g;
        if (q65Var.j != colorStateList) {
            q65Var.j = colorStateList;
            if (q65Var.b() != null) {
                q65Var.b().setTintList(q65Var.j);
            }
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (!e()) {
            super.setSupportBackgroundTintMode(mode);
            return;
        }
        q65 q65Var = this.g;
        if (q65Var.i != mode) {
            q65Var.i = mode;
            if (q65Var.b() == null || q65Var.i == null) {
                return;
            }
            q65Var.b().setTintMode(q65Var.i);
        }
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.q);
    }

    public MaterialButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.materialButtonStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialButton(Context context, AttributeSet attributeSet, int i) {
        int i2 = v;
        super(fc5.a(context, attributeSet, i, i2), attributeSet, i);
        this.h = new LinkedHashSet<>();
        this.q = false;
        this.r = false;
        Context context2 = getContext();
        TypedArray typedArrayD = t85.d(context2, attributeSet, R$styleable.MaterialButton, i, i2, new int[0]);
        this.p = typedArrayD.getDimensionPixelSize(R$styleable.MaterialButton_iconPadding, 0);
        this.j = c50.B0(typedArrayD.getInt(R$styleable.MaterialButton_iconTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.k = c50.a0(getContext(), typedArrayD, R$styleable.MaterialButton_iconTint);
        this.l = c50.f0(getContext(), typedArrayD, R$styleable.MaterialButton_icon);
        this.s = typedArrayD.getInteger(R$styleable.MaterialButton_iconGravity, 1);
        this.m = typedArrayD.getDimensionPixelSize(R$styleable.MaterialButton_iconSize, 0);
        q65 q65Var = new q65(this, pa5.b(context2, attributeSet, i, i2, new ea5(0)).a());
        this.g = q65Var;
        Objects.requireNonNull(q65Var);
        q65Var.c = typedArrayD.getDimensionPixelOffset(R$styleable.MaterialButton_android_insetLeft, 0);
        q65Var.d = typedArrayD.getDimensionPixelOffset(R$styleable.MaterialButton_android_insetRight, 0);
        q65Var.e = typedArrayD.getDimensionPixelOffset(R$styleable.MaterialButton_android_insetTop, 0);
        q65Var.f = typedArrayD.getDimensionPixelOffset(R$styleable.MaterialButton_android_insetBottom, 0);
        int i3 = R$styleable.MaterialButton_cornerRadius;
        if (typedArrayD.hasValue(i3)) {
            int dimensionPixelSize = typedArrayD.getDimensionPixelSize(i3, -1);
            q65Var.g = dimensionPixelSize;
            q65Var.e(q65Var.b.e(dimensionPixelSize));
            q65Var.p = true;
        }
        q65Var.h = typedArrayD.getDimensionPixelSize(R$styleable.MaterialButton_strokeWidth, 0);
        q65Var.i = c50.B0(typedArrayD.getInt(R$styleable.MaterialButton_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN);
        q65Var.j = c50.a0(q65Var.a.getContext(), typedArrayD, R$styleable.MaterialButton_backgroundTint);
        q65Var.k = c50.a0(q65Var.a.getContext(), typedArrayD, R$styleable.MaterialButton_strokeColor);
        q65Var.l = c50.a0(q65Var.a.getContext(), typedArrayD, R$styleable.MaterialButton_rippleColor);
        q65Var.q = typedArrayD.getBoolean(R$styleable.MaterialButton_android_checkable, false);
        q65Var.s = typedArrayD.getDimensionPixelSize(R$styleable.MaterialButton_elevation, 0);
        MaterialButton materialButton = q65Var.a;
        AtomicInteger atomicInteger = ha.a;
        int paddingStart = materialButton.getPaddingStart();
        int paddingTop = q65Var.a.getPaddingTop();
        int paddingEnd = q65Var.a.getPaddingEnd();
        int paddingBottom = q65Var.a.getPaddingBottom();
        if (typedArrayD.hasValue(R$styleable.MaterialButton_android_background)) {
            q65Var.o = true;
            q65Var.a.setSupportBackgroundTintList(q65Var.j);
            q65Var.a.setSupportBackgroundTintMode(q65Var.i);
        } else {
            q65Var.g();
        }
        q65Var.a.setPaddingRelative(paddingStart + q65Var.c, paddingTop + q65Var.e, paddingEnd + q65Var.d, paddingBottom + q65Var.f);
        typedArrayD.recycle();
        setCompoundDrawablePadding(this.p);
        g(this.l != null);
    }
}
