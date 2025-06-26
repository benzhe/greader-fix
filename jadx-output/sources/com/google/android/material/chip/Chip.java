package com.google.android.material.chip;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatCheckBox;
import com.google.android.material.R$attr;
import com.google.android.material.R$id;
import com.google.android.material.R$string;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import defpackage.aa5;
import defpackage.ba5;
import defpackage.c50;
import defpackage.d0;
import defpackage.fb;
import defpackage.fc5;
import defpackage.ha;
import defpackage.la5;
import defpackage.m9;
import defpackage.o55;
import defpackage.p0;
import defpackage.pa5;
import defpackage.s65;
import defpackage.sa;
import defpackage.t65;
import defpackage.t85;
import defpackage.ta5;
import defpackage.y95;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class Chip extends AppCompatCheckBox implements t65.a, ta5 {
    public t65 h;
    public InsetDrawable i;
    public RippleDrawable j;
    public View.OnClickListener k;
    public CompoundButton.OnCheckedChangeListener l;
    public boolean m;
    public boolean n;
    public boolean o;
    public boolean p;
    public boolean q;
    public int r;
    public int s;
    public final b t;
    public final Rect u;
    public final RectF v;
    public final aa5 w;
    public static final int x = R$style.Widget_MaterialComponents_Chip_Action;
    public static final Rect y = new Rect();
    public static final int[] z = {R.attr.state_selected};
    public static final int[] A = {R.attr.state_checkable};

    public class a extends aa5 {
        public a() {
        }

        @Override // defpackage.aa5
        public void a(int i) {
        }

        @Override // defpackage.aa5
        public void b(Typeface typeface, boolean z) {
            Chip chip = Chip.this;
            t65 t65Var = chip.h;
            chip.setText(t65Var.I0 ? t65Var.J : chip.getText());
            Chip.this.requestLayout();
            Chip.this.invalidate();
        }
    }

    public class b extends fb {
        public b(Chip chip) {
            super(chip);
        }

        @Override // defpackage.fb
        public int o(float f, float f2) {
            Chip chip = Chip.this;
            int i = Chip.x;
            return (chip.e() && Chip.this.getCloseIconTouchBounds().contains(f, f2)) ? 1 : 0;
        }

        @Override // defpackage.fb
        public void p(List<Integer> list) {
            boolean z = false;
            list.add(0);
            Chip chip = Chip.this;
            int i = Chip.x;
            if (chip.e()) {
                Chip chip2 = Chip.this;
                t65 t65Var = chip2.h;
                if (t65Var != null && t65Var.P) {
                    z = true;
                }
                if (!z || chip2.k == null) {
                    return;
                }
                list.add(1);
            }
        }

        @Override // defpackage.fb
        public boolean t(int i, int i2, Bundle bundle) {
            boolean z = false;
            if (i2 == 16) {
                if (i == 0) {
                    return Chip.this.performClick();
                }
                if (i == 1) {
                    Chip chip = Chip.this;
                    chip.playSoundEffect(0);
                    View.OnClickListener onClickListener = chip.k;
                    if (onClickListener != null) {
                        onClickListener.onClick(chip);
                        z = true;
                    }
                    chip.t.y(1, 1);
                }
            }
            return z;
        }

        @Override // defpackage.fb
        public void u(sa saVar) {
            saVar.a.setCheckable(Chip.this.f());
            saVar.a.setClickable(Chip.this.isClickable());
            if (Chip.this.f() || Chip.this.isClickable()) {
                saVar.a.setClassName(Chip.this.f() ? "android.widget.CompoundButton" : "android.widget.Button");
            } else {
                saVar.a.setClassName("android.view.View");
            }
            CharSequence text = Chip.this.getText();
            if (Build.VERSION.SDK_INT >= 23) {
                saVar.a.setText(text);
            } else {
                saVar.a.setContentDescription(text);
            }
        }

        @Override // defpackage.fb
        public void v(int i, sa saVar) {
            if (i != 1) {
                saVar.a.setContentDescription("");
                saVar.a.setBoundsInParent(Chip.y);
                return;
            }
            CharSequence closeIconContentDescription = Chip.this.getCloseIconContentDescription();
            if (closeIconContentDescription != null) {
                saVar.a.setContentDescription(closeIconContentDescription);
            } else {
                CharSequence text = Chip.this.getText();
                Context context = Chip.this.getContext();
                int i2 = R$string.mtrl_chip_close_icon_content_description;
                Object[] objArr = new Object[1];
                objArr[0] = TextUtils.isEmpty(text) ? "" : text;
                saVar.a.setContentDescription(context.getString(i2, objArr).trim());
            }
            saVar.a.setBoundsInParent(Chip.this.getCloseIconTouchBoundsInt());
            saVar.a(sa.a.g);
            saVar.a.setEnabled(Chip.this.isEnabled());
        }

        @Override // defpackage.fb
        public void w(int i, boolean z) {
            if (i == 1) {
                Chip chip = Chip.this;
                chip.p = z;
                chip.refreshDrawableState();
            }
        }
    }

    public Chip(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RectF getCloseIconTouchBounds() {
        this.v.setEmpty();
        if (e() && this.k != null) {
            t65 t65Var = this.h;
            t65Var.J(t65Var.getBounds(), this.v);
        }
        return this.v;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Rect getCloseIconTouchBoundsInt() {
        RectF closeIconTouchBounds = getCloseIconTouchBounds();
        this.u.set((int) closeIconTouchBounds.left, (int) closeIconTouchBounds.top, (int) closeIconTouchBounds.right, (int) closeIconTouchBounds.bottom);
        return this.u;
    }

    private y95 getTextAppearance() {
        t65 t65Var = this.h;
        if (t65Var != null) {
            return t65Var.p0.f;
        }
        return null;
    }

    private void setCloseIconHovered(boolean z2) {
        if (this.o != z2) {
            this.o = z2;
            refreshDrawableState();
        }
    }

    private void setCloseIconPressed(boolean z2) {
        if (this.n != z2) {
            this.n = z2;
            refreshDrawableState();
        }
    }

    @Override // t65.a
    public void a() {
        d(this.s);
        requestLayout();
        invalidateOutline();
    }

    public boolean d(int i) {
        this.s = i;
        if (!this.q) {
            if (this.i != null) {
                g();
            } else {
                int[] iArr = ba5.a;
                i();
            }
            return false;
        }
        int iMax = Math.max(0, i - ((int) this.h.E));
        int iMax2 = Math.max(0, i - this.h.getIntrinsicWidth());
        if (iMax2 <= 0 && iMax <= 0) {
            if (this.i != null) {
                g();
            } else {
                int[] iArr2 = ba5.a;
                i();
            }
            return false;
        }
        int i2 = iMax2 > 0 ? iMax2 / 2 : 0;
        int i3 = iMax > 0 ? iMax / 2 : 0;
        if (this.i != null) {
            Rect rect = new Rect();
            this.i.getPadding(rect);
            if (rect.top == i3 && rect.bottom == i3 && rect.left == i2 && rect.right == i2) {
                int[] iArr3 = ba5.a;
                i();
                return true;
            }
        }
        if (getMinHeight() != i) {
            setMinHeight(i);
        }
        if (getMinWidth() != i) {
            setMinWidth(i);
        }
        this.i = new InsetDrawable((Drawable) this.h, i2, i3, i2, i3);
        int[] iArr4 = ba5.a;
        i();
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x005a  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean dispatchHoverEvent(android.view.MotionEvent r10) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            r9 = this;
            java.lang.Class<fb> r0 = defpackage.fb.class
            java.lang.String r1 = "Unable to send Accessibility Exit event"
            java.lang.String r2 = "Chip"
            int r3 = r10.getAction()
            r4 = 10
            r5 = 1
            r6 = 0
            if (r3 != r4) goto L5a
            java.lang.String r3 = "m"
            java.lang.reflect.Field r3 = r0.getDeclaredField(r3)     // Catch: java.lang.NoSuchFieldException -> L47 java.lang.reflect.InvocationTargetException -> L4c java.lang.IllegalAccessException -> L51 java.lang.NoSuchMethodException -> L56
            r3.setAccessible(r5)     // Catch: java.lang.NoSuchFieldException -> L47 java.lang.reflect.InvocationTargetException -> L4c java.lang.IllegalAccessException -> L51 java.lang.NoSuchMethodException -> L56
            com.google.android.material.chip.Chip$b r4 = r9.t     // Catch: java.lang.NoSuchFieldException -> L47 java.lang.reflect.InvocationTargetException -> L4c java.lang.IllegalAccessException -> L51 java.lang.NoSuchMethodException -> L56
            java.lang.Object r3 = r3.get(r4)     // Catch: java.lang.NoSuchFieldException -> L47 java.lang.reflect.InvocationTargetException -> L4c java.lang.IllegalAccessException -> L51 java.lang.NoSuchMethodException -> L56
            java.lang.Integer r3 = (java.lang.Integer) r3     // Catch: java.lang.NoSuchFieldException -> L47 java.lang.reflect.InvocationTargetException -> L4c java.lang.IllegalAccessException -> L51 java.lang.NoSuchMethodException -> L56
            int r3 = r3.intValue()     // Catch: java.lang.NoSuchFieldException -> L47 java.lang.reflect.InvocationTargetException -> L4c java.lang.IllegalAccessException -> L51 java.lang.NoSuchMethodException -> L56
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r3 == r4) goto L5a
            java.lang.String r3 = "z"
            java.lang.Class[] r7 = new java.lang.Class[r5]     // Catch: java.lang.NoSuchFieldException -> L47 java.lang.reflect.InvocationTargetException -> L4c java.lang.IllegalAccessException -> L51 java.lang.NoSuchMethodException -> L56
            java.lang.Class r8 = java.lang.Integer.TYPE     // Catch: java.lang.NoSuchFieldException -> L47 java.lang.reflect.InvocationTargetException -> L4c java.lang.IllegalAccessException -> L51 java.lang.NoSuchMethodException -> L56
            r7[r6] = r8     // Catch: java.lang.NoSuchFieldException -> L47 java.lang.reflect.InvocationTargetException -> L4c java.lang.IllegalAccessException -> L51 java.lang.NoSuchMethodException -> L56
            java.lang.reflect.Method r0 = r0.getDeclaredMethod(r3, r7)     // Catch: java.lang.NoSuchFieldException -> L47 java.lang.reflect.InvocationTargetException -> L4c java.lang.IllegalAccessException -> L51 java.lang.NoSuchMethodException -> L56
            r0.setAccessible(r5)     // Catch: java.lang.NoSuchFieldException -> L47 java.lang.reflect.InvocationTargetException -> L4c java.lang.IllegalAccessException -> L51 java.lang.NoSuchMethodException -> L56
            com.google.android.material.chip.Chip$b r3 = r9.t     // Catch: java.lang.NoSuchFieldException -> L47 java.lang.reflect.InvocationTargetException -> L4c java.lang.IllegalAccessException -> L51 java.lang.NoSuchMethodException -> L56
            java.lang.Object[] r7 = new java.lang.Object[r5]     // Catch: java.lang.NoSuchFieldException -> L47 java.lang.reflect.InvocationTargetException -> L4c java.lang.IllegalAccessException -> L51 java.lang.NoSuchMethodException -> L56
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch: java.lang.NoSuchFieldException -> L47 java.lang.reflect.InvocationTargetException -> L4c java.lang.IllegalAccessException -> L51 java.lang.NoSuchMethodException -> L56
            r7[r6] = r4     // Catch: java.lang.NoSuchFieldException -> L47 java.lang.reflect.InvocationTargetException -> L4c java.lang.IllegalAccessException -> L51 java.lang.NoSuchMethodException -> L56
            r0.invoke(r3, r7)     // Catch: java.lang.NoSuchFieldException -> L47 java.lang.reflect.InvocationTargetException -> L4c java.lang.IllegalAccessException -> L51 java.lang.NoSuchMethodException -> L56
            r0 = 1
            goto L5b
        L47:
            r0 = move-exception
            android.util.Log.e(r2, r1, r0)
            goto L5a
        L4c:
            r0 = move-exception
            android.util.Log.e(r2, r1, r0)
            goto L5a
        L51:
            r0 = move-exception
            android.util.Log.e(r2, r1, r0)
            goto L5a
        L56:
            r0 = move-exception
            android.util.Log.e(r2, r1, r0)
        L5a:
            r0 = 0
        L5b:
            if (r0 != 0) goto L6d
            com.google.android.material.chip.Chip$b r0 = r9.t
            boolean r0 = r0.n(r10)
            if (r0 != 0) goto L6d
            boolean r10 = super.dispatchHoverEvent(r10)
            if (r10 == 0) goto L6c
            goto L6d
        L6c:
            r5 = 0
        L6d:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.Chip.dispatchHoverEvent(android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x004e  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean dispatchKeyEvent(android.view.KeyEvent r10) {
        /*
            r9 = this;
            com.google.android.material.chip.Chip$b r0 = r9.t
            java.util.Objects.requireNonNull(r0)
            int r1 = r10.getAction()
            r2 = 0
            r3 = 1
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r1 == r3) goto L7b
            int r1 = r10.getKeyCode()
            r5 = 61
            r6 = 0
            if (r1 == r5) goto L65
            r5 = 66
            if (r1 == r5) goto L4e
            switch(r1) {
                case 19: goto L20;
                case 20: goto L20;
                case 21: goto L20;
                case 22: goto L20;
                case 23: goto L4e;
                default: goto L1f;
            }
        L1f:
            goto L7b
        L20:
            boolean r7 = r10.hasNoModifiers()
            if (r7 == 0) goto L7b
            r7 = 19
            if (r1 == r7) goto L38
            r7 = 21
            if (r1 == r7) goto L35
            r7 = 22
            if (r1 == r7) goto L3a
            r5 = 130(0x82, float:1.82E-43)
            goto L3a
        L35:
            r5 = 17
            goto L3a
        L38:
            r5 = 33
        L3a:
            int r1 = r10.getRepeatCount()
            int r1 = r1 + r3
            r7 = 0
        L40:
            if (r2 >= r1) goto L4c
            boolean r8 = r0.r(r5, r6)
            if (r8 == 0) goto L4c
            int r2 = r2 + 1
            r7 = 1
            goto L40
        L4c:
            r2 = r7
            goto L7b
        L4e:
            boolean r1 = r10.hasNoModifiers()
            if (r1 == 0) goto L7b
            int r1 = r10.getRepeatCount()
            if (r1 != 0) goto L7b
            int r1 = r0.l
            if (r1 == r4) goto L63
            r2 = 16
            r0.t(r1, r2, r6)
        L63:
            r2 = 1
            goto L7b
        L65:
            boolean r1 = r10.hasNoModifiers()
            if (r1 == 0) goto L71
            r1 = 2
            boolean r2 = r0.r(r1, r6)
            goto L7b
        L71:
            boolean r1 = r10.hasModifiers(r3)
            if (r1 == 0) goto L7b
            boolean r2 = r0.r(r3, r6)
        L7b:
            if (r2 == 0) goto L84
            com.google.android.material.chip.Chip$b r0 = r9.t
            int r0 = r0.l
            if (r0 == r4) goto L84
            return r3
        L84:
            boolean r10 = super.dispatchKeyEvent(r10)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.Chip.dispatchKeyEvent(android.view.KeyEvent):boolean");
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [boolean, int] */
    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        t65 t65Var = this.h;
        boolean zL0 = false;
        int i = 0;
        zL0 = false;
        if (t65Var != null && t65.P(t65Var.Q)) {
            t65 t65Var2 = this.h;
            ?? IsEnabled = isEnabled();
            int i2 = IsEnabled;
            if (this.p) {
                i2 = IsEnabled + 1;
            }
            int i3 = i2;
            if (this.o) {
                i3 = i2 + 1;
            }
            int i4 = i3;
            if (this.n) {
                i4 = i3 + 1;
            }
            int i5 = i4;
            if (isChecked()) {
                i5 = i4 + 1;
            }
            int[] iArr = new int[i5];
            if (isEnabled()) {
                iArr[0] = 16842910;
                i = 1;
            }
            if (this.p) {
                iArr[i] = 16842908;
                i++;
            }
            if (this.o) {
                iArr[i] = 16843623;
                i++;
            }
            if (this.n) {
                iArr[i] = 16842919;
                i++;
            }
            if (isChecked()) {
                iArr[i] = 16842913;
            }
            zL0 = t65Var2.l0(iArr);
        }
        if (zL0) {
            invalidate();
        }
    }

    public final boolean e() {
        t65 t65Var = this.h;
        return (t65Var == null || t65Var.M() == null) ? false : true;
    }

    public boolean f() {
        t65 t65Var = this.h;
        return t65Var != null && t65Var.V;
    }

    public final void g() {
        if (this.i != null) {
            this.i = null;
            setMinWidth(0);
            setMinHeight((int) getChipMinHeight());
            int[] iArr = ba5.a;
            i();
        }
    }

    public Drawable getBackgroundDrawable() {
        InsetDrawable insetDrawable = this.i;
        return insetDrawable == null ? this.h : insetDrawable;
    }

    public Drawable getCheckedIcon() {
        t65 t65Var = this.h;
        if (t65Var != null) {
            return t65Var.X;
        }
        return null;
    }

    public ColorStateList getCheckedIconTint() {
        t65 t65Var = this.h;
        if (t65Var != null) {
            return t65Var.Y;
        }
        return null;
    }

    public ColorStateList getChipBackgroundColor() {
        t65 t65Var = this.h;
        if (t65Var != null) {
            return t65Var.D;
        }
        return null;
    }

    public float getChipCornerRadius() {
        t65 t65Var = this.h;
        if (t65Var != null) {
            return Math.max(0.0f, t65Var.L());
        }
        return 0.0f;
    }

    public Drawable getChipDrawable() {
        return this.h;
    }

    public float getChipEndPadding() {
        t65 t65Var = this.h;
        if (t65Var != null) {
            return t65Var.i0;
        }
        return 0.0f;
    }

    public Drawable getChipIcon() {
        Drawable drawable;
        t65 t65Var = this.h;
        if (t65Var == null || (drawable = t65Var.L) == null) {
            return null;
        }
        return d0.h.k0(drawable);
    }

    public float getChipIconSize() {
        t65 t65Var = this.h;
        if (t65Var != null) {
            return t65Var.N;
        }
        return 0.0f;
    }

    public ColorStateList getChipIconTint() {
        t65 t65Var = this.h;
        if (t65Var != null) {
            return t65Var.M;
        }
        return null;
    }

    public float getChipMinHeight() {
        t65 t65Var = this.h;
        if (t65Var != null) {
            return t65Var.E;
        }
        return 0.0f;
    }

    public float getChipStartPadding() {
        t65 t65Var = this.h;
        if (t65Var != null) {
            return t65Var.b0;
        }
        return 0.0f;
    }

    public ColorStateList getChipStrokeColor() {
        t65 t65Var = this.h;
        if (t65Var != null) {
            return t65Var.G;
        }
        return null;
    }

    public float getChipStrokeWidth() {
        t65 t65Var = this.h;
        if (t65Var != null) {
            return t65Var.H;
        }
        return 0.0f;
    }

    @Deprecated
    public CharSequence getChipText() {
        return getText();
    }

    public Drawable getCloseIcon() {
        t65 t65Var = this.h;
        if (t65Var != null) {
            return t65Var.M();
        }
        return null;
    }

    public CharSequence getCloseIconContentDescription() {
        t65 t65Var = this.h;
        if (t65Var != null) {
            return t65Var.U;
        }
        return null;
    }

    public float getCloseIconEndPadding() {
        t65 t65Var = this.h;
        if (t65Var != null) {
            return t65Var.h0;
        }
        return 0.0f;
    }

    public float getCloseIconSize() {
        t65 t65Var = this.h;
        if (t65Var != null) {
            return t65Var.T;
        }
        return 0.0f;
    }

    public float getCloseIconStartPadding() {
        t65 t65Var = this.h;
        if (t65Var != null) {
            return t65Var.g0;
        }
        return 0.0f;
    }

    public ColorStateList getCloseIconTint() {
        t65 t65Var = this.h;
        if (t65Var != null) {
            return t65Var.S;
        }
        return null;
    }

    @Override // android.widget.TextView
    public TextUtils.TruncateAt getEllipsize() {
        t65 t65Var = this.h;
        if (t65Var != null) {
            return t65Var.H0;
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public void getFocusedRect(Rect rect) {
        b bVar = this.t;
        if (bVar.l == 1 || bVar.k == 1) {
            rect.set(getCloseIconTouchBoundsInt());
        } else {
            super.getFocusedRect(rect);
        }
    }

    public o55 getHideMotionSpec() {
        t65 t65Var = this.h;
        if (t65Var != null) {
            return t65Var.a0;
        }
        return null;
    }

    public float getIconEndPadding() {
        t65 t65Var = this.h;
        if (t65Var != null) {
            return t65Var.d0;
        }
        return 0.0f;
    }

    public float getIconStartPadding() {
        t65 t65Var = this.h;
        if (t65Var != null) {
            return t65Var.c0;
        }
        return 0.0f;
    }

    public ColorStateList getRippleColor() {
        t65 t65Var = this.h;
        if (t65Var != null) {
            return t65Var.I;
        }
        return null;
    }

    public pa5 getShapeAppearanceModel() {
        return this.h.e.a;
    }

    public o55 getShowMotionSpec() {
        t65 t65Var = this.h;
        if (t65Var != null) {
            return t65Var.Z;
        }
        return null;
    }

    public float getTextEndPadding() {
        t65 t65Var = this.h;
        if (t65Var != null) {
            return t65Var.f0;
        }
        return 0.0f;
    }

    public float getTextStartPadding() {
        t65 t65Var = this.h;
        if (t65Var != null) {
            return t65Var.e0;
        }
        return 0.0f;
    }

    public final void h() {
        if (e()) {
            t65 t65Var = this.h;
            if ((t65Var != null && t65Var.P) && this.k != null) {
                ha.s(this, this.t);
                return;
            }
        }
        ha.s(this, null);
    }

    public final void i() {
        this.j = new RippleDrawable(ba5.c(this.h.I), getBackgroundDrawable(), null);
        this.h.u0(false);
        RippleDrawable rippleDrawable = this.j;
        AtomicInteger atomicInteger = ha.a;
        setBackground(rippleDrawable);
        j();
    }

    public final void j() {
        t65 t65Var;
        if (TextUtils.isEmpty(getText()) || (t65Var = this.h) == null) {
            return;
        }
        int iK = (int) (t65Var.K() + t65Var.i0 + t65Var.f0);
        t65 t65Var2 = this.h;
        int iH = (int) (t65Var2.H() + t65Var2.b0 + t65Var2.e0);
        if (this.i != null) {
            Rect rect = new Rect();
            this.i.getPadding(rect);
            iH += rect.left;
            iK += rect.right;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        AtomicInteger atomicInteger = ha.a;
        setPaddingRelative(iH, paddingTop, iK, paddingBottom);
    }

    public final void k() {
        TextPaint paint = getPaint();
        t65 t65Var = this.h;
        if (t65Var != null) {
            paint.drawableState = t65Var.getState();
        }
        y95 textAppearance = getTextAppearance();
        if (textAppearance != null) {
            textAppearance.c(getContext(), paint, this.w);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        c50.I0(this, this.h);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (isChecked()) {
            CheckBox.mergeDrawableStates(iArrOnCreateDrawableState, z);
        }
        if (f()) {
            CheckBox.mergeDrawableStates(iArrOnCreateDrawableState, A);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    public void onFocusChanged(boolean z2, int i, Rect rect) {
        super.onFocusChanged(z2, i, rect);
        b bVar = this.t;
        int i2 = bVar.l;
        if (i2 != Integer.MIN_VALUE) {
            bVar.k(i2);
        }
        if (z2) {
            bVar.r(i, rect);
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 7) {
            setCloseIconHovered(getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()));
        } else if (actionMasked == 10) {
            setCloseIconHovered(false);
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        int i;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (f() || isClickable()) {
            accessibilityNodeInfo.setClassName(f() ? "android.widget.CompoundButton" : "android.widget.Button");
        } else {
            accessibilityNodeInfo.setClassName("android.view.View");
        }
        accessibilityNodeInfo.setCheckable(f());
        accessibilityNodeInfo.setClickable(isClickable());
        if (getParent() instanceof ChipGroup) {
            ChipGroup chipGroup = (ChipGroup) getParent();
            if (chipGroup.g) {
                int i2 = 0;
                int i3 = 0;
                while (true) {
                    if (i2 >= chipGroup.getChildCount()) {
                        i3 = -1;
                        break;
                    }
                    if (chipGroup.getChildAt(i2) instanceof Chip) {
                        if (((Chip) chipGroup.getChildAt(i2)) == this) {
                            break;
                        } else {
                            i3++;
                        }
                    }
                    i2++;
                }
                i = i3;
            } else {
                i = -1;
            }
            Object tag = getTag(R$id.row_index_key);
            accessibilityNodeInfo.setCollectionItemInfo((AccessibilityNodeInfo.CollectionItemInfo) sa.c.a(!(tag instanceof Integer) ? -1 : ((Integer) tag).intValue(), 1, i, 1, false, isChecked()).a);
        }
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    public PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i) {
        if (getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()) && isEnabled()) {
            return PointerIcon.getSystemIcon(getContext(), 1002);
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        if (this.r != i) {
            this.r = i;
            j();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x001e, code lost:
    
        if (r0 != 3) goto L25;
     */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            int r0 = r6.getActionMasked()
            android.graphics.RectF r1 = r5.getCloseIconTouchBounds()
            float r2 = r6.getX()
            float r3 = r6.getY()
            boolean r1 = r1.contains(r2, r3)
            r2 = 0
            r3 = 1
            if (r0 == 0) goto L45
            if (r0 == r3) goto L2b
            r4 = 2
            if (r0 == r4) goto L21
            r1 = 3
            if (r0 == r1) goto L40
            goto L4c
        L21:
            boolean r0 = r5.n
            if (r0 == 0) goto L4c
            if (r1 != 0) goto L4a
            r5.setCloseIconPressed(r2)
            goto L4a
        L2b:
            boolean r0 = r5.n
            if (r0 == 0) goto L40
            r5.playSoundEffect(r2)
            android.view.View$OnClickListener r0 = r5.k
            if (r0 == 0) goto L39
            r0.onClick(r5)
        L39:
            com.google.android.material.chip.Chip$b r0 = r5.t
            r0.y(r3, r3)
            r0 = 1
            goto L41
        L40:
            r0 = 0
        L41:
            r5.setCloseIconPressed(r2)
            goto L4d
        L45:
            if (r1 == 0) goto L4c
            r5.setCloseIconPressed(r3)
        L4a:
            r0 = 1
            goto L4d
        L4c:
            r0 = 0
        L4d:
            if (r0 != 0) goto L55
            boolean r6 = super.onTouchEvent(r6)
            if (r6 == 0) goto L56
        L55:
            r2 = 1
        L56:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.Chip.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.j) {
            super.setBackground(drawable);
        } else {
            Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        Log.w("Chip", "Do not set the background color; Chip manages its own background drawable.");
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.j) {
            super.setBackgroundDrawable(drawable);
        } else {
            Log.w("Chip", "Do not set the background drawable; Chip manages its own background drawable.");
        }
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundResource(int i) {
        Log.w("Chip", "Do not set the background resource; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        Log.w("Chip", "Do not set the background tint list; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        Log.w("Chip", "Do not set the background tint mode; Chip manages its own background drawable.");
    }

    public void setCheckable(boolean z2) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.S(z2);
        }
    }

    public void setCheckableResource(int i) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.S(t65Var.j0.getResources().getBoolean(i));
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z2) {
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener;
        t65 t65Var = this.h;
        if (t65Var == null) {
            this.m = z2;
            return;
        }
        if (t65Var.V) {
            boolean zIsChecked = isChecked();
            super.setChecked(z2);
            if (zIsChecked == z2 || (onCheckedChangeListener = this.l) == null) {
                return;
            }
            onCheckedChangeListener.onCheckedChanged(this, z2);
        }
    }

    public void setCheckedIcon(Drawable drawable) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.T(drawable);
        }
    }

    @Deprecated
    public void setCheckedIconEnabled(boolean z2) {
        setCheckedIconVisible(z2);
    }

    @Deprecated
    public void setCheckedIconEnabledResource(int i) {
        setCheckedIconVisible(i);
    }

    public void setCheckedIconResource(int i) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.T(p0.b(t65Var.j0, i));
        }
    }

    public void setCheckedIconTint(ColorStateList colorStateList) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.U(colorStateList);
        }
    }

    public void setCheckedIconTintResource(int i) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.U(p0.a(t65Var.j0, i));
        }
    }

    public void setCheckedIconVisible(int i) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.V(t65Var.j0.getResources().getBoolean(i));
        }
    }

    public void setChipBackgroundColor(ColorStateList colorStateList) {
        t65 t65Var = this.h;
        if (t65Var == null || t65Var.D == colorStateList) {
            return;
        }
        t65Var.D = colorStateList;
        t65Var.onStateChange(t65Var.getState());
    }

    public void setChipBackgroundColorResource(int i) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.W(p0.a(t65Var.j0, i));
        }
    }

    @Deprecated
    public void setChipCornerRadius(float f) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.X(f);
        }
    }

    @Deprecated
    public void setChipCornerRadiusResource(int i) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.X(t65Var.j0.getResources().getDimension(i));
        }
    }

    public void setChipDrawable(t65 t65Var) {
        t65 t65Var2 = this.h;
        if (t65Var2 != t65Var) {
            if (t65Var2 != null) {
                t65Var2.G0 = new WeakReference<>(null);
            }
            this.h = t65Var;
            t65Var.I0 = false;
            Objects.requireNonNull(t65Var);
            t65Var.G0 = new WeakReference<>(this);
            d(this.s);
        }
    }

    public void setChipEndPadding(float f) {
        t65 t65Var = this.h;
        if (t65Var == null || t65Var.i0 == f) {
            return;
        }
        t65Var.i0 = f;
        t65Var.invalidateSelf();
        t65Var.Q();
    }

    public void setChipEndPaddingResource(int i) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.Y(t65Var.j0.getResources().getDimension(i));
        }
    }

    public void setChipIcon(Drawable drawable) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.Z(drawable);
        }
    }

    @Deprecated
    public void setChipIconEnabled(boolean z2) {
        setChipIconVisible(z2);
    }

    @Deprecated
    public void setChipIconEnabledResource(int i) {
        setChipIconVisible(i);
    }

    public void setChipIconResource(int i) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.Z(p0.b(t65Var.j0, i));
        }
    }

    public void setChipIconSize(float f) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.a0(f);
        }
    }

    public void setChipIconSizeResource(int i) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.a0(t65Var.j0.getResources().getDimension(i));
        }
    }

    public void setChipIconTint(ColorStateList colorStateList) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.b0(colorStateList);
        }
    }

    public void setChipIconTintResource(int i) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.b0(p0.a(t65Var.j0, i));
        }
    }

    public void setChipIconVisible(int i) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.c0(t65Var.j0.getResources().getBoolean(i));
        }
    }

    public void setChipMinHeight(float f) {
        t65 t65Var = this.h;
        if (t65Var == null || t65Var.E == f) {
            return;
        }
        t65Var.E = f;
        t65Var.invalidateSelf();
        t65Var.Q();
    }

    public void setChipMinHeightResource(int i) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.d0(t65Var.j0.getResources().getDimension(i));
        }
    }

    public void setChipStartPadding(float f) {
        t65 t65Var = this.h;
        if (t65Var == null || t65Var.b0 == f) {
            return;
        }
        t65Var.b0 = f;
        t65Var.invalidateSelf();
        t65Var.Q();
    }

    public void setChipStartPaddingResource(int i) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.e0(t65Var.j0.getResources().getDimension(i));
        }
    }

    public void setChipStrokeColor(ColorStateList colorStateList) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.f0(colorStateList);
        }
    }

    public void setChipStrokeColorResource(int i) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.f0(p0.a(t65Var.j0, i));
        }
    }

    public void setChipStrokeWidth(float f) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.g0(f);
        }
    }

    public void setChipStrokeWidthResource(int i) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.g0(t65Var.j0.getResources().getDimension(i));
        }
    }

    @Deprecated
    public void setChipText(CharSequence charSequence) {
        setText(charSequence);
    }

    @Deprecated
    public void setChipTextResource(int i) {
        setText(getResources().getString(i));
    }

    public void setCloseIcon(Drawable drawable) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.h0(drawable);
        }
        h();
    }

    public void setCloseIconContentDescription(CharSequence charSequence) {
        t65 t65Var = this.h;
        if (t65Var == null || t65Var.U == charSequence) {
            return;
        }
        m9 m9VarC = m9.c();
        t65Var.U = m9VarC.d(charSequence, m9VarC.c, true);
        t65Var.invalidateSelf();
    }

    @Deprecated
    public void setCloseIconEnabled(boolean z2) {
        setCloseIconVisible(z2);
    }

    @Deprecated
    public void setCloseIconEnabledResource(int i) {
        setCloseIconVisible(i);
    }

    public void setCloseIconEndPadding(float f) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.i0(f);
        }
    }

    public void setCloseIconEndPaddingResource(int i) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.i0(t65Var.j0.getResources().getDimension(i));
        }
    }

    public void setCloseIconResource(int i) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.h0(p0.b(t65Var.j0, i));
        }
        h();
    }

    public void setCloseIconSize(float f) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.j0(f);
        }
    }

    public void setCloseIconSizeResource(int i) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.j0(t65Var.j0.getResources().getDimension(i));
        }
    }

    public void setCloseIconStartPadding(float f) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.k0(f);
        }
    }

    public void setCloseIconStartPaddingResource(int i) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.k0(t65Var.j0.getResources().getDimension(i));
        }
    }

    public void setCloseIconTint(ColorStateList colorStateList) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.m0(colorStateList);
        }
    }

    public void setCloseIconTintResource(int i) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.m0(p0.a(t65Var.j0, i));
        }
    }

    public void setCloseIconVisible(int i) {
        setCloseIconVisible(getResources().getBoolean(i));
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i3 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(i, i2, i3, i4);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i3 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesWithIntrinsicBounds(i, i2, i3, i4);
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        t65 t65Var = this.h;
        if (t65Var != null) {
            la5.b bVar = t65Var.e;
            if (bVar.o != f) {
                bVar.o = f;
                t65Var.E();
            }
        }
    }

    @Override // android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.h == null) {
            return;
        }
        if (truncateAt == TextUtils.TruncateAt.MARQUEE) {
            throw new UnsupportedOperationException("Text within a chip are not allowed to scroll.");
        }
        super.setEllipsize(truncateAt);
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.H0 = truncateAt;
        }
    }

    public void setEnsureMinTouchTargetSize(boolean z2) {
        this.q = z2;
        d(this.s);
    }

    @Override // android.widget.TextView
    public void setGravity(int i) {
        if (i != 8388627) {
            Log.w("Chip", "Chip text must be vertically center and start aligned");
        } else {
            super.setGravity(i);
        }
    }

    public void setHideMotionSpec(o55 o55Var) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.a0 = o55Var;
        }
    }

    public void setHideMotionSpecResource(int i) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.a0 = o55.b(t65Var.j0, i);
        }
    }

    public void setIconEndPadding(float f) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.o0(f);
        }
    }

    public void setIconEndPaddingResource(int i) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.o0(t65Var.j0.getResources().getDimension(i));
        }
    }

    public void setIconStartPadding(float f) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.p0(f);
        }
    }

    public void setIconStartPaddingResource(int i) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.p0(t65Var.j0.getResources().getDimension(i));
        }
    }

    @Override // android.view.View
    public void setLayoutDirection(int i) {
        if (this.h == null) {
            return;
        }
        super.setLayoutDirection(i);
    }

    @Override // android.widget.TextView
    public void setLines(int i) {
        if (i > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setLines(i);
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i) {
        if (i > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMaxLines(i);
    }

    @Override // android.widget.TextView
    public void setMaxWidth(int i) {
        super.setMaxWidth(i);
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.J0 = i;
        }
    }

    @Override // android.widget.TextView
    public void setMinLines(int i) {
        if (i > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMinLines(i);
    }

    public void setOnCheckedChangeListenerInternal(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.l = onCheckedChangeListener;
    }

    public void setOnCloseIconClickListener(View.OnClickListener onClickListener) {
        this.k = onClickListener;
        h();
    }

    public void setRippleColor(ColorStateList colorStateList) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.q0(colorStateList);
        }
        if (this.h.E0) {
            return;
        }
        i();
    }

    public void setRippleColorResource(int i) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.q0(p0.a(t65Var.j0, i));
            if (this.h.E0) {
                return;
            }
            i();
        }
    }

    @Override // defpackage.ta5
    public void setShapeAppearanceModel(pa5 pa5Var) {
        t65 t65Var = this.h;
        t65Var.e.a = pa5Var;
        t65Var.invalidateSelf();
    }

    public void setShowMotionSpec(o55 o55Var) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.Z = o55Var;
        }
    }

    public void setShowMotionSpecResource(int i) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.Z = o55.b(t65Var.j0, i);
        }
    }

    @Override // android.widget.TextView
    public void setSingleLine(boolean z2) {
        if (!z2) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setSingleLine(z2);
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        t65 t65Var = this.h;
        if (t65Var == null) {
            return;
        }
        if (charSequence == null) {
            charSequence = "";
        }
        super.setText(t65Var.I0 ? null : charSequence, bufferType);
        t65 t65Var2 = this.h;
        if (t65Var2 != null) {
            t65Var2.r0(charSequence);
        }
    }

    public void setTextAppearance(y95 y95Var) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.p0.b(y95Var, t65Var.j0);
        }
        k();
    }

    public void setTextAppearanceResource(int i) {
        setTextAppearance(getContext(), i);
    }

    public void setTextEndPadding(float f) {
        t65 t65Var = this.h;
        if (t65Var == null || t65Var.f0 == f) {
            return;
        }
        t65Var.f0 = f;
        t65Var.invalidateSelf();
        t65Var.Q();
    }

    public void setTextEndPaddingResource(int i) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.s0(t65Var.j0.getResources().getDimension(i));
        }
    }

    public void setTextStartPadding(float f) {
        t65 t65Var = this.h;
        if (t65Var == null || t65Var.e0 == f) {
            return;
        }
        t65Var.e0 = f;
        t65Var.invalidateSelf();
        t65Var.Q();
    }

    public void setTextStartPaddingResource(int i) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.t0(t65Var.j0.getResources().getDimension(i));
        }
    }

    public Chip(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.chipStyle);
    }

    public void setCloseIconVisible(boolean z2) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.n0(z2);
        }
        h();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Chip(Context context, AttributeSet attributeSet, int i) {
        int i2 = x;
        super(fc5.a(context, attributeSet, i, i2), attributeSet, i);
        this.u = new Rect();
        this.v = new RectF();
        this.w = new a();
        Context context2 = getContext();
        if (attributeSet != null) {
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "background") != null) {
                Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableLeft") == null) {
                if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableStart") == null) {
                    if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableEnd") == null) {
                        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableRight") == null) {
                            if (attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res/android", "singleLine", true) && attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "lines", 1) == 1 && attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "minLines", 1) == 1 && attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "maxLines", 1) == 1) {
                                if (attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "gravity", 8388627) != 8388627) {
                                    Log.w("Chip", "Chip text must be vertically center and start aligned");
                                }
                            } else {
                                throw new UnsupportedOperationException("Chip does not support multi-line text");
                            }
                        } else {
                            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
                        }
                    } else {
                        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
                    }
                } else {
                    throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
                }
            } else {
                throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
            }
        }
        t65 t65Var = new t65(context2, attributeSet, i, i2);
        Context context3 = t65Var.j0;
        int[] iArr = R$styleable.Chip;
        TypedArray typedArrayD = t85.d(context3, attributeSet, iArr, i, i2, new int[0]);
        int i3 = R$styleable.Chip_shapeAppearance;
        t65Var.K0 = typedArrayD.hasValue(i3);
        ColorStateList colorStateListA0 = c50.a0(t65Var.j0, typedArrayD, R$styleable.Chip_chipSurfaceColor);
        if (t65Var.C != colorStateListA0) {
            t65Var.C = colorStateListA0;
            t65Var.onStateChange(t65Var.getState());
        }
        t65Var.W(c50.a0(t65Var.j0, typedArrayD, R$styleable.Chip_chipBackgroundColor));
        t65Var.d0(typedArrayD.getDimension(R$styleable.Chip_chipMinHeight, 0.0f));
        int i4 = R$styleable.Chip_chipCornerRadius;
        if (typedArrayD.hasValue(i4)) {
            t65Var.X(typedArrayD.getDimension(i4, 0.0f));
        }
        t65Var.f0(c50.a0(t65Var.j0, typedArrayD, R$styleable.Chip_chipStrokeColor));
        t65Var.g0(typedArrayD.getDimension(R$styleable.Chip_chipStrokeWidth, 0.0f));
        t65Var.q0(c50.a0(t65Var.j0, typedArrayD, R$styleable.Chip_rippleColor));
        t65Var.r0(typedArrayD.getText(R$styleable.Chip_android_text));
        y95 y95VarJ0 = c50.j0(t65Var.j0, typedArrayD, R$styleable.Chip_android_textAppearance);
        y95VarJ0.k = typedArrayD.getDimension(R$styleable.Chip_android_textSize, y95VarJ0.k);
        t65Var.p0.b(y95VarJ0, t65Var.j0);
        int i5 = typedArrayD.getInt(R$styleable.Chip_android_ellipsize, 0);
        if (i5 == 1) {
            t65Var.H0 = TextUtils.TruncateAt.START;
        } else if (i5 == 2) {
            t65Var.H0 = TextUtils.TruncateAt.MIDDLE;
        } else if (i5 == 3) {
            t65Var.H0 = TextUtils.TruncateAt.END;
        }
        t65Var.c0(typedArrayD.getBoolean(R$styleable.Chip_chipIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconVisible") == null) {
            t65Var.c0(typedArrayD.getBoolean(R$styleable.Chip_chipIconEnabled, false));
        }
        t65Var.Z(c50.f0(t65Var.j0, typedArrayD, R$styleable.Chip_chipIcon));
        int i6 = R$styleable.Chip_chipIconTint;
        if (typedArrayD.hasValue(i6)) {
            t65Var.b0(c50.a0(t65Var.j0, typedArrayD, i6));
        }
        t65Var.a0(typedArrayD.getDimension(R$styleable.Chip_chipIconSize, -1.0f));
        t65Var.n0(typedArrayD.getBoolean(R$styleable.Chip_closeIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconVisible") == null) {
            t65Var.n0(typedArrayD.getBoolean(R$styleable.Chip_closeIconEnabled, false));
        }
        t65Var.h0(c50.f0(t65Var.j0, typedArrayD, R$styleable.Chip_closeIcon));
        t65Var.m0(c50.a0(t65Var.j0, typedArrayD, R$styleable.Chip_closeIconTint));
        t65Var.j0(typedArrayD.getDimension(R$styleable.Chip_closeIconSize, 0.0f));
        t65Var.S(typedArrayD.getBoolean(R$styleable.Chip_android_checkable, false));
        t65Var.V(typedArrayD.getBoolean(R$styleable.Chip_checkedIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconVisible") == null) {
            t65Var.V(typedArrayD.getBoolean(R$styleable.Chip_checkedIconEnabled, false));
        }
        t65Var.T(c50.f0(t65Var.j0, typedArrayD, R$styleable.Chip_checkedIcon));
        int i7 = R$styleable.Chip_checkedIconTint;
        if (typedArrayD.hasValue(i7)) {
            t65Var.U(c50.a0(t65Var.j0, typedArrayD, i7));
        }
        t65Var.Z = o55.a(t65Var.j0, typedArrayD, R$styleable.Chip_showMotionSpec);
        t65Var.a0 = o55.a(t65Var.j0, typedArrayD, R$styleable.Chip_hideMotionSpec);
        t65Var.e0(typedArrayD.getDimension(R$styleable.Chip_chipStartPadding, 0.0f));
        t65Var.p0(typedArrayD.getDimension(R$styleable.Chip_iconStartPadding, 0.0f));
        t65Var.o0(typedArrayD.getDimension(R$styleable.Chip_iconEndPadding, 0.0f));
        t65Var.t0(typedArrayD.getDimension(R$styleable.Chip_textStartPadding, 0.0f));
        t65Var.s0(typedArrayD.getDimension(R$styleable.Chip_textEndPadding, 0.0f));
        t65Var.k0(typedArrayD.getDimension(R$styleable.Chip_closeIconStartPadding, 0.0f));
        t65Var.i0(typedArrayD.getDimension(R$styleable.Chip_closeIconEndPadding, 0.0f));
        t65Var.Y(typedArrayD.getDimension(R$styleable.Chip_chipEndPadding, 0.0f));
        t65Var.J0 = typedArrayD.getDimensionPixelSize(R$styleable.Chip_android_maxWidth, Integer.MAX_VALUE);
        typedArrayD.recycle();
        t85.a(context2, attributeSet, i, i2);
        t85.b(context2, attributeSet, iArr, i, i2, new int[0]);
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, i, i2);
        this.q = typedArrayObtainStyledAttributes.getBoolean(R$styleable.Chip_ensureMinTouchTargetSize, false);
        this.s = (int) Math.ceil(typedArrayObtainStyledAttributes.getDimension(R$styleable.Chip_chipMinTouchTargetSize, (float) Math.ceil(c50.P(getContext(), 48))));
        typedArrayObtainStyledAttributes.recycle();
        setChipDrawable(t65Var);
        AtomicInteger atomicInteger = ha.a;
        t65Var.s(getElevation());
        t85.a(context2, attributeSet, i, i2);
        t85.b(context2, attributeSet, iArr, i, i2, new int[0]);
        TypedArray typedArrayObtainStyledAttributes2 = context2.obtainStyledAttributes(attributeSet, iArr, i, i2);
        if (Build.VERSION.SDK_INT < 23) {
            setTextColor(c50.a0(context2, typedArrayObtainStyledAttributes2, R$styleable.Chip_android_textColor));
        }
        boolean zHasValue = typedArrayObtainStyledAttributes2.hasValue(i3);
        typedArrayObtainStyledAttributes2.recycle();
        this.t = new b(this);
        h();
        if (!zHasValue) {
            setOutlineProvider(new s65(this));
        }
        setChecked(this.m);
        setText(t65Var.J);
        setEllipsize(t65Var.H0);
        k();
        if (!this.h.I0) {
            setLines(1);
            setHorizontallyScrolling(true);
        }
        setGravity(8388627);
        j();
        if (this.q) {
            setMinHeight(this.s);
        }
        this.r = getLayoutDirection();
    }

    public void setCheckedIconVisible(boolean z2) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.V(z2);
        }
    }

    public void setChipIconVisible(boolean z2) {
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.c0(z2);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set right drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.p0.b(new y95(t65Var.j0, i), t65Var.j0);
        }
        k();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i) {
        super.setTextAppearance(i);
        t65 t65Var = this.h;
        if (t65Var != null) {
            t65Var.p0.b(new y95(t65Var.j0, i), t65Var.j0);
        }
        k();
    }
}
