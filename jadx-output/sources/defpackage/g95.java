package defpackage;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$styleable;

/* loaded from: classes.dex */
public abstract class g95 {
    public int a;
    public int b;
    public int[] c;
    public int d;
    public int e;
    public int f;

    public g95(Context context, AttributeSet attributeSet, int i, int i2) throws Resources.NotFoundException {
        this.c = new int[0];
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R$dimen.mtrl_progress_track_thickness);
        int[] iArr = R$styleable.BaseProgressIndicator;
        t85.a(context, attributeSet, i, i2);
        t85.b(context, attributeSet, iArr, i, i2, new int[0]);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, i2);
        this.a = c50.e0(context, typedArrayObtainStyledAttributes, R$styleable.BaseProgressIndicator_trackThickness, dimensionPixelSize);
        this.b = Math.min(c50.e0(context, typedArrayObtainStyledAttributes, R$styleable.BaseProgressIndicator_trackCornerRadius, 0), this.a / 2);
        this.e = typedArrayObtainStyledAttributes.getInt(R$styleable.BaseProgressIndicator_showAnimationBehavior, 0);
        this.f = typedArrayObtainStyledAttributes.getInt(R$styleable.BaseProgressIndicator_hideAnimationBehavior, 0);
        int i3 = R$styleable.BaseProgressIndicator_indicatorColor;
        if (!typedArrayObtainStyledAttributes.hasValue(i3)) {
            this.c = new int[]{c50.Y(context, R$attr.colorPrimary, -1)};
        } else if (typedArrayObtainStyledAttributes.peekValue(i3).type != 1) {
            this.c = new int[]{typedArrayObtainStyledAttributes.getColor(i3, -1)};
        } else {
            int[] intArray = context.getResources().getIntArray(typedArrayObtainStyledAttributes.getResourceId(i3, -1));
            this.c = intArray;
            if (intArray.length == 0) {
                throw new IllegalArgumentException("indicatorColors cannot be empty when indicatorColor is not used.");
            }
        }
        int i4 = R$styleable.BaseProgressIndicator_trackColor;
        if (typedArrayObtainStyledAttributes.hasValue(i4)) {
            this.d = typedArrayObtainStyledAttributes.getColor(i4, -1);
        } else {
            this.d = this.c[0];
            TypedArray typedArrayObtainStyledAttributes2 = context.getTheme().obtainStyledAttributes(new int[]{R.attr.disabledAlpha});
            float f = typedArrayObtainStyledAttributes2.getFloat(0, 0.2f);
            typedArrayObtainStyledAttributes2.recycle();
            this.d = c50.H(this.d, (int) (f * 255.0f));
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public abstract void a();
}
