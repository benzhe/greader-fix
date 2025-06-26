package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import com.google.android.material.R$styleable;
import java.util.Objects;

/* loaded from: classes.dex */
public class pa5 {
    public static final ga5 m = new na5(0.5f);
    public ha5 a;
    public ha5 b;
    public ha5 c;
    public ha5 d;
    public ga5 e;
    public ga5 f;
    public ga5 g;
    public ga5 h;
    public ja5 i;
    public ja5 j;
    public ja5 k;
    public ja5 l;

    public pa5(b bVar, a aVar) {
        this.a = bVar.a;
        this.b = bVar.b;
        this.c = bVar.c;
        this.d = bVar.d;
        this.e = bVar.e;
        this.f = bVar.f;
        this.g = bVar.g;
        this.h = bVar.h;
        this.i = bVar.i;
        this.j = bVar.j;
        this.k = bVar.k;
        this.l = bVar.l;
    }

    public static b a(Context context, int i, int i2, ga5 ga5Var) throws Resources.NotFoundException {
        if (i2 != 0) {
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, i);
            i = i2;
            context = contextThemeWrapper;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i, R$styleable.ShapeAppearance);
        try {
            int i3 = typedArrayObtainStyledAttributes.getInt(R$styleable.ShapeAppearance_cornerFamily, 0);
            int i4 = typedArrayObtainStyledAttributes.getInt(R$styleable.ShapeAppearance_cornerFamilyTopLeft, i3);
            int i5 = typedArrayObtainStyledAttributes.getInt(R$styleable.ShapeAppearance_cornerFamilyTopRight, i3);
            int i6 = typedArrayObtainStyledAttributes.getInt(R$styleable.ShapeAppearance_cornerFamilyBottomRight, i3);
            int i7 = typedArrayObtainStyledAttributes.getInt(R$styleable.ShapeAppearance_cornerFamilyBottomLeft, i3);
            ga5 ga5VarC = c(typedArrayObtainStyledAttributes, R$styleable.ShapeAppearance_cornerSize, ga5Var);
            ga5 ga5VarC2 = c(typedArrayObtainStyledAttributes, R$styleable.ShapeAppearance_cornerSizeTopLeft, ga5VarC);
            ga5 ga5VarC3 = c(typedArrayObtainStyledAttributes, R$styleable.ShapeAppearance_cornerSizeTopRight, ga5VarC);
            ga5 ga5VarC4 = c(typedArrayObtainStyledAttributes, R$styleable.ShapeAppearance_cornerSizeBottomRight, ga5VarC);
            ga5 ga5VarC5 = c(typedArrayObtainStyledAttributes, R$styleable.ShapeAppearance_cornerSizeBottomLeft, ga5VarC);
            b bVar = new b();
            ha5 ha5VarJ = c50.J(i4);
            bVar.a = ha5VarJ;
            b.b(ha5VarJ);
            bVar.e = ga5VarC2;
            ha5 ha5VarJ2 = c50.J(i5);
            bVar.b = ha5VarJ2;
            b.b(ha5VarJ2);
            bVar.f = ga5VarC3;
            ha5 ha5VarJ3 = c50.J(i6);
            bVar.c = ha5VarJ3;
            b.b(ha5VarJ3);
            bVar.g = ga5VarC4;
            ha5 ha5VarJ4 = c50.J(i7);
            bVar.d = ha5VarJ4;
            b.b(ha5VarJ4);
            bVar.h = ga5VarC5;
            return bVar;
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static b b(Context context, AttributeSet attributeSet, int i, int i2, ga5 ga5Var) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.MaterialShape, i, i2);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialShape_shapeAppearance, 0);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialShape_shapeAppearanceOverlay, 0);
        typedArrayObtainStyledAttributes.recycle();
        return a(context, resourceId, resourceId2, ga5Var);
    }

    public static ga5 c(TypedArray typedArray, int i, ga5 ga5Var) {
        TypedValue typedValuePeekValue = typedArray.peekValue(i);
        if (typedValuePeekValue == null) {
            return ga5Var;
        }
        int i2 = typedValuePeekValue.type;
        return i2 == 5 ? new ea5(TypedValue.complexToDimensionPixelSize(typedValuePeekValue.data, typedArray.getResources().getDisplayMetrics())) : i2 == 6 ? new na5(typedValuePeekValue.getFraction(1.0f, 1.0f)) : ga5Var;
    }

    public boolean d(RectF rectF) {
        boolean z = this.l.getClass().equals(ja5.class) && this.j.getClass().equals(ja5.class) && this.i.getClass().equals(ja5.class) && this.k.getClass().equals(ja5.class);
        float fA = this.e.a(rectF);
        return z && ((this.f.a(rectF) > fA ? 1 : (this.f.a(rectF) == fA ? 0 : -1)) == 0 && (this.h.a(rectF) > fA ? 1 : (this.h.a(rectF) == fA ? 0 : -1)) == 0 && (this.g.a(rectF) > fA ? 1 : (this.g.a(rectF) == fA ? 0 : -1)) == 0) && ((this.b instanceof oa5) && (this.a instanceof oa5) && (this.c instanceof oa5) && (this.d instanceof oa5));
    }

    public pa5 e(float f) {
        b bVar = new b(this);
        bVar.c(f);
        return bVar.a();
    }

    public static final class b {
        public ha5 a;
        public ha5 b;
        public ha5 c;
        public ha5 d;
        public ga5 e;
        public ga5 f;
        public ga5 g;
        public ga5 h;
        public ja5 i;
        public ja5 j;
        public ja5 k;
        public ja5 l;

        public b() {
            this.a = new oa5();
            this.b = new oa5();
            this.c = new oa5();
            this.d = new oa5();
            this.e = new ea5(0.0f);
            this.f = new ea5(0.0f);
            this.g = new ea5(0.0f);
            this.h = new ea5(0.0f);
            this.i = new ja5();
            this.j = new ja5();
            this.k = new ja5();
            this.l = new ja5();
        }

        public static float b(ha5 ha5Var) {
            if (ha5Var instanceof oa5) {
                Objects.requireNonNull((oa5) ha5Var);
                return -1.0f;
            }
            if (ha5Var instanceof ia5) {
                Objects.requireNonNull((ia5) ha5Var);
            }
            return -1.0f;
        }

        public pa5 a() {
            return new pa5(this, null);
        }

        public b c(float f) {
            this.e = new ea5(f);
            this.f = new ea5(f);
            this.g = new ea5(f);
            this.h = new ea5(f);
            return this;
        }

        public b d(float f) {
            this.h = new ea5(f);
            return this;
        }

        public b e(float f) {
            this.g = new ea5(f);
            return this;
        }

        public b f(float f) {
            this.e = new ea5(f);
            return this;
        }

        public b g(float f) {
            this.f = new ea5(f);
            return this;
        }

        public b(pa5 pa5Var) {
            this.a = new oa5();
            this.b = new oa5();
            this.c = new oa5();
            this.d = new oa5();
            this.e = new ea5(0.0f);
            this.f = new ea5(0.0f);
            this.g = new ea5(0.0f);
            this.h = new ea5(0.0f);
            this.i = new ja5();
            this.j = new ja5();
            this.k = new ja5();
            this.l = new ja5();
            this.a = pa5Var.a;
            this.b = pa5Var.b;
            this.c = pa5Var.c;
            this.d = pa5Var.d;
            this.e = pa5Var.e;
            this.f = pa5Var.f;
            this.g = pa5Var.g;
            this.h = pa5Var.h;
            this.i = pa5Var.i;
            this.j = pa5Var.j;
            this.k = pa5Var.k;
            this.l = pa5Var.l;
        }
    }

    public pa5() {
        this.a = new oa5();
        this.b = new oa5();
        this.c = new oa5();
        this.d = new oa5();
        this.e = new ea5(0.0f);
        this.f = new ea5(0.0f);
        this.g = new ea5(0.0f);
        this.h = new ea5(0.0f);
        this.i = new ja5();
        this.j = new ja5();
        this.k = new ja5();
        this.l = new ja5();
    }
}
