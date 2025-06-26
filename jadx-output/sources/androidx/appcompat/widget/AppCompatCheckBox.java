package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.CheckBox;
import androidx.appcompat.R$attr;
import defpackage.a2;
import defpackage.i2;
import defpackage.p0;
import defpackage.x2;
import defpackage.z1;
import defpackage.z2;

/* loaded from: classes.dex */
public class AppCompatCheckBox extends CheckBox {
    public final a2 e;
    public final z1 f;
    public final i2 g;

    public AppCompatCheckBox(Context context) {
        this(context, null);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        z1 z1Var = this.f;
        if (z1Var != null) {
            z1Var.a();
        }
        i2 i2Var = this.g;
        if (i2Var != null) {
            i2Var.b();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        a2 a2Var = this.e;
        return compoundPaddingLeft;
    }

    public ColorStateList getSupportBackgroundTintList() {
        z1 z1Var = this.f;
        if (z1Var != null) {
            return z1Var.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        z1 z1Var = this.f;
        if (z1Var != null) {
            return z1Var.c();
        }
        return null;
    }

    public ColorStateList getSupportButtonTintList() {
        a2 a2Var = this.e;
        if (a2Var != null) {
            return a2Var.b;
        }
        return null;
    }

    public PorterDuff.Mode getSupportButtonTintMode() {
        a2 a2Var = this.e;
        if (a2Var != null) {
            return a2Var.c;
        }
        return null;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        z1 z1Var = this.f;
        if (z1Var != null) {
            z1Var.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        z1 z1Var = this.f;
        if (z1Var != null) {
            z1Var.f(i);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) throws NoSuchFieldException {
        super.setButtonDrawable(drawable);
        a2 a2Var = this.e;
        if (a2Var != null) {
            if (a2Var.f) {
                a2Var.f = false;
            } else {
                a2Var.f = true;
                a2Var.a();
            }
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        z1 z1Var = this.f;
        if (z1Var != null) {
            z1Var.h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        z1 z1Var = this.f;
        if (z1Var != null) {
            z1Var.i(mode);
        }
    }

    public void setSupportButtonTintList(ColorStateList colorStateList) throws NoSuchFieldException {
        a2 a2Var = this.e;
        if (a2Var != null) {
            a2Var.b = colorStateList;
            a2Var.d = true;
            a2Var.a();
        }
    }

    public void setSupportButtonTintMode(PorterDuff.Mode mode) throws NoSuchFieldException {
        a2 a2Var = this.e;
        if (a2Var != null) {
            a2Var.c = mode;
            a2Var.e = true;
            a2Var.a();
        }
    }

    public AppCompatCheckBox(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.checkboxStyle);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatCheckBox(Context context, AttributeSet attributeSet, int i) throws Resources.NotFoundException, IllegalArgumentException {
        super(context, attributeSet, i);
        z2.a(context);
        x2.a(this, getContext());
        a2 a2Var = new a2(this);
        this.e = a2Var;
        a2Var.b(attributeSet, i);
        z1 z1Var = new z1(this);
        this.f = z1Var;
        z1Var.d(attributeSet, i);
        i2 i2Var = new i2(this);
        this.g = i2Var;
        i2Var.e(attributeSet, i);
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i) throws NoSuchFieldException {
        setButtonDrawable(p0.b(getContext(), i));
    }
}
