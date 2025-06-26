package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$styleable;
import defpackage.c50;
import defpackage.g95;
import defpackage.t85;

/* loaded from: classes.dex */
public final class CircularProgressIndicatorSpec extends g95 {
    public int g;
    public int h;
    public int i;

    public CircularProgressIndicatorSpec(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.circularProgressIndicatorStyle);
    }

    @Override // defpackage.g95
    public void a() {
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public CircularProgressIndicatorSpec(Context context, AttributeSet attributeSet, int i) throws Resources.NotFoundException {
        int i2 = CircularProgressIndicator.r;
        super(context, attributeSet, i, i2);
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R$dimen.mtrl_progress_circular_size_medium);
        int dimensionPixelSize2 = context.getResources().getDimensionPixelSize(R$dimen.mtrl_progress_circular_inset_medium);
        int[] iArr = R$styleable.CircularProgressIndicator;
        t85.a(context, attributeSet, i, i2);
        t85.b(context, attributeSet, iArr, i, i2, new int[0]);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, i2);
        this.g = Math.max(c50.e0(context, typedArrayObtainStyledAttributes, R$styleable.CircularProgressIndicator_indicatorSize, dimensionPixelSize), this.a * 2);
        this.h = c50.e0(context, typedArrayObtainStyledAttributes, R$styleable.CircularProgressIndicator_indicatorInset, dimensionPixelSize2);
        this.i = typedArrayObtainStyledAttributes.getInt(R$styleable.CircularProgressIndicator_indicatorDirectionCircular, 0);
        typedArrayObtainStyledAttributes.recycle();
    }
}
