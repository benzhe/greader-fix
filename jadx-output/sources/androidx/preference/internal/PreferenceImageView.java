package androidx.preference.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import androidx.preference.R$styleable;

/* loaded from: classes.dex */
public class PreferenceImageView extends ImageView {
    public int e;
    public int f;

    public PreferenceImageView(Context context) {
        this(context, null);
    }

    @Override // android.widget.ImageView
    public int getMaxHeight() {
        return this.f;
    }

    @Override // android.widget.ImageView
    public int getMaxWidth() {
        return this.e;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        if (mode == Integer.MIN_VALUE || mode == 0) {
            int size = View.MeasureSpec.getSize(i);
            int maxWidth = getMaxWidth();
            if (maxWidth != Integer.MAX_VALUE && (maxWidth < size || mode == 0)) {
                i = View.MeasureSpec.makeMeasureSpec(maxWidth, Integer.MIN_VALUE);
            }
        }
        int mode2 = View.MeasureSpec.getMode(i2);
        if (mode2 == Integer.MIN_VALUE || mode2 == 0) {
            int size2 = View.MeasureSpec.getSize(i2);
            int maxHeight = getMaxHeight();
            if (maxHeight != Integer.MAX_VALUE && (maxHeight < size2 || mode2 == 0)) {
                i2 = View.MeasureSpec.makeMeasureSpec(maxHeight, Integer.MIN_VALUE);
            }
        }
        super.onMeasure(i, i2);
    }

    @Override // android.widget.ImageView
    public void setMaxHeight(int i) {
        this.f = i;
        super.setMaxHeight(i);
    }

    @Override // android.widget.ImageView
    public void setMaxWidth(int i) {
        this.e = i;
        super.setMaxWidth(i);
    }

    public PreferenceImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PreferenceImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = Integer.MAX_VALUE;
        this.f = Integer.MAX_VALUE;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.PreferenceImageView, i, 0);
        setMaxWidth(typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.PreferenceImageView_maxWidth, Integer.MAX_VALUE));
        setMaxHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.PreferenceImageView_maxHeight, Integer.MAX_VALUE));
        typedArrayObtainStyledAttributes.recycle();
    }
}
