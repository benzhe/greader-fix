package androidx.appcompat.widget;

import android.R;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.Property;
import android.view.ActionMode;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$styleable;
import defpackage.c3;
import defpackage.d0;
import defpackage.ha;
import defpackage.i2;
import defpackage.i3;
import defpackage.m2;
import defpackage.p0;
import defpackage.u0;
import defpackage.x2;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class SwitchCompat extends CompoundButton {
    public static final Property<SwitchCompat, Float> R = new a(Float.class, "thumbPos");
    public static final int[] S = {R.attr.state_checked};
    public int A;
    public float B;
    public int C;
    public int D;
    public int E;
    public int F;
    public int G;
    public int H;
    public int I;
    public final TextPaint J;
    public ColorStateList K;
    public Layout L;
    public Layout M;
    public TransformationMethod N;
    public ObjectAnimator O;
    public final i2 P;
    public final Rect Q;
    public Drawable e;
    public ColorStateList f;
    public PorterDuff.Mode g;
    public boolean h;
    public boolean i;
    public Drawable j;
    public ColorStateList k;
    public PorterDuff.Mode l;
    public boolean m;
    public boolean n;
    public int o;
    public int p;
    public int q;
    public boolean r;
    public CharSequence s;
    public CharSequence t;
    public boolean u;
    public int v;
    public int w;
    public float x;
    public float y;
    public VelocityTracker z;

    public class a extends Property<SwitchCompat, Float> {
        public a(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public Float get(SwitchCompat switchCompat) {
            return Float.valueOf(switchCompat.B);
        }

        @Override // android.util.Property
        public void set(SwitchCompat switchCompat, Float f) {
            switchCompat.setThumbPosition(f.floatValue());
        }
    }

    public SwitchCompat(Context context) {
        this(context, null);
    }

    private boolean getTargetCheckedState() {
        return this.B > 0.5f;
    }

    private int getThumbOffset() {
        return (int) (((i3.b(this) ? 1.0f - this.B : this.B) * getThumbScrollRange()) + 0.5f);
    }

    private int getThumbScrollRange() {
        Drawable drawable = this.j;
        if (drawable == null) {
            return 0;
        }
        Rect rect = this.Q;
        drawable.getPadding(rect);
        Drawable drawable2 = this.e;
        Rect rectC = drawable2 != null ? m2.c(drawable2) : m2.c;
        return ((((this.C - this.E) - rect.left) - rect.right) - rectC.left) - rectC.right;
    }

    public final void a() {
        Drawable drawable = this.e;
        if (drawable != null) {
            if (this.h || this.i) {
                Drawable drawableMutate = d0.h.l0(drawable).mutate();
                this.e = drawableMutate;
                if (this.h) {
                    drawableMutate.setTintList(this.f);
                }
                if (this.i) {
                    this.e.setTintMode(this.g);
                }
                if (this.e.isStateful()) {
                    this.e.setState(getDrawableState());
                }
            }
        }
    }

    public final void b() {
        Drawable drawable = this.j;
        if (drawable != null) {
            if (this.m || this.n) {
                Drawable drawableMutate = d0.h.l0(drawable).mutate();
                this.j = drawableMutate;
                if (this.m) {
                    drawableMutate.setTintList(this.k);
                }
                if (this.n) {
                    this.j.setTintMode(this.l);
                }
                if (this.j.isStateful()) {
                    this.j.setState(getDrawableState());
                }
            }
        }
    }

    public final Layout c(CharSequence charSequence) {
        TransformationMethod transformationMethod = this.N;
        if (transformationMethod != null) {
            charSequence = transformationMethod.getTransformation(charSequence, this);
        }
        CharSequence charSequence2 = charSequence;
        return new StaticLayout(charSequence2, this.J, charSequence2 != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence2, r2)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int i;
        int i2;
        Rect rect = this.Q;
        int i3 = this.F;
        int i4 = this.G;
        int i5 = this.H;
        int i6 = this.I;
        int thumbOffset = getThumbOffset() + i3;
        Drawable drawable = this.e;
        Rect rectC = drawable != null ? m2.c(drawable) : m2.c;
        Drawable drawable2 = this.j;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            int i7 = rect.left;
            thumbOffset += i7;
            if (rectC != null) {
                int i8 = rectC.left;
                if (i8 > i7) {
                    i3 += i8 - i7;
                }
                int i9 = rectC.top;
                int i10 = rect.top;
                i = i9 > i10 ? (i9 - i10) + i4 : i4;
                int i11 = rectC.right;
                int i12 = rect.right;
                if (i11 > i12) {
                    i5 -= i11 - i12;
                }
                int i13 = rectC.bottom;
                int i14 = rect.bottom;
                if (i13 > i14) {
                    i2 = i6 - (i13 - i14);
                }
                this.j.setBounds(i3, i, i5, i2);
            } else {
                i = i4;
            }
            i2 = i6;
            this.j.setBounds(i3, i, i5, i2);
        }
        Drawable drawable3 = this.e;
        if (drawable3 != null) {
            drawable3.getPadding(rect);
            int i15 = thumbOffset - rect.left;
            int i16 = thumbOffset + this.E + rect.right;
            this.e.setBounds(i15, i4, i16, i6);
            Drawable background = getBackground();
            if (background != null) {
                background.setHotspotBounds(i15, i4, i16, i6);
            }
        }
        super.draw(canvas);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableHotspotChanged(float f, float f2) {
        super.drawableHotspotChanged(f, f2);
        Drawable drawable = this.e;
        if (drawable != null) {
            drawable.setHotspot(f, f2);
        }
        Drawable drawable2 = this.j;
        if (drawable2 != null) {
            drawable2.setHotspot(f, f2);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.e;
        boolean state = false;
        if (drawable != null && drawable.isStateful()) {
            state = false | drawable.setState(drawableState);
        }
        Drawable drawable2 = this.j;
        if (drawable2 != null && drawable2.isStateful()) {
            state |= drawable2.setState(drawableState);
        }
        if (state) {
            invalidate();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        if (!i3.b(this)) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.C;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingLeft + this.q : compoundPaddingLeft;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingRight() {
        if (i3.b(this)) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.C;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingRight + this.q : compoundPaddingRight;
    }

    public boolean getShowText() {
        return this.u;
    }

    public boolean getSplitTrack() {
        return this.r;
    }

    public int getSwitchMinWidth() {
        return this.p;
    }

    public int getSwitchPadding() {
        return this.q;
    }

    public CharSequence getTextOff() {
        return this.t;
    }

    public CharSequence getTextOn() {
        return this.s;
    }

    public Drawable getThumbDrawable() {
        return this.e;
    }

    public int getThumbTextPadding() {
        return this.o;
    }

    public ColorStateList getThumbTintList() {
        return this.f;
    }

    public PorterDuff.Mode getThumbTintMode() {
        return this.g;
    }

    public Drawable getTrackDrawable() {
        return this.j;
    }

    public ColorStateList getTrackTintList() {
        return this.k;
    }

    public PorterDuff.Mode getTrackTintMode() {
        return this.l;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.j;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        ObjectAnimator objectAnimator = this.O;
        if (objectAnimator == null || !objectAnimator.isStarted()) {
            return;
        }
        this.O.end();
        this.O = null;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (isChecked()) {
            CompoundButton.mergeDrawableStates(iArrOnCreateDrawableState, S);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) throws IllegalAccessException, SecurityException, IllegalArgumentException, InvocationTargetException {
        int width;
        super.onDraw(canvas);
        Rect rect = this.Q;
        Drawable drawable = this.j;
        if (drawable != null) {
            drawable.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i = this.G;
        int i2 = this.I;
        int i3 = i + rect.top;
        int i4 = i2 - rect.bottom;
        Drawable drawable2 = this.e;
        if (drawable != null) {
            if (!this.r || drawable2 == null) {
                drawable.draw(canvas);
            } else {
                Rect rectC = m2.c(drawable2);
                drawable2.copyBounds(rect);
                rect.left += rectC.left;
                rect.right -= rectC.right;
                int iSave = canvas.save();
                canvas.clipRect(rect, Region.Op.DIFFERENCE);
                drawable.draw(canvas);
                canvas.restoreToCount(iSave);
            }
        }
        int iSave2 = canvas.save();
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        Layout layout = getTargetCheckedState() ? this.L : this.M;
        if (layout != null) {
            int[] drawableState = getDrawableState();
            ColorStateList colorStateList = this.K;
            if (colorStateList != null) {
                this.J.setColor(colorStateList.getColorForState(drawableState, 0));
            }
            this.J.drawableState = drawableState;
            if (drawable2 != null) {
                Rect bounds = drawable2.getBounds();
                width = bounds.left + bounds.right;
            } else {
                width = getWidth();
            }
            canvas.translate((width / 2) - (layout.getWidth() / 2), ((i3 + i4) / 2) - (layout.getHeight() / 2));
            layout.draw(canvas);
        }
        canvas.restoreToCount(iSave2);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("android.widget.Switch");
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.Switch");
        CharSequence charSequence = isChecked() ? this.s : this.t;
        if (TextUtils.isEmpty(charSequence)) {
            return;
        }
        CharSequence text = accessibilityNodeInfo.getText();
        if (TextUtils.isEmpty(text)) {
            accessibilityNodeInfo.setText(charSequence);
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(text);
        sb.append(' ');
        sb.append(charSequence);
        accessibilityNodeInfo.setText(sb);
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) throws IllegalAccessException, SecurityException, IllegalArgumentException, InvocationTargetException {
        int iMax;
        int width;
        int paddingLeft;
        int height;
        int paddingTop;
        super.onLayout(z, i, i2, i3, i4);
        int iMax2 = 0;
        if (this.e != null) {
            Rect rect = this.Q;
            Drawable drawable = this.j;
            if (drawable != null) {
                drawable.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            Rect rectC = m2.c(this.e);
            iMax = Math.max(0, rectC.left - rect.left);
            iMax2 = Math.max(0, rectC.right - rect.right);
        } else {
            iMax = 0;
        }
        if (i3.b(this)) {
            paddingLeft = getPaddingLeft() + iMax;
            width = ((this.C + paddingLeft) - iMax) - iMax2;
        } else {
            width = (getWidth() - getPaddingRight()) - iMax2;
            paddingLeft = (width - this.C) + iMax + iMax2;
        }
        int gravity = getGravity() & 112;
        if (gravity == 16) {
            int height2 = ((getHeight() + getPaddingTop()) - getPaddingBottom()) / 2;
            int i5 = this.D;
            int i6 = height2 - (i5 / 2);
            height = i5 + i6;
            paddingTop = i6;
        } else if (gravity != 80) {
            paddingTop = getPaddingTop();
            height = this.D + paddingTop;
        } else {
            height = getHeight() - getPaddingBottom();
            paddingTop = height - this.D;
        }
        this.F = paddingLeft;
        this.G = paddingTop;
        this.I = height;
        this.H = width;
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) throws IllegalAccessException, SecurityException, IllegalArgumentException, InvocationTargetException {
        int intrinsicWidth;
        int intrinsicHeight;
        int iMax;
        if (this.u) {
            if (this.L == null) {
                this.L = c(this.s);
            }
            if (this.M == null) {
                this.M = c(this.t);
            }
        }
        Rect rect = this.Q;
        Drawable drawable = this.e;
        int intrinsicHeight2 = 0;
        if (drawable != null) {
            drawable.getPadding(rect);
            intrinsicWidth = (this.e.getIntrinsicWidth() - rect.left) - rect.right;
            intrinsicHeight = this.e.getIntrinsicHeight();
        } else {
            intrinsicWidth = 0;
            intrinsicHeight = 0;
        }
        if (this.u) {
            iMax = (this.o * 2) + Math.max(this.L.getWidth(), this.M.getWidth());
        } else {
            iMax = 0;
        }
        this.E = Math.max(iMax, intrinsicWidth);
        Drawable drawable2 = this.j;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            intrinsicHeight2 = this.j.getIntrinsicHeight();
        } else {
            rect.setEmpty();
        }
        int iMax2 = rect.left;
        int iMax3 = rect.right;
        Drawable drawable3 = this.e;
        if (drawable3 != null) {
            Rect rectC = m2.c(drawable3);
            iMax2 = Math.max(iMax2, rectC.left);
            iMax3 = Math.max(iMax3, rectC.right);
        }
        int iMax4 = Math.max(this.p, (this.E * 2) + iMax2 + iMax3);
        int iMax5 = Math.max(intrinsicHeight2, intrinsicHeight);
        this.C = iMax4;
        this.D = iMax5;
        super.onMeasure(i, i2);
        if (getMeasuredHeight() < iMax5) {
            setMeasuredDimension(getMeasuredWidthAndState(), iMax5);
        }
    }

    @Override // android.view.View
    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        CharSequence charSequence = isChecked() ? this.s : this.t;
        if (charSequence != null) {
            accessibilityEvent.getText().add(charSequence);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0093  */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r11) {
        /*
            Method dump skipped, instructions count: 344
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SwitchCompat.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        super.setChecked(z);
        boolean zIsChecked = isChecked();
        if (getWindowToken() != null) {
            AtomicInteger atomicInteger = ha.a;
            if (isLaidOut()) {
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, R, zIsChecked ? 1.0f : 0.0f);
                this.O = objectAnimatorOfFloat;
                objectAnimatorOfFloat.setDuration(250L);
                this.O.setAutoCancel(true);
                this.O.start();
                return;
            }
        }
        ObjectAnimator objectAnimator = this.O;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        setThumbPosition(zIsChecked ? 1.0f : 0.0f);
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(d0.h.m0(this, callback));
    }

    public void setShowText(boolean z) {
        if (this.u != z) {
            this.u = z;
            requestLayout();
        }
    }

    public void setSplitTrack(boolean z) {
        this.r = z;
        invalidate();
    }

    public void setSwitchMinWidth(int i) {
        this.p = i;
        requestLayout();
    }

    public void setSwitchPadding(int i) {
        this.q = i;
        requestLayout();
    }

    public void setSwitchTextAppearance(Context context, int i) throws Resources.NotFoundException {
        ColorStateList colorStateList;
        int resourceId;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i, R$styleable.TextAppearance);
        int i2 = R$styleable.TextAppearance_android_textColor;
        if (!typedArrayObtainStyledAttributes.hasValue(i2) || (resourceId = typedArrayObtainStyledAttributes.getResourceId(i2, 0)) == 0 || (colorStateList = p0.a(context, resourceId)) == null) {
            colorStateList = typedArrayObtainStyledAttributes.getColorStateList(i2);
        }
        if (colorStateList != null) {
            this.K = colorStateList;
        } else {
            this.K = getTextColors();
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.TextAppearance_android_textSize, 0);
        if (dimensionPixelSize != 0) {
            float f = dimensionPixelSize;
            if (f != this.J.getTextSize()) {
                this.J.setTextSize(f);
                requestLayout();
            }
        }
        int i3 = typedArrayObtainStyledAttributes.getInt(R$styleable.TextAppearance_android_typeface, -1);
        setSwitchTypeface(i3 != 1 ? i3 != 2 ? i3 != 3 ? null : Typeface.MONOSPACE : Typeface.SERIF : Typeface.SANS_SERIF, typedArrayObtainStyledAttributes.getInt(R$styleable.TextAppearance_android_textStyle, -1));
        if (typedArrayObtainStyledAttributes.getBoolean(R$styleable.TextAppearance_textAllCaps, false)) {
            this.N = new u0(getContext());
        } else {
            this.N = null;
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public void setSwitchTypeface(Typeface typeface, int i) {
        if (i <= 0) {
            this.J.setFakeBoldText(false);
            this.J.setTextSkewX(0.0f);
            setSwitchTypeface(typeface);
        } else {
            Typeface typefaceDefaultFromStyle = typeface == null ? Typeface.defaultFromStyle(i) : Typeface.create(typeface, i);
            setSwitchTypeface(typefaceDefaultFromStyle);
            int i2 = (~(typefaceDefaultFromStyle != null ? typefaceDefaultFromStyle.getStyle() : 0)) & i;
            this.J.setFakeBoldText((i2 & 1) != 0);
            this.J.setTextSkewX((i2 & 2) != 0 ? -0.25f : 0.0f);
        }
    }

    public void setTextOff(CharSequence charSequence) {
        this.t = charSequence;
        requestLayout();
    }

    public void setTextOn(CharSequence charSequence) {
        this.s = charSequence;
        requestLayout();
    }

    public void setThumbDrawable(Drawable drawable) {
        Drawable drawable2 = this.e;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.e = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setThumbPosition(float f) {
        this.B = f;
        invalidate();
    }

    public void setThumbResource(int i) {
        setThumbDrawable(p0.b(getContext(), i));
    }

    public void setThumbTextPadding(int i) {
        this.o = i;
        requestLayout();
    }

    public void setThumbTintList(ColorStateList colorStateList) {
        this.f = colorStateList;
        this.h = true;
        a();
    }

    public void setThumbTintMode(PorterDuff.Mode mode) {
        this.g = mode;
        this.i = true;
        a();
    }

    public void setTrackDrawable(Drawable drawable) {
        Drawable drawable2 = this.j;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.j = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setTrackResource(int i) {
        setTrackDrawable(p0.b(getContext(), i));
    }

    public void setTrackTintList(ColorStateList colorStateList) {
        this.k = colorStateList;
        this.m = true;
        b();
    }

    public void setTrackTintMode(PorterDuff.Mode mode) {
        this.l = mode;
        this.n = true;
        b();
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void toggle() {
        setChecked(!isChecked());
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.e || drawable == this.j;
    }

    public SwitchCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.switchStyle);
    }

    public SwitchCompat(Context context, AttributeSet attributeSet, int i) throws Resources.NotFoundException, IllegalArgumentException {
        super(context, attributeSet, i);
        this.f = null;
        this.g = null;
        this.h = false;
        this.i = false;
        this.k = null;
        this.l = null;
        this.m = false;
        this.n = false;
        this.z = VelocityTracker.obtain();
        this.Q = new Rect();
        x2.a(this, getContext());
        TextPaint textPaint = new TextPaint(1);
        this.J = textPaint;
        textPaint.density = getResources().getDisplayMetrics().density;
        int[] iArr = R$styleable.SwitchCompat;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        c3 c3Var = new c3(context, typedArrayObtainStyledAttributes);
        ha.r(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, i, 0);
        Drawable drawableG = c3Var.g(R$styleable.SwitchCompat_android_thumb);
        this.e = drawableG;
        if (drawableG != null) {
            drawableG.setCallback(this);
        }
        Drawable drawableG2 = c3Var.g(R$styleable.SwitchCompat_track);
        this.j = drawableG2;
        if (drawableG2 != null) {
            drawableG2.setCallback(this);
        }
        this.s = c3Var.o(R$styleable.SwitchCompat_android_textOn);
        this.t = c3Var.o(R$styleable.SwitchCompat_android_textOff);
        this.u = c3Var.a(R$styleable.SwitchCompat_showText, true);
        this.o = c3Var.f(R$styleable.SwitchCompat_thumbTextPadding, 0);
        this.p = c3Var.f(R$styleable.SwitchCompat_switchMinWidth, 0);
        this.q = c3Var.f(R$styleable.SwitchCompat_switchPadding, 0);
        this.r = c3Var.a(R$styleable.SwitchCompat_splitTrack, false);
        ColorStateList colorStateListC = c3Var.c(R$styleable.SwitchCompat_thumbTint);
        if (colorStateListC != null) {
            this.f = colorStateListC;
            this.h = true;
        }
        PorterDuff.Mode modeD = m2.d(c3Var.j(R$styleable.SwitchCompat_thumbTintMode, -1), null);
        if (this.g != modeD) {
            this.g = modeD;
            this.i = true;
        }
        if (this.h || this.i) {
            a();
        }
        ColorStateList colorStateListC2 = c3Var.c(R$styleable.SwitchCompat_trackTint);
        if (colorStateListC2 != null) {
            this.k = colorStateListC2;
            this.m = true;
        }
        PorterDuff.Mode modeD2 = m2.d(c3Var.j(R$styleable.SwitchCompat_trackTintMode, -1), null);
        if (this.l != modeD2) {
            this.l = modeD2;
            this.n = true;
        }
        if (this.m || this.n) {
            b();
        }
        int iM = c3Var.m(R$styleable.SwitchCompat_switchTextAppearance, 0);
        if (iM != 0) {
            setSwitchTextAppearance(context, iM);
        }
        i2 i2Var = new i2(this);
        this.P = i2Var;
        i2Var.e(attributeSet, i);
        c3Var.b.recycle();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.w = viewConfiguration.getScaledTouchSlop();
        this.A = viewConfiguration.getScaledMinimumFlingVelocity();
        refreshDrawableState();
        setChecked(isChecked());
    }

    public void setSwitchTypeface(Typeface typeface) {
        if ((this.J.getTypeface() == null || this.J.getTypeface().equals(typeface)) && (this.J.getTypeface() != null || typeface == null)) {
            return;
        }
        this.J.setTypeface(typeface);
        requestLayout();
        invalidate();
    }
}
