package androidx.cardview.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.cardview.R$attr;
import androidx.cardview.R$color;
import androidx.cardview.R$style;
import androidx.cardview.R$styleable;
import defpackage.a4;
import defpackage.b4;
import defpackage.c4;
import defpackage.d4;

/* loaded from: classes.dex */
public class CardView extends FrameLayout {
    public static final int[] l = {R.attr.colorBackground};
    public static final c4 m = new a4();
    public boolean e;
    public boolean f;
    public int g;
    public int h;
    public final Rect i;
    public final Rect j;
    public final b4 k;

    public class a implements b4 {
        public Drawable a;

        public a() {
        }

        public boolean a() {
            return CardView.this.getPreventCornerOverlap();
        }

        public void b(int i, int i2, int i3, int i4) {
            CardView.this.j.set(i, i2, i3, i4);
            CardView cardView = CardView.this;
            Rect rect = cardView.i;
            CardView.super.setPadding(i + rect.left, i2 + rect.top, i3 + rect.right, i4 + rect.bottom);
        }
    }

    public CardView(Context context) {
        this(context, null);
    }

    public ColorStateList getCardBackgroundColor() {
        return ((d4) ((a) this.k).a).h;
    }

    public float getCardElevation() {
        return CardView.this.getElevation();
    }

    public int getContentPaddingBottom() {
        return this.i.bottom;
    }

    public int getContentPaddingLeft() {
        return this.i.left;
    }

    public int getContentPaddingRight() {
        return this.i.right;
    }

    public int getContentPaddingTop() {
        return this.i.top;
    }

    public float getMaxCardElevation() {
        return ((d4) ((a) this.k).a).e;
    }

    public boolean getPreventCornerOverlap() {
        return this.f;
    }

    public float getRadius() {
        return ((d4) ((a) this.k).a).a;
    }

    public boolean getUseCompatPadding() {
        return this.e;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    public void setCardBackgroundColor(int i) {
        b4 b4Var = this.k;
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(i);
        d4 d4Var = (d4) ((a) b4Var).a;
        d4Var.b(colorStateListValueOf);
        d4Var.invalidateSelf();
    }

    public void setCardElevation(float f) {
        CardView.this.setElevation(f);
    }

    public void setContentPadding(int i, int i2, int i3, int i4) {
        this.i.set(i, i2, i3, i4);
        ((a4) m).c(this.k);
    }

    public void setMaxCardElevation(float f) {
        ((a4) m).b(this.k, f);
    }

    @Override // android.view.View
    public void setMinimumHeight(int i) {
        this.h = i;
        super.setMinimumHeight(i);
    }

    @Override // android.view.View
    public void setMinimumWidth(int i) {
        this.g = i;
        super.setMinimumWidth(i);
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View
    public void setPaddingRelative(int i, int i2, int i3, int i4) {
    }

    public void setPreventCornerOverlap(boolean z) {
        if (z != this.f) {
            this.f = z;
            c4 c4Var = m;
            b4 b4Var = this.k;
            a4 a4Var = (a4) c4Var;
            a4Var.b(b4Var, a4Var.a(b4Var).e);
        }
    }

    public void setRadius(float f) {
        d4 d4Var = (d4) ((a) this.k).a;
        if (f == d4Var.a) {
            return;
        }
        d4Var.a = f;
        d4Var.c(null);
        d4Var.invalidateSelf();
    }

    public void setUseCompatPadding(boolean z) {
        if (this.e != z) {
            this.e = z;
            c4 c4Var = m;
            b4 b4Var = this.k;
            a4 a4Var = (a4) c4Var;
            a4Var.b(b4Var, a4Var.a(b4Var).e);
        }
    }

    public CardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.cardViewStyle);
    }

    public CardView(Context context, AttributeSet attributeSet, int i) throws Resources.NotFoundException {
        int color;
        ColorStateList colorStateListValueOf;
        super(context, attributeSet, i);
        Rect rect = new Rect();
        this.i = rect;
        this.j = new Rect();
        a aVar = new a();
        this.k = aVar;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.CardView, i, R$style.CardView);
        int i2 = R$styleable.CardView_cardBackgroundColor;
        if (typedArrayObtainStyledAttributes.hasValue(i2)) {
            colorStateListValueOf = typedArrayObtainStyledAttributes.getColorStateList(i2);
        } else {
            TypedArray typedArrayObtainStyledAttributes2 = getContext().obtainStyledAttributes(l);
            int color2 = typedArrayObtainStyledAttributes2.getColor(0, 0);
            typedArrayObtainStyledAttributes2.recycle();
            float[] fArr = new float[3];
            Color.colorToHSV(color2, fArr);
            if (fArr[2] > 0.5f) {
                color = getResources().getColor(R$color.cardview_light_background);
            } else {
                color = getResources().getColor(R$color.cardview_dark_background);
            }
            colorStateListValueOf = ColorStateList.valueOf(color);
        }
        float dimension = typedArrayObtainStyledAttributes.getDimension(R$styleable.CardView_cardCornerRadius, 0.0f);
        float dimension2 = typedArrayObtainStyledAttributes.getDimension(R$styleable.CardView_cardElevation, 0.0f);
        float dimension3 = typedArrayObtainStyledAttributes.getDimension(R$styleable.CardView_cardMaxElevation, 0.0f);
        this.e = typedArrayObtainStyledAttributes.getBoolean(R$styleable.CardView_cardUseCompatPadding, false);
        this.f = typedArrayObtainStyledAttributes.getBoolean(R$styleable.CardView_cardPreventCornerOverlap, true);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.CardView_contentPadding, 0);
        rect.left = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.CardView_contentPaddingLeft, dimensionPixelSize);
        rect.top = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.CardView_contentPaddingTop, dimensionPixelSize);
        rect.right = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.CardView_contentPaddingRight, dimensionPixelSize);
        rect.bottom = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.CardView_contentPaddingBottom, dimensionPixelSize);
        dimension3 = dimension2 > dimension3 ? dimension2 : dimension3;
        this.g = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.CardView_android_minWidth, 0);
        this.h = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.CardView_android_minHeight, 0);
        typedArrayObtainStyledAttributes.recycle();
        a4 a4Var = (a4) m;
        d4 d4Var = new d4(colorStateListValueOf, dimension);
        a aVar2 = aVar;
        aVar2.a = d4Var;
        CardView.this.setBackgroundDrawable(d4Var);
        CardView cardView = CardView.this;
        cardView.setClipToOutline(true);
        cardView.setElevation(dimension2);
        a4Var.b(aVar, dimension3);
    }

    public void setCardBackgroundColor(ColorStateList colorStateList) {
        d4 d4Var = (d4) ((a) this.k).a;
        d4Var.b(colorStateList);
        d4Var.invalidateSelf();
    }
}
