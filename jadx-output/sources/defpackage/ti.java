package defpackage;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import defpackage.d0;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Objects;
import org.apache.commons.codec.binary.Base64;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class ti extends si {
    public static final PorterDuff.Mode n = PorterDuff.Mode.SRC_IN;
    public h f;
    public PorterDuffColorFilter g;
    public ColorFilter h;
    public boolean i;
    public boolean j;
    public final float[] k;
    public final Matrix l;
    public final Rect m;

    public static class b extends f {
        public b() {
        }

        @Override // ti.f
        public boolean c() {
            return true;
        }

        public b(b bVar) {
            super(bVar);
        }
    }

    public static abstract class e {
        public e() {
        }

        public boolean a() {
            return false;
        }

        public boolean b(int[] iArr) {
            return false;
        }

        public e(a aVar) {
        }
    }

    public static class h extends Drawable.ConstantState {
        public int a;
        public g b;
        public ColorStateList c;
        public PorterDuff.Mode d;
        public boolean e;
        public Bitmap f;
        public ColorStateList g;
        public PorterDuff.Mode h;
        public int i;
        public boolean j;
        public boolean k;
        public Paint l;

        public h(h hVar) {
            this.c = null;
            this.d = ti.n;
            if (hVar != null) {
                this.a = hVar.a;
                g gVar = new g(hVar.b);
                this.b = gVar;
                if (hVar.b.e != null) {
                    gVar.e = new Paint(hVar.b.e);
                }
                if (hVar.b.d != null) {
                    this.b.d = new Paint(hVar.b.d);
                }
                this.c = hVar.c;
                this.d = hVar.d;
                this.e = hVar.e;
            }
        }

        public boolean a() {
            g gVar = this.b;
            if (gVar.o == null) {
                gVar.o = Boolean.valueOf(gVar.h.a());
            }
            return gVar.o.booleanValue();
        }

        public void b(int i, int i2) {
            this.f.eraseColor(0);
            Canvas canvas = new Canvas(this.f);
            g gVar = this.b;
            gVar.a(gVar.h, g.q, canvas, i, i2, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.a;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new ti(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new ti(this);
        }

        public h() {
            this.c = null;
            this.d = ti.n;
            this.b = new g();
        }
    }

    public ti() {
        this.j = true;
        this.k = new float[9];
        this.l = new Matrix();
        this.m = new Rect();
        this.f = new h();
    }

    public static ti a(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        ti tiVar = new ti();
        tiVar.inflate(resources, xmlPullParser, attributeSet, theme);
        return tiVar;
    }

    public PorterDuffColorFilter b(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        Drawable drawable = this.e;
        if (drawable == null) {
            return false;
        }
        drawable.canApplyTheme();
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00d5  */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void draw(android.graphics.Canvas r11) {
        /*
            Method dump skipped, instructions count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ti.draw(android.graphics.Canvas):void");
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        Drawable drawable = this.e;
        return drawable != null ? drawable.getAlpha() : this.f.b.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        Drawable drawable = this.e;
        return drawable != null ? drawable.getChangingConfigurations() : super.getChangingConfigurations() | this.f.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        Drawable drawable = this.e;
        return drawable != null ? drawable.getColorFilter() : this.h;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (this.e != null && Build.VERSION.SDK_INT >= 24) {
            return new i(this.e.getConstantState());
        }
        this.f.a = getChangingConfigurations();
        return this.f;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.e;
        return drawable != null ? drawable.getIntrinsicHeight() : (int) this.f.b.j;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.e;
        return drawable != null ? drawable.getIntrinsicWidth() : (int) this.f.b.i;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.e;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        Drawable drawable = this.e;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        Drawable drawable = this.e;
        if (drawable != null) {
            drawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        Drawable drawable = this.e;
        return drawable != null ? drawable.isAutoMirrored() : this.f.e;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        h hVar;
        ColorStateList colorStateList;
        Drawable drawable = this.e;
        return drawable != null ? drawable.isStateful() : super.isStateful() || ((hVar = this.f) != null && (hVar.a() || ((colorStateList = this.f.c) != null && colorStateList.isStateful())));
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        Drawable drawable = this.e;
        if (drawable != null) {
            drawable.mutate();
            return this;
        }
        if (!this.i && super.mutate() == this) {
            this.f = new h(this.f);
            this.i = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.e;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        Drawable drawable = this.e;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        boolean z = false;
        h hVar = this.f;
        ColorStateList colorStateList = hVar.c;
        if (colorStateList != null && (mode = hVar.d) != null) {
            this.g = b(colorStateList, mode);
            invalidateSelf();
            z = true;
        }
        if (hVar.a()) {
            boolean zB = hVar.b.h.b(iArr);
            hVar.k |= zB;
            if (zB) {
                invalidateSelf();
                return true;
            }
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(Runnable runnable, long j) {
        Drawable drawable = this.e;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j);
        } else {
            super.scheduleSelf(runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        Drawable drawable = this.e;
        if (drawable != null) {
            drawable.setAlpha(i2);
        } else if (this.f.b.getRootAlpha() != i2) {
            this.f.b.setRootAlpha(i2);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        Drawable drawable = this.e;
        if (drawable != null) {
            drawable.setAutoMirrored(z);
        } else {
            this.f.e = z;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.e;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.h = colorFilter;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTint(int i2) {
        Drawable drawable = this.e;
        if (drawable != null) {
            d0.h.d0(drawable, i2);
        } else {
            setTintList(ColorStateList.valueOf(i2));
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.e;
        if (drawable != null) {
            d0.h.e0(drawable, colorStateList);
            return;
        }
        h hVar = this.f;
        if (hVar.c != colorStateList) {
            hVar.c = colorStateList;
            this.g = b(colorStateList, hVar.d);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.e;
        if (drawable != null) {
            d0.h.f0(drawable, mode);
            return;
        }
        h hVar = this.f;
        if (hVar.d != mode) {
            hVar.d = mode;
            this.g = b(hVar.c, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.e;
        return drawable != null ? drawable.setVisible(z, z2) : super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public void unscheduleSelf(Runnable runnable) {
        Drawable drawable = this.e;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }

    public static class i extends Drawable.ConstantState {
        public final Drawable.ConstantState a;

        public i(Drawable.ConstantState constantState) {
            this.a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            ti tiVar = new ti();
            tiVar.e = (VectorDrawable) this.a.newDrawable();
            return tiVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            ti tiVar = new ti();
            tiVar.e = (VectorDrawable) this.a.newDrawable(resources);
            return tiVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            ti tiVar = new ti();
            tiVar.e = (VectorDrawable) this.a.newDrawable(resources, theme);
            return tiVar;
        }
    }

    public static abstract class f extends e {
        public f8[] a;
        public String b;
        public int c;
        public int d;

        public f() {
            super(null);
            this.a = null;
            this.c = 0;
        }

        public boolean c() {
            return false;
        }

        public f8[] getPathData() {
            return this.a;
        }

        public String getPathName() {
            return this.b;
        }

        public void setPathData(f8[] f8VarArr) {
            if (!d0.h.f(this.a, f8VarArr)) {
                this.a = d0.h.x(f8VarArr);
                return;
            }
            f8[] f8VarArr2 = this.a;
            for (int i = 0; i < f8VarArr.length; i++) {
                f8VarArr2[i].a = f8VarArr[i].a;
                for (int i2 = 0; i2 < f8VarArr[i].b.length; i2++) {
                    f8VarArr2[i].b[i2] = f8VarArr[i].b[i2];
                }
            }
        }

        public f(f fVar) {
            super(null);
            this.a = null;
            this.c = 0;
            this.b = fVar.b;
            this.d = fVar.d;
            this.a = d0.h.x(fVar.a);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        ColorStateList colorStateListT;
        g gVar;
        int i2;
        ArrayDeque arrayDeque;
        g gVar2;
        d dVar;
        c cVar;
        TypedArray typedArray;
        TypedArray typedArray2;
        Drawable drawable = this.e;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet, theme);
            return;
        }
        h hVar = this.f;
        hVar.b = new g();
        TypedArray typedArrayJ = c8.j(resources, theme, attributeSet, ni.a);
        h hVar2 = this.f;
        g gVar3 = hVar2.b;
        int i3 = !c8.h(xmlPullParser, "tintMode") ? -1 : typedArrayJ.getInt(6, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        int i4 = 3;
        if (i3 == 3) {
            mode = PorterDuff.Mode.SRC_OVER;
        } else if (i3 != 5) {
            if (i3 != 9) {
                switch (i3) {
                    case 14:
                        mode = PorterDuff.Mode.MULTIPLY;
                        break;
                    case 15:
                        mode = PorterDuff.Mode.SCREEN;
                        break;
                    case 16:
                        mode = PorterDuff.Mode.ADD;
                        break;
                }
            } else {
                mode = PorterDuff.Mode.SRC_ATOP;
            }
        }
        hVar2.d = mode;
        int i5 = 1;
        if (c8.h(xmlPullParser, "tint")) {
            TypedValue typedValue = new TypedValue();
            typedArrayJ.getValue(1, typedValue);
            int i6 = typedValue.type;
            if (i6 == 2) {
                throw new UnsupportedOperationException("Failed to resolve attribute at index 1: " + typedValue);
            }
            if (i6 >= 28 && i6 <= 31) {
                colorStateListT = ColorStateList.valueOf(typedValue.data);
            } else {
                Resources resources2 = typedArrayJ.getResources();
                try {
                    colorStateListT = d0.h.t(resources2, resources2.getXml(typedArrayJ.getResourceId(1, 0)), theme);
                } catch (Exception e2) {
                    Log.e("CSLCompat", "Failed to inflate ColorStateList.", e2);
                }
            }
        } else {
            colorStateListT = null;
        }
        if (colorStateListT != null) {
            hVar2.c = colorStateListT;
        }
        boolean z = hVar2.e;
        if (c8.h(xmlPullParser, "autoMirrored")) {
            z = typedArrayJ.getBoolean(5, z);
        }
        hVar2.e = z;
        float f2 = gVar3.k;
        if (c8.h(xmlPullParser, "viewportWidth")) {
            f2 = typedArrayJ.getFloat(7, f2);
        }
        gVar3.k = f2;
        float f3 = gVar3.l;
        if (c8.h(xmlPullParser, "viewportHeight")) {
            f3 = typedArrayJ.getFloat(8, f3);
        }
        gVar3.l = f3;
        if (gVar3.k <= 0.0f) {
            throw new XmlPullParserException(typedArrayJ.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        }
        if (f3 > 0.0f) {
            gVar3.i = typedArrayJ.getDimension(3, gVar3.i);
            float dimension = typedArrayJ.getDimension(2, gVar3.j);
            gVar3.j = dimension;
            if (gVar3.i <= 0.0f) {
                throw new XmlPullParserException(typedArrayJ.getPositionDescription() + "<vector> tag requires width > 0");
            }
            if (dimension > 0.0f) {
                float alpha = gVar3.getAlpha();
                if (c8.h(xmlPullParser, "alpha")) {
                    alpha = typedArrayJ.getFloat(4, alpha);
                }
                gVar3.setAlpha(alpha);
                String string = typedArrayJ.getString(0);
                if (string != null) {
                    gVar3.n = string;
                    gVar3.p.put(string, gVar3);
                }
                typedArrayJ.recycle();
                hVar.a = getChangingConfigurations();
                hVar.k = true;
                h hVar3 = this.f;
                g gVar4 = hVar3.b;
                ArrayDeque arrayDeque2 = new ArrayDeque();
                arrayDeque2.push(gVar4.h);
                int eventType = xmlPullParser.getEventType();
                boolean z2 = true;
                for (int depth = xmlPullParser.getDepth() + 1; eventType != i5 && (xmlPullParser.getDepth() >= depth || eventType != i4); depth = i2) {
                    if (eventType == 2) {
                        String name = xmlPullParser.getName();
                        d dVar2 = (d) arrayDeque2.peek();
                        if ("path".equals(name)) {
                            c cVar2 = new c();
                            TypedArray typedArrayJ2 = c8.j(resources, theme, attributeSet, ni.c);
                            cVar2.e = null;
                            if (c8.h(xmlPullParser, "pathData")) {
                                String string2 = typedArrayJ2.getString(0);
                                if (string2 != null) {
                                    cVar2.b = string2;
                                }
                                String string3 = typedArrayJ2.getString(2);
                                if (string3 != null) {
                                    cVar2.a = d0.h.v(string3);
                                }
                                arrayDeque = arrayDeque2;
                                gVar2 = gVar4;
                                i2 = depth;
                                dVar = dVar2;
                                cVar = cVar2;
                                cVar.h = c8.c(typedArrayJ2, xmlPullParser, theme, "fillColor", 1, 0);
                                float f4 = cVar.j;
                                if (c8.h(xmlPullParser, "fillAlpha")) {
                                    typedArray = typedArrayJ2;
                                    f4 = typedArray.getFloat(12, f4);
                                } else {
                                    typedArray = typedArrayJ2;
                                }
                                cVar.j = f4;
                                int i7 = !c8.h(xmlPullParser, "strokeLineCap") ? -1 : typedArray.getInt(8, -1);
                                Paint.Cap cap = cVar.n;
                                if (i7 == 0) {
                                    cap = Paint.Cap.BUTT;
                                } else if (i7 == 1) {
                                    cap = Paint.Cap.ROUND;
                                } else if (i7 == 2) {
                                    cap = Paint.Cap.SQUARE;
                                }
                                cVar.n = cap;
                                int i8 = !c8.h(xmlPullParser, "strokeLineJoin") ? -1 : typedArray.getInt(9, -1);
                                Paint.Join join = cVar.o;
                                if (i8 == 0) {
                                    join = Paint.Join.MITER;
                                } else if (i8 == 1) {
                                    join = Paint.Join.ROUND;
                                } else if (i8 == 2) {
                                    join = Paint.Join.BEVEL;
                                }
                                cVar.o = join;
                                float f5 = cVar.p;
                                if (c8.h(xmlPullParser, "strokeMiterLimit")) {
                                    f5 = typedArray.getFloat(10, f5);
                                }
                                cVar.p = f5;
                                typedArray2 = typedArray;
                                cVar.f = c8.c(typedArray, xmlPullParser, theme, "strokeColor", 3, 0);
                                float f6 = cVar.i;
                                if (c8.h(xmlPullParser, "strokeAlpha")) {
                                    f6 = typedArray2.getFloat(11, f6);
                                }
                                cVar.i = f6;
                                float f7 = cVar.g;
                                if (c8.h(xmlPullParser, "strokeWidth")) {
                                    f7 = typedArray2.getFloat(4, f7);
                                }
                                cVar.g = f7;
                                float f8 = cVar.l;
                                if (c8.h(xmlPullParser, "trimPathEnd")) {
                                    f8 = typedArray2.getFloat(6, f8);
                                }
                                cVar.l = f8;
                                float f9 = cVar.m;
                                if (c8.h(xmlPullParser, "trimPathOffset")) {
                                    f9 = typedArray2.getFloat(7, f9);
                                }
                                cVar.m = f9;
                                float f10 = cVar.k;
                                if (c8.h(xmlPullParser, "trimPathStart")) {
                                    f10 = typedArray2.getFloat(5, f10);
                                }
                                cVar.k = f10;
                                int i9 = cVar.c;
                                if (c8.h(xmlPullParser, "fillType")) {
                                    i9 = typedArray2.getInt(13, i9);
                                }
                                cVar.c = i9;
                            } else {
                                arrayDeque = arrayDeque2;
                                gVar2 = gVar4;
                                typedArray2 = typedArrayJ2;
                                cVar = cVar2;
                                i2 = depth;
                                dVar = dVar2;
                            }
                            typedArray2.recycle();
                            dVar.b.add(cVar);
                            if (cVar.getPathName() != null) {
                                gVar = gVar2;
                                gVar.p.put(cVar.getPathName(), cVar);
                            } else {
                                gVar = gVar2;
                            }
                            hVar3.a |= cVar.d;
                            arrayDeque2 = arrayDeque;
                            z2 = false;
                        } else {
                            ArrayDeque arrayDeque3 = arrayDeque2;
                            gVar = gVar4;
                            i2 = depth;
                            if ("clip-path".equals(name)) {
                                b bVar = new b();
                                if (c8.h(xmlPullParser, "pathData")) {
                                    TypedArray typedArrayJ3 = c8.j(resources, theme, attributeSet, ni.d);
                                    String string4 = typedArrayJ3.getString(0);
                                    if (string4 != null) {
                                        bVar.b = string4;
                                    }
                                    String string5 = typedArrayJ3.getString(1);
                                    if (string5 != null) {
                                        bVar.a = d0.h.v(string5);
                                    }
                                    bVar.c = !c8.h(xmlPullParser, "fillType") ? 0 : typedArrayJ3.getInt(2, 0);
                                    typedArrayJ3.recycle();
                                }
                                dVar2.b.add(bVar);
                                if (bVar.getPathName() != null) {
                                    gVar.p.put(bVar.getPathName(), bVar);
                                }
                                hVar3.a = bVar.d | hVar3.a;
                            } else if ("group".equals(name)) {
                                d dVar3 = new d();
                                TypedArray typedArrayJ4 = c8.j(resources, theme, attributeSet, ni.b);
                                dVar3.l = null;
                                float f11 = dVar3.c;
                                if (c8.h(xmlPullParser, "rotation")) {
                                    f11 = typedArrayJ4.getFloat(5, f11);
                                }
                                dVar3.c = f11;
                                dVar3.d = typedArrayJ4.getFloat(1, dVar3.d);
                                dVar3.e = typedArrayJ4.getFloat(2, dVar3.e);
                                float f12 = dVar3.f;
                                if (c8.h(xmlPullParser, "scaleX")) {
                                    f12 = typedArrayJ4.getFloat(3, f12);
                                }
                                dVar3.f = f12;
                                float f13 = dVar3.g;
                                if (c8.h(xmlPullParser, "scaleY")) {
                                    f13 = typedArrayJ4.getFloat(4, f13);
                                }
                                dVar3.g = f13;
                                float f14 = dVar3.h;
                                if (c8.h(xmlPullParser, "translateX")) {
                                    f14 = typedArrayJ4.getFloat(6, f14);
                                }
                                dVar3.h = f14;
                                float f15 = dVar3.i;
                                if (c8.h(xmlPullParser, "translateY")) {
                                    f15 = typedArrayJ4.getFloat(7, f15);
                                }
                                dVar3.i = f15;
                                String string6 = typedArrayJ4.getString(0);
                                if (string6 != null) {
                                    dVar3.m = string6;
                                }
                                dVar3.c();
                                typedArrayJ4.recycle();
                                dVar2.b.add(dVar3);
                                arrayDeque2 = arrayDeque3;
                                arrayDeque2.push(dVar3);
                                if (dVar3.getGroupName() != null) {
                                    gVar.p.put(dVar3.getGroupName(), dVar3);
                                }
                                hVar3.a = dVar3.k | hVar3.a;
                            }
                            arrayDeque2 = arrayDeque3;
                        }
                    } else {
                        gVar = gVar4;
                        i2 = depth;
                        if (eventType == 3 && "group".equals(xmlPullParser.getName())) {
                            arrayDeque2.pop();
                        }
                    }
                    eventType = xmlPullParser.next();
                    i4 = 3;
                    i5 = 1;
                    gVar4 = gVar;
                }
                if (!z2) {
                    this.g = b(hVar.c, hVar.d);
                    return;
                }
                throw new XmlPullParserException("no path defined");
            }
            throw new XmlPullParserException(typedArrayJ.getPositionDescription() + "<vector> tag requires height > 0");
        }
        throw new XmlPullParserException(typedArrayJ.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
    }

    public ti(h hVar) {
        this.j = true;
        this.k = new float[9];
        this.l = new Matrix();
        this.m = new Rect();
        this.f = hVar;
        this.g = b(hVar.c, hVar.d);
    }

    public static class c extends f {
        public int[] e;
        public v7 f;
        public float g;
        public v7 h;
        public float i;
        public float j;
        public float k;
        public float l;
        public float m;
        public Paint.Cap n;
        public Paint.Join o;
        public float p;

        public c() {
            this.g = 0.0f;
            this.i = 1.0f;
            this.j = 1.0f;
            this.k = 0.0f;
            this.l = 1.0f;
            this.m = 0.0f;
            this.n = Paint.Cap.BUTT;
            this.o = Paint.Join.MITER;
            this.p = 4.0f;
        }

        @Override // ti.e
        public boolean a() {
            return this.h.c() || this.f.c();
        }

        @Override // ti.e
        public boolean b(int[] iArr) {
            return this.f.d(iArr) | this.h.d(iArr);
        }

        public float getFillAlpha() {
            return this.j;
        }

        public int getFillColor() {
            return this.h.c;
        }

        public float getStrokeAlpha() {
            return this.i;
        }

        public int getStrokeColor() {
            return this.f.c;
        }

        public float getStrokeWidth() {
            return this.g;
        }

        public float getTrimPathEnd() {
            return this.l;
        }

        public float getTrimPathOffset() {
            return this.m;
        }

        public float getTrimPathStart() {
            return this.k;
        }

        public void setFillAlpha(float f) {
            this.j = f;
        }

        public void setFillColor(int i) {
            this.h.c = i;
        }

        public void setStrokeAlpha(float f) {
            this.i = f;
        }

        public void setStrokeColor(int i) {
            this.f.c = i;
        }

        public void setStrokeWidth(float f) {
            this.g = f;
        }

        public void setTrimPathEnd(float f) {
            this.l = f;
        }

        public void setTrimPathOffset(float f) {
            this.m = f;
        }

        public void setTrimPathStart(float f) {
            this.k = f;
        }

        public c(c cVar) {
            super(cVar);
            this.g = 0.0f;
            this.i = 1.0f;
            this.j = 1.0f;
            this.k = 0.0f;
            this.l = 1.0f;
            this.m = 0.0f;
            this.n = Paint.Cap.BUTT;
            this.o = Paint.Join.MITER;
            this.p = 4.0f;
            this.e = cVar.e;
            this.f = cVar.f;
            this.g = cVar.g;
            this.i = cVar.i;
            this.h = cVar.h;
            this.c = cVar.c;
            this.j = cVar.j;
            this.k = cVar.k;
            this.l = cVar.l;
            this.m = cVar.m;
            this.n = cVar.n;
            this.o = cVar.o;
            this.p = cVar.p;
        }
    }

    public static class g {
        public static final Matrix q = new Matrix();
        public final Path a;
        public final Path b;
        public final Matrix c;
        public Paint d;
        public Paint e;
        public PathMeasure f;
        public int g;
        public final d h;
        public float i;
        public float j;
        public float k;
        public float l;
        public int m;
        public String n;
        public Boolean o;
        public final f4<String, Object> p;

        public g() {
            this.c = new Matrix();
            this.i = 0.0f;
            this.j = 0.0f;
            this.k = 0.0f;
            this.l = 0.0f;
            this.m = Base64.BASELENGTH;
            this.n = null;
            this.o = null;
            this.p = new f4<>();
            this.h = new d();
            this.a = new Path();
            this.b = new Path();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r11v0 */
        /* JADX WARN: Type inference failed for: r11v1, types: [boolean] */
        /* JADX WARN: Type inference failed for: r11v18 */
        public final void a(d dVar, Matrix matrix, Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            g gVar;
            g gVar2 = this;
            dVar.a.set(matrix);
            dVar.a.preConcat(dVar.j);
            canvas.save();
            ?? r11 = 0;
            int i3 = 0;
            while (i3 < dVar.b.size()) {
                e eVar = dVar.b.get(i3);
                if (eVar instanceof d) {
                    a((d) eVar, dVar.a, canvas, i, i2, colorFilter);
                } else {
                    if (eVar instanceof f) {
                        f fVar = (f) eVar;
                        float f = i / gVar2.k;
                        float f2 = i2 / gVar2.l;
                        float fMin = Math.min(f, f2);
                        Matrix matrix2 = dVar.a;
                        gVar2.c.set(matrix2);
                        gVar2.c.postScale(f, f2);
                        float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
                        matrix2.mapVectors(fArr);
                        float fHypot = (float) Math.hypot(fArr[r11], fArr[1]);
                        float fHypot2 = (float) Math.hypot(fArr[2], fArr[3]);
                        float f3 = (fArr[r11] * fArr[3]) - (fArr[1] * fArr[2]);
                        float fMax = Math.max(fHypot, fHypot2);
                        float fAbs = fMax > 0.0f ? Math.abs(f3) / fMax : 0.0f;
                        if (fAbs == 0.0f) {
                            gVar = this;
                        } else {
                            gVar = this;
                            Path path = gVar.a;
                            Objects.requireNonNull(fVar);
                            path.reset();
                            f8[] f8VarArr = fVar.a;
                            if (f8VarArr != null) {
                                f8.b(f8VarArr, path);
                            }
                            Path path2 = gVar.a;
                            gVar.b.reset();
                            if (fVar.c()) {
                                gVar.b.setFillType(fVar.c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                                gVar.b.addPath(path2, gVar.c);
                                canvas.clipPath(gVar.b);
                            } else {
                                c cVar = (c) fVar;
                                float f4 = cVar.k;
                                if (f4 != 0.0f || cVar.l != 1.0f) {
                                    float f5 = cVar.m;
                                    float f6 = (f4 + f5) % 1.0f;
                                    float f7 = (cVar.l + f5) % 1.0f;
                                    if (gVar.f == null) {
                                        gVar.f = new PathMeasure();
                                    }
                                    gVar.f.setPath(gVar.a, r11);
                                    float length = gVar.f.getLength();
                                    float f8 = f6 * length;
                                    float f9 = f7 * length;
                                    path2.reset();
                                    if (f8 > f9) {
                                        gVar.f.getSegment(f8, length, path2, true);
                                        gVar.f.getSegment(0.0f, f9, path2, true);
                                    } else {
                                        gVar.f.getSegment(f8, f9, path2, true);
                                    }
                                    path2.rLineTo(0.0f, 0.0f);
                                }
                                gVar.b.addPath(path2, gVar.c);
                                v7 v7Var = cVar.h;
                                if (v7Var.b() || v7Var.c != 0) {
                                    v7 v7Var2 = cVar.h;
                                    if (gVar.e == null) {
                                        Paint paint = new Paint(1);
                                        gVar.e = paint;
                                        paint.setStyle(Paint.Style.FILL);
                                    }
                                    Paint paint2 = gVar.e;
                                    if (v7Var2.b()) {
                                        Shader shader = v7Var2.a;
                                        shader.setLocalMatrix(gVar.c);
                                        paint2.setShader(shader);
                                        paint2.setAlpha(Math.round(cVar.j * 255.0f));
                                    } else {
                                        paint2.setShader(null);
                                        paint2.setAlpha(Base64.BASELENGTH);
                                        int i4 = v7Var2.c;
                                        float f10 = cVar.j;
                                        PorterDuff.Mode mode = ti.n;
                                        paint2.setColor((i4 & 16777215) | (((int) (Color.alpha(i4) * f10)) << 24));
                                    }
                                    paint2.setColorFilter(colorFilter);
                                    gVar.b.setFillType(cVar.c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                                    canvas.drawPath(gVar.b, paint2);
                                }
                                v7 v7Var3 = cVar.f;
                                if (v7Var3.b() || v7Var3.c != 0) {
                                    v7 v7Var4 = cVar.f;
                                    if (gVar.d == null) {
                                        Paint paint3 = new Paint(1);
                                        gVar.d = paint3;
                                        paint3.setStyle(Paint.Style.STROKE);
                                    }
                                    Paint paint4 = gVar.d;
                                    Paint.Join join = cVar.o;
                                    if (join != null) {
                                        paint4.setStrokeJoin(join);
                                    }
                                    Paint.Cap cap = cVar.n;
                                    if (cap != null) {
                                        paint4.setStrokeCap(cap);
                                    }
                                    paint4.setStrokeMiter(cVar.p);
                                    if (v7Var4.b()) {
                                        Shader shader2 = v7Var4.a;
                                        shader2.setLocalMatrix(gVar.c);
                                        paint4.setShader(shader2);
                                        paint4.setAlpha(Math.round(cVar.i * 255.0f));
                                    } else {
                                        paint4.setShader(null);
                                        paint4.setAlpha(Base64.BASELENGTH);
                                        int i5 = v7Var4.c;
                                        float f11 = cVar.i;
                                        PorterDuff.Mode mode2 = ti.n;
                                        paint4.setColor((i5 & 16777215) | (((int) (Color.alpha(i5) * f11)) << 24));
                                    }
                                    paint4.setColorFilter(colorFilter);
                                    paint4.setStrokeWidth(cVar.g * fAbs * fMin);
                                    canvas.drawPath(gVar.b, paint4);
                                }
                            }
                        }
                    }
                    i3++;
                    gVar2 = gVar;
                    r11 = 0;
                }
                gVar = gVar2;
                i3++;
                gVar2 = gVar;
                r11 = 0;
            }
            canvas.restore();
        }

        public float getAlpha() {
            return getRootAlpha() / 255.0f;
        }

        public int getRootAlpha() {
            return this.m;
        }

        public void setAlpha(float f) {
            setRootAlpha((int) (f * 255.0f));
        }

        public void setRootAlpha(int i) {
            this.m = i;
        }

        public g(g gVar) {
            this.c = new Matrix();
            this.i = 0.0f;
            this.j = 0.0f;
            this.k = 0.0f;
            this.l = 0.0f;
            this.m = Base64.BASELENGTH;
            this.n = null;
            this.o = null;
            f4<String, Object> f4Var = new f4<>();
            this.p = f4Var;
            this.h = new d(gVar.h, f4Var);
            this.a = new Path(gVar.a);
            this.b = new Path(gVar.b);
            this.i = gVar.i;
            this.j = gVar.j;
            this.k = gVar.k;
            this.l = gVar.l;
            this.g = gVar.g;
            this.m = gVar.m;
            this.n = gVar.n;
            String str = gVar.n;
            if (str != null) {
                f4Var.put(str, this);
            }
            this.o = gVar.o;
        }
    }

    public static class d extends e {
        public final Matrix a;
        public final ArrayList<e> b;
        public float c;
        public float d;
        public float e;
        public float f;
        public float g;
        public float h;
        public float i;
        public final Matrix j;
        public int k;
        public int[] l;
        public String m;

        public d(d dVar, f4<String, Object> f4Var) {
            f bVar;
            super(null);
            this.a = new Matrix();
            this.b = new ArrayList<>();
            this.c = 0.0f;
            this.d = 0.0f;
            this.e = 0.0f;
            this.f = 1.0f;
            this.g = 1.0f;
            this.h = 0.0f;
            this.i = 0.0f;
            Matrix matrix = new Matrix();
            this.j = matrix;
            this.m = null;
            this.c = dVar.c;
            this.d = dVar.d;
            this.e = dVar.e;
            this.f = dVar.f;
            this.g = dVar.g;
            this.h = dVar.h;
            this.i = dVar.i;
            this.l = dVar.l;
            String str = dVar.m;
            this.m = str;
            this.k = dVar.k;
            if (str != null) {
                f4Var.put(str, this);
            }
            matrix.set(dVar.j);
            ArrayList<e> arrayList = dVar.b;
            for (int i = 0; i < arrayList.size(); i++) {
                e eVar = arrayList.get(i);
                if (eVar instanceof d) {
                    this.b.add(new d((d) eVar, f4Var));
                } else {
                    if (eVar instanceof c) {
                        bVar = new c((c) eVar);
                    } else {
                        if (!(eVar instanceof b)) {
                            throw new IllegalStateException("Unknown object in the tree!");
                        }
                        bVar = new b((b) eVar);
                    }
                    this.b.add(bVar);
                    String str2 = bVar.b;
                    if (str2 != null) {
                        f4Var.put(str2, bVar);
                    }
                }
            }
        }

        @Override // ti.e
        public boolean a() {
            for (int i = 0; i < this.b.size(); i++) {
                if (this.b.get(i).a()) {
                    return true;
                }
            }
            return false;
        }

        @Override // ti.e
        public boolean b(int[] iArr) {
            boolean zB = false;
            for (int i = 0; i < this.b.size(); i++) {
                zB |= this.b.get(i).b(iArr);
            }
            return zB;
        }

        public final void c() {
            this.j.reset();
            this.j.postTranslate(-this.d, -this.e);
            this.j.postScale(this.f, this.g);
            this.j.postRotate(this.c, 0.0f, 0.0f);
            this.j.postTranslate(this.h + this.d, this.i + this.e);
        }

        public String getGroupName() {
            return this.m;
        }

        public Matrix getLocalMatrix() {
            return this.j;
        }

        public float getPivotX() {
            return this.d;
        }

        public float getPivotY() {
            return this.e;
        }

        public float getRotation() {
            return this.c;
        }

        public float getScaleX() {
            return this.f;
        }

        public float getScaleY() {
            return this.g;
        }

        public float getTranslateX() {
            return this.h;
        }

        public float getTranslateY() {
            return this.i;
        }

        public void setPivotX(float f) {
            if (f != this.d) {
                this.d = f;
                c();
            }
        }

        public void setPivotY(float f) {
            if (f != this.e) {
                this.e = f;
                c();
            }
        }

        public void setRotation(float f) {
            if (f != this.c) {
                this.c = f;
                c();
            }
        }

        public void setScaleX(float f) {
            if (f != this.f) {
                this.f = f;
                c();
            }
        }

        public void setScaleY(float f) {
            if (f != this.g) {
                this.g = f;
                c();
            }
        }

        public void setTranslateX(float f) {
            if (f != this.h) {
                this.h = f;
                c();
            }
        }

        public void setTranslateY(float f) {
            if (f != this.i) {
                this.i = f;
                c();
            }
        }

        public d() {
            super(null);
            this.a = new Matrix();
            this.b = new ArrayList<>();
            this.c = 0.0f;
            this.d = 0.0f;
            this.e = 0.0f;
            this.f = 1.0f;
            this.g = 1.0f;
            this.h = 0.0f;
            this.i = 0.0f;
            this.j = new Matrix();
            this.m = null;
        }
    }
}
