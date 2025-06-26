package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.widget.TextView;
import com.google.android.material.R$styleable;
import defpackage.d0;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class x65 {
    public final Rect a;
    public final ColorStateList b;
    public final ColorStateList c;
    public final ColorStateList d;
    public final int e;
    public final pa5 f;

    public x65(ColorStateList colorStateList, ColorStateList colorStateList2, ColorStateList colorStateList3, int i, pa5 pa5Var, Rect rect) {
        d0.h.g(rect.left);
        d0.h.g(rect.top);
        d0.h.g(rect.right);
        d0.h.g(rect.bottom);
        this.a = rect;
        this.b = colorStateList2;
        this.c = colorStateList;
        this.d = colorStateList3;
        this.e = i;
        this.f = pa5Var;
    }

    public static x65 a(Context context, int i) throws Resources.NotFoundException {
        if (!(i != 0)) {
            throw new IllegalArgumentException("Cannot create a CalendarItemStyle with a styleResId of 0");
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i, R$styleable.MaterialCalendarItem);
        Rect rect = new Rect(typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.MaterialCalendarItem_android_insetLeft, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.MaterialCalendarItem_android_insetTop, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.MaterialCalendarItem_android_insetRight, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.MaterialCalendarItem_android_insetBottom, 0));
        ColorStateList colorStateListA0 = c50.a0(context, typedArrayObtainStyledAttributes, R$styleable.MaterialCalendarItem_itemFillColor);
        ColorStateList colorStateListA02 = c50.a0(context, typedArrayObtainStyledAttributes, R$styleable.MaterialCalendarItem_itemTextColor);
        ColorStateList colorStateListA03 = c50.a0(context, typedArrayObtainStyledAttributes, R$styleable.MaterialCalendarItem_itemStrokeColor);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.MaterialCalendarItem_itemStrokeWidth, 0);
        pa5 pa5VarA = pa5.a(context, typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialCalendarItem_itemShapeAppearance, 0), typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialCalendarItem_itemShapeAppearanceOverlay, 0), new ea5(0)).a();
        typedArrayObtainStyledAttributes.recycle();
        return new x65(colorStateListA0, colorStateListA02, colorStateListA03, dimensionPixelSize, pa5VarA, rect);
    }

    public void b(TextView textView) {
        la5 la5Var = new la5();
        la5 la5Var2 = new la5();
        la5Var.setShapeAppearanceModel(this.f);
        la5Var2.setShapeAppearanceModel(this.f);
        la5Var.t(this.c);
        la5Var.z(this.e, this.d);
        textView.setTextColor(this.b);
        RippleDrawable rippleDrawable = new RippleDrawable(this.b.withAlpha(30), la5Var, la5Var2);
        Rect rect = this.a;
        InsetDrawable insetDrawable = new InsetDrawable((Drawable) rippleDrawable, rect.left, rect.top, rect.right, rect.bottom);
        AtomicInteger atomicInteger = ha.a;
        textView.setBackground(insetDrawable);
    }
}
