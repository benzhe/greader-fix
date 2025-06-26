package com.google.android.material.radiobutton;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatRadioButton;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import defpackage.c50;
import defpackage.fc5;
import defpackage.t85;

/* loaded from: classes.dex */
public class MaterialRadioButton extends AppCompatRadioButton {
    public static final int j = R$style.Widget_MaterialComponents_CompoundButton_RadioButton;
    public static final int[][] k = {new int[]{R.attr.state_enabled, R.attr.state_checked}, new int[]{R.attr.state_enabled, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};
    public ColorStateList h;
    public boolean i;

    public MaterialRadioButton(Context context) {
        this(context, null);
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.h == null) {
            int iZ = c50.Z(this, R$attr.colorControlActivated);
            int iZ2 = c50.Z(this, R$attr.colorOnSurface);
            int iZ3 = c50.Z(this, R$attr.colorSurface);
            int[][] iArr = k;
            int[] iArr2 = new int[iArr.length];
            iArr2[0] = c50.p0(iZ3, iZ, 1.0f);
            iArr2[1] = c50.p0(iZ3, iZ2, 0.54f);
            iArr2[2] = c50.p0(iZ3, iZ2, 0.38f);
            iArr2[3] = c50.p0(iZ3, iZ2, 0.38f);
            this.h = new ColorStateList(iArr, iArr2);
        }
        return this.h;
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.i && getButtonTintList() == null) {
            setUseMaterialThemeColors(true);
        }
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.i = z;
        if (z) {
            setButtonTintList(getMaterialThemeColorsTintList());
        } else {
            setButtonTintList(null);
        }
    }

    public MaterialRadioButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.radioButtonStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialRadioButton(Context context, AttributeSet attributeSet, int i) {
        int i2 = j;
        super(fc5.a(context, attributeSet, i, i2), attributeSet, i);
        Context context2 = getContext();
        TypedArray typedArrayD = t85.d(context2, attributeSet, R$styleable.MaterialRadioButton, i, i2, new int[0]);
        int i3 = R$styleable.MaterialRadioButton_buttonTint;
        if (typedArrayD.hasValue(i3)) {
            setButtonTintList(c50.a0(context2, typedArrayD, i3));
        }
        this.i = typedArrayD.getBoolean(R$styleable.MaterialRadioButton_useMaterialThemeColors, false);
        typedArrayD.recycle();
    }
}
