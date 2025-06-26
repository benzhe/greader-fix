package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.util.Log;
import android.util.TypedValue;
import com.google.android.material.R$styleable;

/* loaded from: classes.dex */
public class y95 {
    public final ColorStateList a;
    public final ColorStateList b;
    public final String c;
    public final int d;
    public final int e;
    public final float f;
    public final float g;
    public final float h;
    public final boolean i;
    public final float j;
    public float k;
    public final int l;
    public boolean m = false;
    public Typeface n;

    public class a extends b8 {
        public final /* synthetic */ aa5 a;

        public a(aa5 aa5Var) {
            this.a = aa5Var;
        }

        @Override // defpackage.b8
        public void c(int i) {
            y95.this.m = true;
            this.a.a(i);
        }

        @Override // defpackage.b8
        public void d(Typeface typeface) {
            y95 y95Var = y95.this;
            y95Var.n = Typeface.create(typeface, y95Var.d);
            y95 y95Var2 = y95.this;
            y95Var2.m = true;
            this.a.b(y95Var2.n, false);
        }
    }

    public y95(Context context, int i) throws Resources.NotFoundException {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i, R$styleable.TextAppearance);
        this.k = typedArrayObtainStyledAttributes.getDimension(R$styleable.TextAppearance_android_textSize, 0.0f);
        this.a = c50.a0(context, typedArrayObtainStyledAttributes, R$styleable.TextAppearance_android_textColor);
        c50.a0(context, typedArrayObtainStyledAttributes, R$styleable.TextAppearance_android_textColorHint);
        c50.a0(context, typedArrayObtainStyledAttributes, R$styleable.TextAppearance_android_textColorLink);
        this.d = typedArrayObtainStyledAttributes.getInt(R$styleable.TextAppearance_android_textStyle, 0);
        this.e = typedArrayObtainStyledAttributes.getInt(R$styleable.TextAppearance_android_typeface, 1);
        int i2 = R$styleable.TextAppearance_fontFamily;
        i2 = typedArrayObtainStyledAttributes.hasValue(i2) ? i2 : R$styleable.TextAppearance_android_fontFamily;
        this.l = typedArrayObtainStyledAttributes.getResourceId(i2, 0);
        this.c = typedArrayObtainStyledAttributes.getString(i2);
        typedArrayObtainStyledAttributes.getBoolean(R$styleable.TextAppearance_textAllCaps, false);
        this.b = c50.a0(context, typedArrayObtainStyledAttributes, R$styleable.TextAppearance_android_shadowColor);
        this.f = typedArrayObtainStyledAttributes.getFloat(R$styleable.TextAppearance_android_shadowDx, 0.0f);
        this.g = typedArrayObtainStyledAttributes.getFloat(R$styleable.TextAppearance_android_shadowDy, 0.0f);
        this.h = typedArrayObtainStyledAttributes.getFloat(R$styleable.TextAppearance_android_shadowRadius, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(i, R$styleable.MaterialTextAppearance);
        int i3 = R$styleable.MaterialTextAppearance_android_letterSpacing;
        this.i = typedArrayObtainStyledAttributes2.hasValue(i3);
        this.j = typedArrayObtainStyledAttributes2.getFloat(i3, 0.0f);
        typedArrayObtainStyledAttributes2.recycle();
    }

    public final void a() {
        String str;
        if (this.n == null && (str = this.c) != null) {
            this.n = Typeface.create(str, this.d);
        }
        if (this.n == null) {
            int i = this.e;
            if (i == 1) {
                this.n = Typeface.SANS_SERIF;
            } else if (i == 2) {
                this.n = Typeface.SERIF;
            } else if (i != 3) {
                this.n = Typeface.DEFAULT;
            } else {
                this.n = Typeface.MONOSPACE;
            }
            this.n = Typeface.create(this.n, this.d);
        }
    }

    public void b(Context context, aa5 aa5Var) {
        a();
        int i = this.l;
        if (i == 0) {
            this.m = true;
        }
        if (this.m) {
            aa5Var.b(this.n, true);
            return;
        }
        try {
            a aVar = new a(aa5Var);
            if (context.isRestricted()) {
                aVar.a(-4, null);
            } else {
                c8.i(context, i, new TypedValue(), 0, aVar, null, false);
            }
        } catch (Resources.NotFoundException unused) {
            this.m = true;
            aa5Var.a(1);
        } catch (Exception e) {
            StringBuilder sbZ = jo.z("Error loading font ");
            sbZ.append(this.c);
            Log.d("TextAppearance", sbZ.toString(), e);
            this.m = true;
            aa5Var.a(-3);
        }
    }

    public void c(Context context, TextPaint textPaint, aa5 aa5Var) {
        a();
        d(textPaint, this.n);
        b(context, new z95(this, textPaint, aa5Var));
        ColorStateList colorStateList = this.a;
        textPaint.setColor(colorStateList != null ? colorStateList.getColorForState(textPaint.drawableState, colorStateList.getDefaultColor()) : -16777216);
        float f = this.h;
        float f2 = this.f;
        float f3 = this.g;
        ColorStateList colorStateList2 = this.b;
        textPaint.setShadowLayer(f, f2, f3, colorStateList2 != null ? colorStateList2.getColorForState(textPaint.drawableState, colorStateList2.getDefaultColor()) : 0);
    }

    public void d(TextPaint textPaint, Typeface typeface) {
        textPaint.setTypeface(typeface);
        int i = (~typeface.getStyle()) & this.d;
        textPaint.setFakeBoldText((i & 1) != 0);
        textPaint.setTextSkewX((i & 2) != 0 ? -0.25f : 0.0f);
        textPaint.setTextSize(this.k);
        if (this.i) {
            textPaint.setLetterSpacing(this.j);
        }
    }
}
