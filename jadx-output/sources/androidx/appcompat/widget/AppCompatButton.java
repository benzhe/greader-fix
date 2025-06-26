package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import androidx.appcompat.R$attr;
import defpackage.a3;
import defpackage.bb;
import defpackage.d0;
import defpackage.i2;
import defpackage.wa;
import defpackage.x2;
import defpackage.z1;
import defpackage.z2;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public class AppCompatButton extends Button implements wa, bb {
    public final z1 e;
    public final i2 f;

    public AppCompatButton(Context context) {
        this(context, null);
    }

    @Override // android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        z1 z1Var = this.e;
        if (z1Var != null) {
            z1Var.a();
        }
        i2 i2Var = this.f;
        if (i2Var != null) {
            i2Var.b();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (wa.a) {
            return super.getAutoSizeMaxTextSize();
        }
        i2 i2Var = this.f;
        if (i2Var != null) {
            return Math.round(i2Var.i.e);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (wa.a) {
            return super.getAutoSizeMinTextSize();
        }
        i2 i2Var = this.f;
        if (i2Var != null) {
            return Math.round(i2Var.i.d);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (wa.a) {
            return super.getAutoSizeStepGranularity();
        }
        i2 i2Var = this.f;
        if (i2Var != null) {
            return Math.round(i2Var.i.c);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (wa.a) {
            return super.getAutoSizeTextAvailableSizes();
        }
        i2 i2Var = this.f;
        return i2Var != null ? i2Var.i.f : new int[0];
    }

    @Override // android.widget.TextView
    public int getAutoSizeTextType() {
        if (wa.a) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        i2 i2Var = this.f;
        if (i2Var != null) {
            return i2Var.i.a;
        }
        return 0;
    }

    public ColorStateList getSupportBackgroundTintList() {
        z1 z1Var = this.e;
        if (z1Var != null) {
            return z1Var.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        z1 z1Var = this.e;
        if (z1Var != null) {
            return z1Var.c();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        a3 a3Var = this.f.h;
        if (a3Var != null) {
            return a3Var.a;
        }
        return null;
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        a3 a3Var = this.f.h;
        if (a3Var != null) {
            return a3Var.b;
        }
        return null;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(Button.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(Button.class.getName());
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        i2 i2Var = this.f;
        if (i2Var == null || wa.a) {
            return;
        }
        i2Var.i.a();
    }

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        i2 i2Var = this.f;
        if (i2Var == null || wa.a || !i2Var.d()) {
            return;
        }
        this.f.i.a();
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        if (wa.a) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
            return;
        }
        i2 i2Var = this.f;
        if (i2Var != null) {
            i2Var.g(i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i) throws IllegalArgumentException {
        if (wa.a) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
            return;
        }
        i2 i2Var = this.f;
        if (i2Var != null) {
            i2Var.h(iArr, i);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i) throws IllegalArgumentException {
        if (wa.a) {
            super.setAutoSizeTextTypeWithDefaults(i);
            return;
        }
        i2 i2Var = this.f;
        if (i2Var != null) {
            i2Var.i(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        z1 z1Var = this.e;
        if (z1Var != null) {
            z1Var.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        z1 z1Var = this.e;
        if (z1Var != null) {
            z1Var.f(i);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(d0.h.m0(this, callback));
    }

    public void setSupportAllCaps(boolean z) {
        i2 i2Var = this.f;
        if (i2Var != null) {
            i2Var.a.setAllCaps(z);
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        z1 z1Var = this.e;
        if (z1Var != null) {
            z1Var.h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        z1 z1Var = this.e;
        if (z1Var != null) {
            z1Var.i(mode);
        }
    }

    @Override // defpackage.bb
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        this.f.j(colorStateList);
        this.f.b();
    }

    @Override // defpackage.bb
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        this.f.k(mode);
        this.f.b();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        i2 i2Var = this.f;
        if (i2Var != null) {
            i2Var.f(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        boolean z = wa.a;
        if (z) {
            super.setTextSize(i, f);
            return;
        }
        i2 i2Var = this.f;
        if (i2Var == null || z || i2Var.d()) {
            return;
        }
        i2Var.i.f(i, f);
    }

    public AppCompatButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.buttonStyle);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatButton(Context context, AttributeSet attributeSet, int i) throws Resources.NotFoundException, IllegalArgumentException {
        super(context, attributeSet, i);
        z2.a(context);
        x2.a(this, getContext());
        z1 z1Var = new z1(this);
        this.e = z1Var;
        z1Var.d(attributeSet, i);
        i2 i2Var = new i2(this);
        this.f = i2Var;
        i2Var.e(attributeSet, i);
        i2Var.b();
    }
}
