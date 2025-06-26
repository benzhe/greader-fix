package pl.droidsonroids.gif;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.widget.TextView;
import defpackage.r78;
import defpackage.u78;
import java.io.IOException;

/* loaded from: classes2.dex */
public class GifTextView extends TextView {
    public boolean e;

    public GifTextView(Context context) {
        super(context);
    }

    private void setBackgroundInternal(Drawable drawable) {
        setBackground(drawable);
    }

    public final Drawable a(int i) {
        if (i == 0) {
            return null;
        }
        Resources resources = getResources();
        if (!isInEditMode() && "drawable".equals(resources.getResourceTypeName(i))) {
            try {
                return new r78(resources, i);
            } catch (Resources.NotFoundException | IOException unused) {
            }
        }
        return resources.getDrawable(i, getContext().getTheme());
    }

    public final void b(AttributeSet attributeSet, int i, int i2) {
        if (attributeSet != null) {
            Drawable drawableA = a(attributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/android", "drawableLeft", 0));
            Drawable drawableA2 = a(attributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/android", "drawableTop", 0));
            Drawable drawableA3 = a(attributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/android", "drawableRight", 0));
            Drawable drawableA4 = a(attributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/android", "drawableBottom", 0));
            Drawable drawableA5 = a(attributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/android", "drawableStart", 0));
            Drawable drawableA6 = a(attributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/android", "drawableEnd", 0));
            if (getLayoutDirection() == 0) {
                if (drawableA5 == null) {
                    drawableA5 = drawableA;
                }
                if (drawableA6 == null) {
                    drawableA6 = drawableA3;
                }
            } else {
                if (drawableA5 == null) {
                    drawableA5 = drawableA3;
                }
                if (drawableA6 == null) {
                    drawableA6 = drawableA;
                }
            }
            setCompoundDrawablesRelativeWithIntrinsicBounds(drawableA5, drawableA2, drawableA6, drawableA4);
            setCompoundDrawablesWithIntrinsicBounds(drawableA, drawableA2, drawableA3, drawableA4);
            setBackgroundInternal(a(attributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/android", "background", 0)));
        }
        this.e = u78.c(this, attributeSet, i, i2);
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        for (Drawable drawable : getCompoundDrawables()) {
            if (drawable != null) {
                drawable.setVisible(false, false);
            }
        }
        for (Drawable drawable2 : getCompoundDrawablesRelative()) {
            if (drawable2 != null) {
                drawable2.setVisible(false, false);
            }
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        GifViewSavedState gifViewSavedState = (GifViewSavedState) parcelable;
        super.onRestoreInstanceState(gifViewSavedState.getSuperState());
        Drawable[] compoundDrawables = getCompoundDrawables();
        gifViewSavedState.a(compoundDrawables[0], 0);
        gifViewSavedState.a(compoundDrawables[1], 1);
        gifViewSavedState.a(compoundDrawables[2], 2);
        gifViewSavedState.a(compoundDrawables[3], 3);
        Drawable[] compoundDrawablesRelative = getCompoundDrawablesRelative();
        gifViewSavedState.a(compoundDrawablesRelative[0], 4);
        gifViewSavedState.a(compoundDrawablesRelative[2], 5);
        gifViewSavedState.a(getBackground(), 6);
    }

    @Override // android.widget.TextView, android.view.View
    public Parcelable onSaveInstanceState() {
        Drawable[] drawableArr = new Drawable[7];
        if (this.e) {
            Drawable[] compoundDrawables = getCompoundDrawables();
            System.arraycopy(compoundDrawables, 0, drawableArr, 0, compoundDrawables.length);
            Drawable[] compoundDrawablesRelative = getCompoundDrawablesRelative();
            drawableArr[4] = compoundDrawablesRelative[0];
            drawableArr[5] = compoundDrawablesRelative[2];
            drawableArr[6] = getBackground();
        }
        return new GifViewSavedState(super.onSaveInstanceState(), drawableArr);
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        setBackgroundInternal(a(i));
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        setCompoundDrawablesRelativeWithIntrinsicBounds(a(i), a(i2), a(i3), a(i4));
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        setCompoundDrawablesWithIntrinsicBounds(a(i), a(i2), a(i3), a(i4));
    }

    public void setFreezesAnimation(boolean z) {
        this.e = z;
    }

    public GifTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        b(attributeSet, 0, 0);
    }

    public GifTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        b(attributeSet, i, 0);
    }
}
