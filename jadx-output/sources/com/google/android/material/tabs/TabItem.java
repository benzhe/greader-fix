package com.google.android.material.tabs;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.material.R$styleable;
import defpackage.p0;

/* loaded from: classes.dex */
public class TabItem extends View {
    public final CharSequence e;
    public final Drawable f;
    public final int g;

    public TabItem(Context context) {
        this(context, null);
    }

    public TabItem(Context context, AttributeSet attributeSet) {
        int resourceId;
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.TabItem);
        this.e = typedArrayObtainStyledAttributes.getText(R$styleable.TabItem_android_text);
        int i = R$styleable.TabItem_android_icon;
        this.f = (!typedArrayObtainStyledAttributes.hasValue(i) || (resourceId = typedArrayObtainStyledAttributes.getResourceId(i, 0)) == 0) ? typedArrayObtainStyledAttributes.getDrawable(i) : p0.b(context, resourceId);
        this.g = typedArrayObtainStyledAttributes.getResourceId(R$styleable.TabItem_android_layout, 0);
        typedArrayObtainStyledAttributes.recycle();
    }
}
