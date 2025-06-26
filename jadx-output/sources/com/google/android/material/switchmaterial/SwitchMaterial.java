package com.google.android.material.switchmaterial;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.SwitchCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import defpackage.c50;
import defpackage.fc5;
import defpackage.t85;
import defpackage.u75;

/* loaded from: classes.dex */
public class SwitchMaterial extends SwitchCompat {
    public static final int a0 = R$style.Widget_MaterialComponents_CompoundButton_Switch;
    public static final int[][] b0 = {new int[]{R.attr.state_enabled, R.attr.state_checked}, new int[]{R.attr.state_enabled, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};
    public final u75 T;
    public ColorStateList U;
    public ColorStateList V;
    public boolean W;

    public SwitchMaterial(Context context) {
        this(context, null);
    }

    private ColorStateList getMaterialThemeColorsThumbTintList() throws Resources.NotFoundException {
        if (this.U == null) {
            int iZ = c50.Z(this, R$attr.colorSurface);
            int iZ2 = c50.Z(this, R$attr.colorControlActivated);
            float dimension = getResources().getDimension(R$dimen.mtrl_switch_thumb_elevation);
            if (this.T.a) {
                dimension += c50.h0(this);
            }
            int iA = this.T.a(iZ, dimension);
            int[][] iArr = b0;
            int[] iArr2 = new int[iArr.length];
            iArr2[0] = c50.p0(iZ, iZ2, 1.0f);
            iArr2[1] = iA;
            iArr2[2] = c50.p0(iZ, iZ2, 0.38f);
            iArr2[3] = iA;
            this.U = new ColorStateList(iArr, iArr2);
        }
        return this.U;
    }

    private ColorStateList getMaterialThemeColorsTrackTintList() {
        if (this.V == null) {
            int[][] iArr = b0;
            int[] iArr2 = new int[iArr.length];
            int iZ = c50.Z(this, R$attr.colorSurface);
            int iZ2 = c50.Z(this, R$attr.colorControlActivated);
            int iZ3 = c50.Z(this, R$attr.colorOnSurface);
            iArr2[0] = c50.p0(iZ, iZ2, 0.54f);
            iArr2[1] = c50.p0(iZ, iZ3, 0.32f);
            iArr2[2] = c50.p0(iZ, iZ2, 0.12f);
            iArr2[3] = c50.p0(iZ, iZ3, 0.12f);
            this.V = new ColorStateList(iArr, iArr2);
        }
        return this.V;
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.W && getThumbTintList() == null) {
            setThumbTintList(getMaterialThemeColorsThumbTintList());
        }
        if (this.W && getTrackTintList() == null) {
            setTrackTintList(getMaterialThemeColorsTrackTintList());
        }
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.W = z;
        if (z) {
            setThumbTintList(getMaterialThemeColorsThumbTintList());
            setTrackTintList(getMaterialThemeColorsTrackTintList());
        } else {
            setThumbTintList(null);
            setTrackTintList(null);
        }
    }

    public SwitchMaterial(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.switchStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public SwitchMaterial(Context context, AttributeSet attributeSet, int i) {
        int i2 = a0;
        super(fc5.a(context, attributeSet, i, i2), attributeSet, i);
        Context context2 = getContext();
        this.T = new u75(context2);
        TypedArray typedArrayD = t85.d(context2, attributeSet, R$styleable.SwitchMaterial, i, i2, new int[0]);
        this.W = typedArrayD.getBoolean(R$styleable.SwitchMaterial_useMaterialThemeColors, false);
        typedArrayD.recycle();
    }
}
