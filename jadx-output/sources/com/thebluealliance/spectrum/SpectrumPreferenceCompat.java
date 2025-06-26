package com.thebluealliance.spectrum;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.preference.DialogPreference;

/* loaded from: classes2.dex */
public class SpectrumPreferenceCompat extends DialogPreference {
    public int s;

    public SpectrumPreferenceCompat(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.s = 0;
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.SpectrumPreference, 0, 0);
        try {
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.SpectrumPreference_spectrum_colors, 0);
            if (resourceId != 0) {
                this.e.getResources().getIntArray(resourceId);
            }
            typedArrayObtainStyledAttributes.getBoolean(R$styleable.SpectrumPreference_spectrum_closeOnSelected, true);
            this.s = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.SpectrumPalette_spectrum_outlineWidth, 0);
            typedArrayObtainStyledAttributes.getInt(R$styleable.SpectrumPalette_spectrum_columnCount, -1);
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // androidx.preference.Preference
    public Object l(TypedArray typedArray, int i) {
        return Integer.valueOf(typedArray.getInteger(i, -16777216));
    }
}
