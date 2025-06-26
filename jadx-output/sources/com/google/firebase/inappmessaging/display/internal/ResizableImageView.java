package com.google.firebase.inappmessaging.display.internal;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;
import defpackage.c50;

/* loaded from: classes.dex */
public class ResizableImageView extends AppCompatImageView {
    public int g;

    public static class b {
        public final int a;
        public final int b;

        public b(int i, int i2, a aVar) {
            this.a = i;
            this.b = i2;
        }
    }

    public ResizableImageView(Context context) {
        super(context);
        d(context);
    }

    public final b c(int i, int i2) {
        int maxWidth = getMaxWidth();
        int maxHeight = getMaxHeight();
        if (i > maxWidth) {
            c50.u0("Image: capping width", maxWidth);
            i2 = (i2 * maxWidth) / i;
            i = maxWidth;
        }
        if (i2 > maxHeight) {
            c50.u0("Image: capping height", maxHeight);
            i = (i * maxHeight) / i2;
        } else {
            maxHeight = i2;
        }
        return new b(i, maxHeight, null);
    }

    public final void d(Context context) {
        this.g = (int) (context.getResources().getDisplayMetrics().density * 160.0f);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        Drawable drawable = getDrawable();
        boolean adjustViewBounds = getAdjustViewBounds();
        if (drawable == null || !adjustViewBounds) {
            return;
        }
        c50.v0("Image: intrinsic width, height", drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        b bVarC = c((int) Math.ceil((r10 * this.g) / 160), (int) Math.ceil((r9 * this.g) / 160));
        c50.v0("Image: new target dimensions", bVarC.a, bVarC.b);
        setMeasuredDimension(bVarC.a, bVarC.b);
        int iMax = Math.max(getMinimumWidth(), getSuggestedMinimumWidth());
        int iMax2 = Math.max(getMinimumHeight(), getSuggestedMinimumHeight());
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        float f = iMax;
        float f2 = iMax2;
        c50.v0("Image: min width, height", f, f2);
        float f3 = measuredWidth;
        float f4 = measuredHeight;
        c50.v0("Image: actual width, height", f3, f4);
        float f5 = measuredWidth < iMax ? f / f3 : 1.0f;
        float f6 = measuredHeight < iMax2 ? f2 / f4 : 1.0f;
        if (f5 <= f6) {
            f5 = f6;
        }
        if (f5 > 1.0d) {
            int iCeil = (int) Math.ceil(f3 * f5);
            int iCeil2 = (int) Math.ceil(f4 * f5);
            c50.s0("Measured dimension (" + measuredWidth + "x" + measuredHeight + ") too small.  Resizing to " + iCeil + "x" + iCeil2);
            b bVarC2 = c(iCeil, iCeil2);
            setMeasuredDimension(bVarC2.a, bVarC2.b);
        }
    }

    public ResizableImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        d(context);
    }

    public ResizableImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        d(context);
    }
}
