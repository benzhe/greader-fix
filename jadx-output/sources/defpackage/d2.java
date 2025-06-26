package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;
import androidx.appcompat.R$styleable;
import defpackage.d0;

/* loaded from: classes.dex */
public class d2 extends PopupWindow {
    public d2(Context context, AttributeSet attributeSet, int i, int i2) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        int resourceId;
        super(context, attributeSet, i, i2);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.PopupWindow, i, i2);
        int i3 = R$styleable.PopupWindow_overlapAnchor;
        if (typedArrayObtainStyledAttributes.hasValue(i3)) {
            d0.h.a0(this, typedArrayObtainStyledAttributes.getBoolean(i3, false));
        }
        int i4 = R$styleable.PopupWindow_android_popupBackground;
        setBackgroundDrawable((!typedArrayObtainStyledAttributes.hasValue(i4) || (resourceId = typedArrayObtainStyledAttributes.getResourceId(i4, 0)) == 0) ? typedArrayObtainStyledAttributes.getDrawable(i4) : p0.b(context, resourceId));
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2) {
        super.showAsDropDown(view, i, i2);
    }

    @Override // android.widget.PopupWindow
    public void update(View view, int i, int i2, int i3, int i4) {
        super.update(view, i, i2, i3, i4);
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2, int i3) {
        super.showAsDropDown(view, i, i2, i3);
    }
}
