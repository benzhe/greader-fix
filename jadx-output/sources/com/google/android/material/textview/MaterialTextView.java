package com.google.android.material.textview;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.R$attr;
import com.google.android.material.R$styleable;
import defpackage.c50;
import defpackage.fc5;

/* loaded from: classes.dex */
public class MaterialTextView extends AppCompatTextView {
    public MaterialTextView(Context context) {
        this(context, null);
    }

    public static int e(Context context, TypedArray typedArray, int... iArr) {
        int iE0 = -1;
        for (int i = 0; i < iArr.length && iE0 < 0; i++) {
            iE0 = c50.e0(context, typedArray, iArr[i], -1);
        }
        return iE0;
    }

    public final void c(Resources.Theme theme, int i) throws Resources.NotFoundException {
        TypedArray typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(i, R$styleable.MaterialTextAppearance);
        int iE = e(getContext(), typedArrayObtainStyledAttributes, R$styleable.MaterialTextAppearance_android_lineHeight, R$styleable.MaterialTextAppearance_lineHeight);
        typedArrayObtainStyledAttributes.recycle();
        if (iE >= 0) {
            setLineHeight(iE);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView
    public void setTextAppearance(Context context, int i) throws Resources.NotFoundException {
        super.setTextAppearance(context, i);
        if (c50.F0(context, R$attr.textAppearanceLineHeightEnabled, true)) {
            c(context.getTheme(), i);
        }
    }

    public MaterialTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }

    public MaterialTextView(Context context, AttributeSet attributeSet, int i) throws Resources.NotFoundException {
        super(fc5.a(context, attributeSet, i, 0), attributeSet, i);
        Context context2 = getContext();
        if (c50.F0(context2, R$attr.textAppearanceLineHeightEnabled, true)) {
            Resources.Theme theme = context2.getTheme();
            int[] iArr = R$styleable.MaterialTextView;
            TypedArray typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, iArr, i, 0);
            int iE = e(context2, typedArrayObtainStyledAttributes, R$styleable.MaterialTextView_android_lineHeight, R$styleable.MaterialTextView_lineHeight);
            typedArrayObtainStyledAttributes.recycle();
            if (iE != -1) {
                return;
            }
            TypedArray typedArrayObtainStyledAttributes2 = theme.obtainStyledAttributes(attributeSet, iArr, i, 0);
            int resourceId = typedArrayObtainStyledAttributes2.getResourceId(R$styleable.MaterialTextView_android_textAppearance, -1);
            typedArrayObtainStyledAttributes2.recycle();
            if (resourceId != -1) {
                c(theme, resourceId);
            }
        }
    }
}
