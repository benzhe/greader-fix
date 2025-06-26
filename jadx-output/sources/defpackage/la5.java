package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.Log;
import defpackage.qa5;
import defpackage.sa5;
import java.util.BitSet;
import java.util.Objects;
import org.apache.commons.codec.binary.Base64;

/* loaded from: classes.dex */
public class la5 extends Drawable implements o8, ta5 {
    public static final String A = la5.class.getSimpleName();
    public static final Paint B = new Paint(1);
    public b e;
    public final sa5.f[] f;
    public final sa5.f[] g;
    public final BitSet h;
    public boolean i;
    public final Matrix j;
    public final Path k;
    public final Path l;
    public final RectF m;
    public final RectF n;
    public final Region o;
    public final Region p;
    public pa5 q;
    public final Paint r;
    public final Paint s;
    public final ca5 t;
    public final qa5.b u;
    public final qa5 v;
    public PorterDuffColorFilter w;
    public PorterDuffColorFilter x;
    public final RectF y;
    public boolean z;

    public class a implements qa5.b {
        public a() {
        }
    }

    public la5() {
        this(new pa5());
    }

    public void A(ColorStateList colorStateList) {
        b bVar = this.e;
        if (bVar.e != colorStateList) {
            bVar.e = colorStateList;
            onStateChange(getState());
        }
    }

    public void B(float f) {
        this.e.l = f;
        invalidateSelf();
    }

    public final boolean C(int[] iArr) {
        boolean z;
        int color;
        int colorForState;
        int color2;
        int colorForState2;
        if (this.e.d == null || color2 == (colorForState2 = this.e.d.getColorForState(iArr, (color2 = this.r.getColor())))) {
            z = false;
        } else {
            this.r.setColor(colorForState2);
            z = true;
        }
        if (this.e.e == null || color == (colorForState = this.e.e.getColorForState(iArr, (color = this.s.getColor())))) {
            return z;
        }
        this.s.setColor(colorForState);
        return true;
    }

    public final boolean D() {
        PorterDuffColorFilter porterDuffColorFilter = this.w;
        PorterDuffColorFilter porterDuffColorFilter2 = this.x;
        b bVar = this.e;
        this.w = d(bVar.g, bVar.h, this.r, true);
        b bVar2 = this.e;
        this.x = d(bVar2.f, bVar2.h, this.s, false);
        b bVar3 = this.e;
        if (bVar3.u) {
            this.t.a(bVar3.g.getColorForState(getState(), 0));
        }
        return (Objects.equals(porterDuffColorFilter, this.w) && Objects.equals(porterDuffColorFilter2, this.x)) ? false : true;
    }

    public final void E() {
        b bVar = this.e;
        float f = bVar.o + bVar.p;
        bVar.r = (int) Math.ceil(0.75f * f);
        this.e.s = (int) Math.ceil(f * 0.25f);
        D();
        super.invalidateSelf();
    }

    public final void b(RectF rectF, Path path) {
        c(rectF, path);
        if (this.e.j != 1.0f) {
            this.j.reset();
            Matrix matrix = this.j;
            float f = this.e.j;
            matrix.setScale(f, f, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(this.j);
        }
        path.computeBounds(this.y, true);
    }

    public final void c(RectF rectF, Path path) {
        qa5 qa5Var = this.v;
        b bVar = this.e;
        qa5Var.b(bVar.a, bVar.k, rectF, this.u, path);
    }

    public final PorterDuffColorFilter d(ColorStateList colorStateList, PorterDuff.Mode mode, Paint paint, boolean z) {
        int color;
        int iE;
        if (colorStateList == null || mode == null) {
            return (!z || (iE = e((color = paint.getColor()))) == color) ? null : new PorterDuffColorFilter(iE, PorterDuff.Mode.SRC_IN);
        }
        int colorForState = colorStateList.getColorForState(getState(), 0);
        if (z) {
            colorForState = e(colorForState);
        }
        return new PorterDuffColorFilter(colorForState, mode);
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00ee  */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void draw(android.graphics.Canvas r11) {
        /*
            Method dump skipped, instructions count: 480
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.la5.draw(android.graphics.Canvas):void");
    }

    public int e(int i) {
        b bVar = this.e;
        float f = bVar.o + bVar.p + bVar.n;
        u75 u75Var = bVar.b;
        return u75Var != null ? u75Var.a(i, f) : i;
    }

    public final void f(Canvas canvas) {
        if (this.h.cardinality() > 0) {
            Log.w(A, "Compatibility shadow requested but can't be drawn for all operations in this shape.");
        }
        if (this.e.s != 0) {
            canvas.drawPath(this.k, this.t.a);
        }
        for (int i = 0; i < 4; i++) {
            sa5.f fVar = this.f[i];
            ca5 ca5Var = this.t;
            int i2 = this.e.r;
            Matrix matrix = sa5.f.a;
            fVar.a(matrix, ca5Var, i2, canvas);
            this.g[i].a(matrix, this.t, this.e.r, canvas);
        }
        if (this.z) {
            int iK = k();
            int iL = l();
            canvas.translate(-iK, -iL);
            canvas.drawPath(this.k, B);
            canvas.translate(iK, iL);
        }
    }

    public final void g(Canvas canvas, Paint paint, Path path, pa5 pa5Var, RectF rectF) {
        if (!pa5Var.d(rectF)) {
            canvas.drawPath(path, paint);
        } else {
            float fA = pa5Var.f.a(rectF) * this.e.k;
            canvas.drawRoundRect(rectF, fA, fA, paint);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.e;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        if (this.e.q == 2) {
            return;
        }
        if (r()) {
            outline.setRoundRect(getBounds(), n() * this.e.k);
            return;
        }
        b(j(), this.k);
        if (this.k.isConvex() || Build.VERSION.SDK_INT >= 29) {
            try {
                outline.setConvexPath(this.k);
            } catch (IllegalArgumentException unused) {
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        Rect rect2 = this.e.i;
        if (rect2 == null) {
            return super.getPadding(rect);
        }
        rect.set(rect2);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        this.o.set(getBounds());
        b(j(), this.k);
        this.p.setPath(this.k, this.o);
        this.o.op(this.p, Region.Op.DIFFERENCE);
        return this.o;
    }

    public float h() {
        return this.e.a.h.a(j());
    }

    public float i() {
        return this.e.a.g.a(j());
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        this.i = true;
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        ColorStateList colorStateList3;
        ColorStateList colorStateList4;
        return super.isStateful() || ((colorStateList = this.e.g) != null && colorStateList.isStateful()) || (((colorStateList2 = this.e.f) != null && colorStateList2.isStateful()) || (((colorStateList3 = this.e.e) != null && colorStateList3.isStateful()) || ((colorStateList4 = this.e.d) != null && colorStateList4.isStateful())));
    }

    public RectF j() {
        this.m.set(getBounds());
        return this.m;
    }

    public int k() {
        b bVar = this.e;
        return (int) (Math.sin(Math.toRadians(bVar.t)) * bVar.s);
    }

    public int l() {
        b bVar = this.e;
        return (int) (Math.cos(Math.toRadians(bVar.t)) * bVar.s);
    }

    public final float m() {
        if (p()) {
            return this.s.getStrokeWidth() / 2.0f;
        }
        return 0.0f;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        this.e = new b(this.e);
        return this;
    }

    public float n() {
        return this.e.a.e.a(j());
    }

    public float o() {
        return this.e.a.f.a(j());
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        this.i = true;
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.Drawable, q85.b
    public boolean onStateChange(int[] iArr) {
        boolean z = C(iArr) || D();
        if (z) {
            invalidateSelf();
        }
        return z;
    }

    public final boolean p() {
        Paint.Style style = this.e.v;
        return (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.STROKE) && this.s.getStrokeWidth() > 0.0f;
    }

    public void q(Context context) {
        this.e.b = new u75(context);
        E();
    }

    public boolean r() {
        return this.e.a.d(j());
    }

    public void s(float f) {
        b bVar = this.e;
        if (bVar.o != f) {
            bVar.o = f;
            E();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        b bVar = this.e;
        if (bVar.m != i) {
            bVar.m = i;
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.e.c = colorFilter;
        super.invalidateSelf();
    }

    @Override // defpackage.ta5
    public void setShapeAppearanceModel(pa5 pa5Var) {
        this.e.a = pa5Var;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.e.g = colorStateList;
        D();
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        b bVar = this.e;
        if (bVar.h != mode) {
            bVar.h = mode;
            D();
            super.invalidateSelf();
        }
    }

    public void t(ColorStateList colorStateList) {
        b bVar = this.e;
        if (bVar.d != colorStateList) {
            bVar.d = colorStateList;
            onStateChange(getState());
        }
    }

    public void u(float f) {
        b bVar = this.e;
        if (bVar.k != f) {
            bVar.k = f;
            this.i = true;
            invalidateSelf();
        }
    }

    public void v(Paint.Style style) {
        this.e.v = style;
        super.invalidateSelf();
    }

    public void w(int i) {
        this.t.a(i);
        this.e.u = false;
        super.invalidateSelf();
    }

    public void x(int i) {
        b bVar = this.e;
        if (bVar.q != i) {
            bVar.q = i;
            super.invalidateSelf();
        }
    }

    public void y(float f, int i) {
        this.e.l = f;
        invalidateSelf();
        A(ColorStateList.valueOf(i));
    }

    public void z(float f, ColorStateList colorStateList) {
        this.e.l = f;
        invalidateSelf();
        A(colorStateList);
    }

    public la5(pa5 pa5Var) {
        this(new b(pa5Var, null));
    }

    public la5(b bVar) {
        qa5 qa5Var;
        this.f = new sa5.f[4];
        this.g = new sa5.f[4];
        this.h = new BitSet(8);
        this.j = new Matrix();
        this.k = new Path();
        this.l = new Path();
        this.m = new RectF();
        this.n = new RectF();
        this.o = new Region();
        this.p = new Region();
        Paint paint = new Paint(1);
        this.r = paint;
        Paint paint2 = new Paint(1);
        this.s = paint2;
        this.t = new ca5();
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            qa5Var = qa5.a.a;
        } else {
            qa5Var = new qa5();
        }
        this.v = qa5Var;
        this.y = new RectF();
        this.z = true;
        this.e = bVar;
        paint2.setStyle(Paint.Style.STROKE);
        paint.setStyle(Paint.Style.FILL);
        Paint paint3 = B;
        paint3.setColor(-1);
        paint3.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        D();
        C(getState());
        this.u = new a();
    }

    public static final class b extends Drawable.ConstantState {
        public pa5 a;
        public u75 b;
        public ColorFilter c;
        public ColorStateList d;
        public ColorStateList e;
        public ColorStateList f;
        public ColorStateList g;
        public PorterDuff.Mode h;
        public Rect i;
        public float j;
        public float k;
        public float l;
        public int m;
        public float n;
        public float o;
        public float p;
        public int q;
        public int r;
        public int s;
        public int t;
        public boolean u;
        public Paint.Style v;

        public b(pa5 pa5Var, u75 u75Var) {
            this.d = null;
            this.e = null;
            this.f = null;
            this.g = null;
            this.h = PorterDuff.Mode.SRC_IN;
            this.i = null;
            this.j = 1.0f;
            this.k = 1.0f;
            this.m = Base64.BASELENGTH;
            this.n = 0.0f;
            this.o = 0.0f;
            this.p = 0.0f;
            this.q = 0;
            this.r = 0;
            this.s = 0;
            this.t = 0;
            this.u = false;
            this.v = Paint.Style.FILL_AND_STROKE;
            this.a = pa5Var;
            this.b = null;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            la5 la5Var = new la5(this);
            la5Var.i = true;
            return la5Var;
        }

        public b(b bVar) {
            this.d = null;
            this.e = null;
            this.f = null;
            this.g = null;
            this.h = PorterDuff.Mode.SRC_IN;
            this.i = null;
            this.j = 1.0f;
            this.k = 1.0f;
            this.m = Base64.BASELENGTH;
            this.n = 0.0f;
            this.o = 0.0f;
            this.p = 0.0f;
            this.q = 0;
            this.r = 0;
            this.s = 0;
            this.t = 0;
            this.u = false;
            this.v = Paint.Style.FILL_AND_STROKE;
            this.a = bVar.a;
            this.b = bVar.b;
            this.l = bVar.l;
            this.c = bVar.c;
            this.d = bVar.d;
            this.e = bVar.e;
            this.h = bVar.h;
            this.g = bVar.g;
            this.m = bVar.m;
            this.j = bVar.j;
            this.s = bVar.s;
            this.q = bVar.q;
            this.u = bVar.u;
            this.k = bVar.k;
            this.n = bVar.n;
            this.o = bVar.o;
            this.p = bVar.p;
            this.r = bVar.r;
            this.t = bVar.t;
            this.f = bVar.f;
            this.v = bVar.v;
            if (bVar.i != null) {
                this.i = new Rect(bVar.i);
            }
        }
    }

    public la5(Context context, AttributeSet attributeSet, int i, int i2) {
        this(pa5.b(context, attributeSet, i, i2, new ea5(0)).a());
    }
}
