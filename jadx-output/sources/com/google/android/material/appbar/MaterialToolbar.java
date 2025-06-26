package com.google.android.material.appbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.appcompat.widget.Toolbar;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import defpackage.c50;
import defpackage.d0;
import defpackage.fc5;
import defpackage.ha;
import defpackage.la5;
import defpackage.t85;
import defpackage.u75;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class MaterialToolbar extends Toolbar {
    public static final int U = R$style.Widget_MaterialComponents_Toolbar;
    public Integer T;

    public MaterialToolbar(Context context) {
        this(context, null);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable background = getBackground();
        if (background instanceof la5) {
            c50.I0(this, (la5) background);
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        c50.H0(this, f);
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null && this.T != null) {
            drawable = d0.h.l0(drawable);
            drawable.setTint(this.T.intValue());
        }
        super.setNavigationIcon(drawable);
    }

    public void setNavigationIconTint(int i) {
        this.T = Integer.valueOf(i);
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            setNavigationIcon(navigationIcon);
        }
    }

    public MaterialToolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.toolbarStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialToolbar(Context context, AttributeSet attributeSet, int i) {
        int i2 = U;
        super(fc5.a(context, attributeSet, i, i2), attributeSet, i);
        Context context2 = getContext();
        TypedArray typedArrayD = t85.d(context2, attributeSet, R$styleable.MaterialToolbar, i, i2, new int[0]);
        int i3 = R$styleable.MaterialToolbar_navigationIconTint;
        if (typedArrayD.hasValue(i3)) {
            setNavigationIconTint(typedArrayD.getColor(i3, -1));
        }
        typedArrayD.recycle();
        Drawable background = getBackground();
        if (background == null || (background instanceof ColorDrawable)) {
            la5 la5Var = new la5();
            la5Var.t(ColorStateList.valueOf(background != null ? ((ColorDrawable) background).getColor() : 0));
            la5Var.e.b = new u75(context2);
            la5Var.E();
            AtomicInteger atomicInteger = ha.a;
            la5Var.s(getElevation());
            setBackground(la5Var);
        }
    }
}
