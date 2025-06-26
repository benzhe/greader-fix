package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;

/* loaded from: classes.dex */
public class c3 {
    public final Context a;
    public final TypedArray b;
    public TypedValue c;

    public c3(Context context, TypedArray typedArray) {
        this.a = context;
        this.b = typedArray;
    }

    public static c3 q(Context context, AttributeSet attributeSet, int[] iArr) {
        return new c3(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    public static c3 r(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2) {
        return new c3(context, context.obtainStyledAttributes(attributeSet, iArr, i, i2));
    }

    public boolean a(int i, boolean z) {
        return this.b.getBoolean(i, z);
    }

    public int b(int i, int i2) {
        return this.b.getColor(i, i2);
    }

    public ColorStateList c(int i) {
        int resourceId;
        ColorStateList colorStateListA;
        return (!this.b.hasValue(i) || (resourceId = this.b.getResourceId(i, 0)) == 0 || (colorStateListA = p0.a(this.a, resourceId)) == null) ? this.b.getColorStateList(i) : colorStateListA;
    }

    public float d(int i, float f) {
        return this.b.getDimension(i, f);
    }

    public int e(int i, int i2) {
        return this.b.getDimensionPixelOffset(i, i2);
    }

    public int f(int i, int i2) {
        return this.b.getDimensionPixelSize(i, i2);
    }

    public Drawable g(int i) {
        int resourceId;
        return (!this.b.hasValue(i) || (resourceId = this.b.getResourceId(i, 0)) == 0) ? this.b.getDrawable(i) : p0.b(this.a, resourceId);
    }

    public Drawable h(int i) {
        int resourceId;
        Drawable drawableG;
        if (!this.b.hasValue(i) || (resourceId = this.b.getResourceId(i, 0)) == 0) {
            return null;
        }
        b2 b2VarA = b2.a();
        Context context = this.a;
        synchronized (b2VarA) {
            drawableG = b2VarA.a.g(context, resourceId, true);
        }
        return drawableG;
    }

    public Typeface i(int i, int i2, b8 b8Var) {
        int resourceId = this.b.getResourceId(i, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.c == null) {
            this.c = new TypedValue();
        }
        Context context = this.a;
        TypedValue typedValue = this.c;
        if (context.isRestricted()) {
            return null;
        }
        return c8.i(context, resourceId, typedValue, i2, b8Var, null, true);
    }

    public int j(int i, int i2) {
        return this.b.getInt(i, i2);
    }

    public int k(int i, int i2) {
        return this.b.getInteger(i, i2);
    }

    public int l(int i, int i2) {
        return this.b.getLayoutDimension(i, i2);
    }

    public int m(int i, int i2) {
        return this.b.getResourceId(i, i2);
    }

    public String n(int i) {
        return this.b.getString(i);
    }

    public CharSequence o(int i) {
        return this.b.getText(i);
    }

    public boolean p(int i) {
        return this.b.hasValue(i);
    }
}
