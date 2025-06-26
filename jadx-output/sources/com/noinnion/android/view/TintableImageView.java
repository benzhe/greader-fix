package com.noinnion.android.view;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.noinnion.android.R$styleable;

/* loaded from: classes2.dex */
public class TintableImageView extends ImageView {
    public ColorStateList e;

    public TintableImageView(Context context) {
        super(context);
    }

    public final void a(Context context, AttributeSet attributeSet, int i) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.TintableImageView, i, 0);
        this.e = typedArrayObtainStyledAttributes.getColorStateList(R$styleable.TintableImageView_tiv_tint);
        b();
        typedArrayObtainStyledAttributes.recycle();
    }

    public final void b() {
        ColorStateList colorStateList = this.e;
        if (colorStateList == null) {
            return;
        }
        setColorFilter(colorStateList.getColorForState(getDrawableState(), 0), PorterDuff.Mode.SRC_IN);
    }

    @Override // android.widget.ImageView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        ColorStateList colorStateList = this.e;
        if (colorStateList == null || !colorStateList.isStateful()) {
            return;
        }
        b();
    }

    public void setColorFilter(ColorStateList colorStateList) {
        this.e = colorStateList;
        super.setColorFilter(colorStateList.getColorForState(getDrawableState(), 0), PorterDuff.Mode.SRC_IN);
    }

    public TintableImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet, 0);
    }

    public TintableImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet, i);
    }
}
