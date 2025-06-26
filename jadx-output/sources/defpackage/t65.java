package defpackage;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import defpackage.d0;
import defpackage.q85;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import org.apache.commons.codec.binary.Base64;

/* loaded from: classes.dex */
public class t65 extends la5 implements o8, Drawable.Callback, q85.b {
    public static final int[] L0 = {R.attr.state_enabled};
    public static final ShapeDrawable M0 = new ShapeDrawable(new OvalShape());
    public PorterDuffColorFilter A0;
    public ColorStateList B0;
    public ColorStateList C;
    public PorterDuff.Mode C0;
    public ColorStateList D;
    public int[] D0;
    public float E;
    public boolean E0;
    public float F;
    public ColorStateList F0;
    public ColorStateList G;
    public WeakReference<a> G0;
    public float H;
    public TextUtils.TruncateAt H0;
    public ColorStateList I;
    public boolean I0;
    public CharSequence J;
    public int J0;
    public boolean K;
    public boolean K0;
    public Drawable L;
    public ColorStateList M;
    public float N;
    public boolean O;
    public boolean P;
    public Drawable Q;
    public Drawable R;
    public ColorStateList S;
    public float T;
    public CharSequence U;
    public boolean V;
    public boolean W;
    public Drawable X;
    public ColorStateList Y;
    public o55 Z;
    public o55 a0;
    public float b0;
    public float c0;
    public float d0;
    public float e0;
    public float f0;
    public float g0;
    public float h0;
    public float i0;
    public final Context j0;
    public final Paint k0;
    public final Paint.FontMetrics l0;
    public final RectF m0;
    public final PointF n0;
    public final Path o0;
    public final q85 p0;
    public int q0;
    public int r0;
    public int s0;
    public int t0;
    public int u0;
    public int v0;
    public boolean w0;
    public int x0;
    public int y0;
    public ColorFilter z0;

    public interface a {
        void a();
    }

    public t65(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.F = -1.0f;
        this.k0 = new Paint(1);
        this.l0 = new Paint.FontMetrics();
        this.m0 = new RectF();
        this.n0 = new PointF();
        this.o0 = new Path();
        this.y0 = Base64.BASELENGTH;
        this.C0 = PorterDuff.Mode.SRC_IN;
        this.G0 = new WeakReference<>(null);
        this.e.b = new u75(context);
        E();
        this.j0 = context;
        q85 q85Var = new q85(this);
        this.p0 = q85Var;
        this.J = "";
        q85Var.a.density = context.getResources().getDisplayMetrics().density;
        int[] iArr = L0;
        setState(iArr);
        l0(iArr);
        this.I0 = true;
        int[] iArr2 = ba5.a;
        M0.setTint(-1);
    }

    public static boolean O(ColorStateList colorStateList) {
        return colorStateList != null && colorStateList.isStateful();
    }

    public static boolean P(Drawable drawable) {
        return drawable != null && drawable.isStateful();
    }

    public final void F(Drawable drawable) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (drawable == null) {
            return;
        }
        drawable.setCallback(this);
        d0.h.Y(drawable, d0.h.C(this));
        drawable.setLevel(getLevel());
        drawable.setVisible(isVisible(), false);
        if (drawable == this.Q) {
            if (drawable.isStateful()) {
                drawable.setState(this.D0);
            }
            drawable.setTintList(this.S);
            return;
        }
        if (drawable.isStateful()) {
            drawable.setState(getState());
        }
        Drawable drawable2 = this.L;
        if (drawable == drawable2 && this.O) {
            drawable2.setTintList(this.M);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0060 A[PHI: r1
      0x0060: PHI (r1v3 float) = (r1v2 float), (r1v2 float), (r1v10 float) binds: [B:15:0x003f, B:16:0x0041, B:18:0x0058] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void G(android.graphics.Rect r4, android.graphics.RectF r5) {
        /*
            r3 = this;
            r5.setEmpty()
            boolean r0 = r3.w0()
            if (r0 != 0) goto Lf
            boolean r0 = r3.v0()
            if (r0 == 0) goto L6f
        Lf:
            float r0 = r3.b0
            float r1 = r3.c0
            float r0 = r0 + r1
            float r1 = r3.N()
            int r2 = d0.h.C(r3)
            if (r2 != 0) goto L28
            int r2 = r4.left
            float r2 = (float) r2
            float r2 = r2 + r0
            r5.left = r2
            float r2 = r2 + r1
            r5.right = r2
            goto L31
        L28:
            int r2 = r4.right
            float r2 = (float) r2
            float r2 = r2 - r0
            r5.right = r2
            float r2 = r2 - r1
            r5.left = r2
        L31:
            boolean r0 = r3.w0
            if (r0 == 0) goto L38
            android.graphics.drawable.Drawable r0 = r3.X
            goto L3a
        L38:
            android.graphics.drawable.Drawable r0 = r3.L
        L3a:
            float r1 = r3.N
            r2 = 0
            int r2 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            if (r2 > 0) goto L60
            if (r0 == 0) goto L60
            android.content.Context r1 = r3.j0
            r2 = 24
            float r1 = defpackage.c50.P(r1, r2)
            double r1 = (double) r1
            double r1 = java.lang.Math.ceil(r1)
            float r1 = (float) r1
            int r2 = r0.getIntrinsicHeight()
            float r2 = (float) r2
            int r2 = (r2 > r1 ? 1 : (r2 == r1 ? 0 : -1))
            if (r2 > 0) goto L60
            int r0 = r0.getIntrinsicHeight()
            float r0 = (float) r0
            goto L61
        L60:
            r0 = r1
        L61:
            float r4 = r4.exactCenterY()
            r1 = 1073741824(0x40000000, float:2.0)
            float r1 = r0 / r1
            float r4 = r4 - r1
            r5.top = r4
            float r4 = r4 + r0
            r5.bottom = r4
        L6f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.t65.G(android.graphics.Rect, android.graphics.RectF):void");
    }

    public float H() {
        if (!w0() && !v0()) {
            return 0.0f;
        }
        return N() + this.c0 + this.d0;
    }

    public final void I(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (x0()) {
            float f = this.i0 + this.h0;
            if (d0.h.C(this) == 0) {
                float f2 = rect.right - f;
                rectF.right = f2;
                rectF.left = f2 - this.T;
            } else {
                float f3 = rect.left + f;
                rectF.left = f3;
                rectF.right = f3 + this.T;
            }
            float fExactCenterY = rect.exactCenterY();
            float f4 = this.T;
            float f5 = fExactCenterY - (f4 / 2.0f);
            rectF.top = f5;
            rectF.bottom = f5 + f4;
        }
    }

    public final void J(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (x0()) {
            float f = this.i0 + this.h0 + this.T + this.g0 + this.f0;
            if (d0.h.C(this) == 0) {
                float f2 = rect.right;
                rectF.right = f2;
                rectF.left = f2 - f;
            } else {
                int i = rect.left;
                rectF.left = i;
                rectF.right = i + f;
            }
            rectF.top = rect.top;
            rectF.bottom = rect.bottom;
        }
    }

    public float K() {
        if (x0()) {
            return this.g0 + this.T + this.h0;
        }
        return 0.0f;
    }

    public float L() {
        return this.K0 ? n() : this.F;
    }

    public Drawable M() {
        Drawable drawable = this.Q;
        if (drawable != null) {
            return d0.h.k0(drawable);
        }
        return null;
    }

    public final float N() {
        Drawable drawable = this.w0 ? this.X : this.L;
        float f = this.N;
        return (f > 0.0f || drawable == null) ? f : drawable.getIntrinsicWidth();
    }

    public void Q() {
        a aVar = this.G0.get();
        if (aVar != null) {
            aVar.a();
        }
    }

    public final boolean R(int[] iArr, int[] iArr2) {
        boolean z;
        boolean z2;
        ColorStateList colorStateList;
        boolean zOnStateChange = super.onStateChange(iArr);
        ColorStateList colorStateList2 = this.C;
        int iE = e(colorStateList2 != null ? colorStateList2.getColorForState(iArr, this.q0) : 0);
        boolean state = true;
        if (this.q0 != iE) {
            this.q0 = iE;
            zOnStateChange = true;
        }
        ColorStateList colorStateList3 = this.D;
        int iE2 = e(colorStateList3 != null ? colorStateList3.getColorForState(iArr, this.r0) : 0);
        if (this.r0 != iE2) {
            this.r0 = iE2;
            zOnStateChange = true;
        }
        int iE3 = d8.e(iE2, iE);
        if ((this.s0 != iE3) | (this.e.d == null)) {
            this.s0 = iE3;
            t(ColorStateList.valueOf(iE3));
            zOnStateChange = true;
        }
        ColorStateList colorStateList4 = this.G;
        int colorForState = colorStateList4 != null ? colorStateList4.getColorForState(iArr, this.t0) : 0;
        if (this.t0 != colorForState) {
            this.t0 = colorForState;
            zOnStateChange = true;
        }
        int colorForState2 = (this.F0 == null || !ba5.d(iArr)) ? 0 : this.F0.getColorForState(iArr, this.u0);
        if (this.u0 != colorForState2) {
            this.u0 = colorForState2;
            if (this.E0) {
                zOnStateChange = true;
            }
        }
        y95 y95Var = this.p0.f;
        int colorForState3 = (y95Var == null || (colorStateList = y95Var.a) == null) ? 0 : colorStateList.getColorForState(iArr, this.v0);
        if (this.v0 != colorForState3) {
            this.v0 = colorForState3;
            zOnStateChange = true;
        }
        int[] state2 = getState();
        if (state2 == null) {
            z = false;
        } else {
            for (int i : state2) {
                if (i == 16842912) {
                    z = true;
                    break;
                }
            }
            z = false;
        }
        boolean z3 = z && this.V;
        if (this.w0 == z3 || this.X == null) {
            z2 = false;
        } else {
            float fH = H();
            this.w0 = z3;
            if (fH != H()) {
                zOnStateChange = true;
                z2 = true;
            } else {
                zOnStateChange = true;
                z2 = false;
            }
        }
        ColorStateList colorStateList5 = this.B0;
        int colorForState4 = colorStateList5 != null ? colorStateList5.getColorForState(iArr, this.x0) : 0;
        if (this.x0 != colorForState4) {
            this.x0 = colorForState4;
            this.A0 = c50.L0(this, this.B0, this.C0);
        } else {
            state = zOnStateChange;
        }
        if (P(this.L)) {
            state |= this.L.setState(iArr);
        }
        if (P(this.X)) {
            state |= this.X.setState(iArr);
        }
        if (P(this.Q)) {
            int[] iArr3 = new int[iArr.length + iArr2.length];
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            System.arraycopy(iArr2, 0, iArr3, iArr.length, iArr2.length);
            state |= this.Q.setState(iArr3);
        }
        int[] iArr4 = ba5.a;
        if (P(this.R)) {
            state |= this.R.setState(iArr2);
        }
        if (state) {
            invalidateSelf();
        }
        if (z2) {
            Q();
        }
        return state;
    }

    public void S(boolean z) {
        if (this.V != z) {
            this.V = z;
            float fH = H();
            if (!z && this.w0) {
                this.w0 = false;
            }
            float fH2 = H();
            invalidateSelf();
            if (fH != fH2) {
                Q();
            }
        }
    }

    public void T(Drawable drawable) {
        if (this.X != drawable) {
            float fH = H();
            this.X = drawable;
            float fH2 = H();
            y0(this.X);
            F(this.X);
            invalidateSelf();
            if (fH != fH2) {
                Q();
            }
        }
    }

    public void U(ColorStateList colorStateList) {
        if (this.Y != colorStateList) {
            this.Y = colorStateList;
            if (this.W && this.X != null && this.V) {
                this.X.setTintList(colorStateList);
            }
            onStateChange(getState());
        }
    }

    public void V(boolean z) {
        if (this.W != z) {
            boolean zV0 = v0();
            this.W = z;
            boolean zV02 = v0();
            if (zV0 != zV02) {
                if (zV02) {
                    F(this.X);
                } else {
                    y0(this.X);
                }
                invalidateSelf();
                Q();
            }
        }
    }

    public void W(ColorStateList colorStateList) {
        if (this.D != colorStateList) {
            this.D = colorStateList;
            onStateChange(getState());
        }
    }

    @Deprecated
    public void X(float f) {
        if (this.F != f) {
            this.F = f;
            this.e.a = this.e.a.e(f);
            invalidateSelf();
        }
    }

    public void Y(float f) {
        if (this.i0 != f) {
            this.i0 = f;
            invalidateSelf();
            Q();
        }
    }

    public void Z(Drawable drawable) {
        Drawable drawable2 = this.L;
        Drawable drawableK0 = drawable2 != null ? d0.h.k0(drawable2) : null;
        if (drawableK0 != drawable) {
            float fH = H();
            this.L = drawable != null ? d0.h.l0(drawable).mutate() : null;
            float fH2 = H();
            y0(drawableK0);
            if (w0()) {
                F(this.L);
            }
            invalidateSelf();
            if (fH != fH2) {
                Q();
            }
        }
    }

    @Override // q85.b
    public void a() {
        Q();
        invalidateSelf();
    }

    public void a0(float f) {
        if (this.N != f) {
            float fH = H();
            this.N = f;
            float fH2 = H();
            invalidateSelf();
            if (fH != fH2) {
                Q();
            }
        }
    }

    public void b0(ColorStateList colorStateList) {
        this.O = true;
        if (this.M != colorStateList) {
            this.M = colorStateList;
            if (w0()) {
                this.L.setTintList(colorStateList);
            }
            onStateChange(getState());
        }
    }

    public void c0(boolean z) {
        if (this.K != z) {
            boolean zW0 = w0();
            this.K = z;
            boolean zW02 = w0();
            if (zW0 != zW02) {
                if (zW02) {
                    F(this.L);
                } else {
                    y0(this.L);
                }
                invalidateSelf();
                Q();
            }
        }
    }

    public void d0(float f) {
        if (this.E != f) {
            this.E = f;
            invalidateSelf();
            Q();
        }
    }

    @Override // defpackage.la5, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int i;
        int iSaveLayerAlpha;
        int i2;
        int i3;
        int i4;
        int i5;
        int iSave;
        Rect bounds = getBounds();
        if (bounds.isEmpty() || (i = this.y0) == 0) {
            return;
        }
        if (i < 255) {
            float f = bounds.left;
            float f2 = bounds.top;
            float f3 = bounds.right;
            float f4 = bounds.bottom;
            iSaveLayerAlpha = Build.VERSION.SDK_INT > 21 ? canvas.saveLayerAlpha(f, f2, f3, f4, i) : canvas.saveLayerAlpha(f, f2, f3, f4, i, 31);
        } else {
            iSaveLayerAlpha = 0;
        }
        if (!this.K0) {
            this.k0.setColor(this.q0);
            this.k0.setStyle(Paint.Style.FILL);
            this.m0.set(bounds);
            canvas.drawRoundRect(this.m0, L(), L(), this.k0);
        }
        if (!this.K0) {
            this.k0.setColor(this.r0);
            this.k0.setStyle(Paint.Style.FILL);
            Paint paint = this.k0;
            ColorFilter colorFilter = this.z0;
            if (colorFilter == null) {
                colorFilter = this.A0;
            }
            paint.setColorFilter(colorFilter);
            this.m0.set(bounds);
            canvas.drawRoundRect(this.m0, L(), L(), this.k0);
        }
        if (this.K0) {
            super.draw(canvas);
        }
        if (this.H > 0.0f && !this.K0) {
            this.k0.setColor(this.t0);
            this.k0.setStyle(Paint.Style.STROKE);
            if (!this.K0) {
                Paint paint2 = this.k0;
                ColorFilter colorFilter2 = this.z0;
                if (colorFilter2 == null) {
                    colorFilter2 = this.A0;
                }
                paint2.setColorFilter(colorFilter2);
            }
            RectF rectF = this.m0;
            float f5 = bounds.left;
            float f6 = this.H / 2.0f;
            rectF.set(f5 + f6, bounds.top + f6, bounds.right - f6, bounds.bottom - f6);
            float f7 = this.F - (this.H / 2.0f);
            canvas.drawRoundRect(this.m0, f7, f7, this.k0);
        }
        this.k0.setColor(this.u0);
        this.k0.setStyle(Paint.Style.FILL);
        this.m0.set(bounds);
        if (this.K0) {
            c(new RectF(bounds), this.o0);
            i2 = 0;
            g(canvas, this.k0, this.o0, this.e.a, j());
        } else {
            canvas.drawRoundRect(this.m0, L(), L(), this.k0);
            i2 = 0;
        }
        if (w0()) {
            G(bounds, this.m0);
            RectF rectF2 = this.m0;
            float f8 = rectF2.left;
            float f9 = rectF2.top;
            canvas.translate(f8, f9);
            this.L.setBounds(i2, i2, (int) this.m0.width(), (int) this.m0.height());
            this.L.draw(canvas);
            canvas.translate(-f8, -f9);
        }
        if (v0()) {
            G(bounds, this.m0);
            RectF rectF3 = this.m0;
            float f10 = rectF3.left;
            float f11 = rectF3.top;
            canvas.translate(f10, f11);
            this.X.setBounds(i2, i2, (int) this.m0.width(), (int) this.m0.height());
            this.X.draw(canvas);
            canvas.translate(-f10, -f11);
        }
        if (!this.I0 || this.J == null) {
            i3 = iSaveLayerAlpha;
            i4 = Base64.BASELENGTH;
            i5 = 0;
        } else {
            PointF pointF = this.n0;
            pointF.set(0.0f, 0.0f);
            Paint.Align align = Paint.Align.LEFT;
            if (this.J != null) {
                float fH = H() + this.b0 + this.e0;
                if (d0.h.C(this) == 0) {
                    pointF.x = bounds.left + fH;
                    align = Paint.Align.LEFT;
                } else {
                    pointF.x = bounds.right - fH;
                    align = Paint.Align.RIGHT;
                }
                float fCenterY = bounds.centerY();
                this.p0.a.getFontMetrics(this.l0);
                Paint.FontMetrics fontMetrics = this.l0;
                pointF.y = fCenterY - ((fontMetrics.descent + fontMetrics.ascent) / 2.0f);
            }
            RectF rectF4 = this.m0;
            rectF4.setEmpty();
            if (this.J != null) {
                float fH2 = H() + this.b0 + this.e0;
                float fK = K() + this.i0 + this.f0;
                if (d0.h.C(this) == 0) {
                    rectF4.left = bounds.left + fH2;
                    rectF4.right = bounds.right - fK;
                } else {
                    rectF4.left = bounds.left + fK;
                    rectF4.right = bounds.right - fH2;
                }
                rectF4.top = bounds.top;
                rectF4.bottom = bounds.bottom;
            }
            q85 q85Var = this.p0;
            if (q85Var.f != null) {
                q85Var.a.drawableState = getState();
                q85 q85Var2 = this.p0;
                q85Var2.f.c(this.j0, q85Var2.a, q85Var2.b);
            }
            this.p0.a.setTextAlign(align);
            boolean z = Math.round(this.p0.a(this.J.toString())) > Math.round(this.m0.width());
            if (z) {
                iSave = canvas.save();
                canvas.clipRect(this.m0);
            } else {
                iSave = 0;
            }
            CharSequence charSequenceEllipsize = this.J;
            if (z && this.H0 != null) {
                charSequenceEllipsize = TextUtils.ellipsize(charSequenceEllipsize, this.p0.a, this.m0.width(), this.H0);
            }
            CharSequence charSequence = charSequenceEllipsize;
            int length = charSequence.length();
            PointF pointF2 = this.n0;
            float f12 = pointF2.x;
            float f13 = pointF2.y;
            TextPaint textPaint = this.p0.a;
            i5 = 0;
            i4 = Base64.BASELENGTH;
            i3 = iSaveLayerAlpha;
            canvas.drawText(charSequence, 0, length, f12, f13, textPaint);
            if (z) {
                canvas.restoreToCount(iSave);
            }
        }
        if (x0()) {
            I(bounds, this.m0);
            RectF rectF5 = this.m0;
            float f14 = rectF5.left;
            float f15 = rectF5.top;
            canvas.translate(f14, f15);
            this.Q.setBounds(i5, i5, (int) this.m0.width(), (int) this.m0.height());
            int[] iArr = ba5.a;
            this.R.setBounds(this.Q.getBounds());
            this.R.jumpToCurrentState();
            this.R.draw(canvas);
            canvas.translate(-f14, -f15);
        }
        if (this.y0 < i4) {
            canvas.restoreToCount(i3);
        }
    }

    public void e0(float f) {
        if (this.b0 != f) {
            this.b0 = f;
            invalidateSelf();
            Q();
        }
    }

    public void f0(ColorStateList colorStateList) {
        if (this.G != colorStateList) {
            this.G = colorStateList;
            if (this.K0) {
                A(colorStateList);
            }
            onStateChange(getState());
        }
    }

    public void g0(float f) {
        if (this.H != f) {
            this.H = f;
            this.k0.setStrokeWidth(f);
            if (this.K0) {
                this.e.l = f;
                invalidateSelf();
            }
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.y0;
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.z0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) this.E;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return Math.min(Math.round(K() + this.p0.a(this.J.toString()) + H() + this.b0 + this.e0 + this.f0 + this.i0), this.J0);
    }

    @Override // defpackage.la5, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // defpackage.la5, android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        if (this.K0) {
            super.getOutline(outline);
            return;
        }
        Rect bounds = getBounds();
        if (bounds.isEmpty()) {
            outline.setRoundRect(0, 0, getIntrinsicWidth(), (int) this.E, this.F);
        } else {
            outline.setRoundRect(bounds, this.F);
        }
        outline.setAlpha(this.y0 / 255.0f);
    }

    public void h0(Drawable drawable) {
        Drawable drawableM = M();
        if (drawableM != drawable) {
            float fK = K();
            this.Q = drawable != null ? d0.h.l0(drawable).mutate() : null;
            int[] iArr = ba5.a;
            this.R = new RippleDrawable(ba5.c(this.I), this.Q, M0);
            float fK2 = K();
            y0(drawableM);
            if (x0()) {
                F(this.Q);
            }
            invalidateSelf();
            if (fK != fK2) {
                Q();
            }
        }
    }

    public void i0(float f) {
        if (this.h0 != f) {
            this.h0 = f;
            invalidateSelf();
            if (x0()) {
                Q();
            }
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // defpackage.la5, android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        if (O(this.C) || O(this.D) || O(this.G)) {
            return true;
        }
        if (this.E0 && O(this.F0)) {
            return true;
        }
        y95 y95Var = this.p0.f;
        if ((y95Var == null || (colorStateList = y95Var.a) == null || !colorStateList.isStateful()) ? false : true) {
            return true;
        }
        return (this.W && this.X != null && this.V) || P(this.L) || P(this.X) || O(this.B0);
    }

    public void j0(float f) {
        if (this.T != f) {
            this.T = f;
            invalidateSelf();
            if (x0()) {
                Q();
            }
        }
    }

    public void k0(float f) {
        if (this.g0 != f) {
            this.g0 = f;
            invalidateSelf();
            if (x0()) {
                Q();
            }
        }
    }

    public boolean l0(int[] iArr) {
        if (Arrays.equals(this.D0, iArr)) {
            return false;
        }
        this.D0 = iArr;
        if (x0()) {
            return R(getState(), iArr);
        }
        return false;
    }

    public void m0(ColorStateList colorStateList) {
        if (this.S != colorStateList) {
            this.S = colorStateList;
            if (x0()) {
                this.Q.setTintList(colorStateList);
            }
            onStateChange(getState());
        }
    }

    public void n0(boolean z) {
        if (this.P != z) {
            boolean zX0 = x0();
            this.P = z;
            boolean zX02 = x0();
            if (zX0 != zX02) {
                if (zX02) {
                    F(this.Q);
                } else {
                    y0(this.Q);
                }
                invalidateSelf();
                Q();
            }
        }
    }

    public void o0(float f) {
        if (this.d0 != f) {
            float fH = H();
            this.d0 = f;
            float fH2 = H();
            invalidateSelf();
            if (fH != fH2) {
                Q();
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i) {
        boolean zOnLayoutDirectionChanged = super.onLayoutDirectionChanged(i);
        if (w0()) {
            zOnLayoutDirectionChanged |= d0.h.Y(this.L, i);
        }
        if (v0()) {
            zOnLayoutDirectionChanged |= d0.h.Y(this.X, i);
        }
        if (x0()) {
            zOnLayoutDirectionChanged |= d0.h.Y(this.Q, i);
        }
        if (!zOnLayoutDirectionChanged) {
            return true;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int i) {
        boolean zOnLevelChange = super.onLevelChange(i);
        if (w0()) {
            zOnLevelChange |= this.L.setLevel(i);
        }
        if (v0()) {
            zOnLevelChange |= this.X.setLevel(i);
        }
        if (x0()) {
            zOnLevelChange |= this.Q.setLevel(i);
        }
        if (zOnLevelChange) {
            invalidateSelf();
        }
        return zOnLevelChange;
    }

    @Override // defpackage.la5, android.graphics.drawable.Drawable, q85.b
    public boolean onStateChange(int[] iArr) {
        if (this.K0) {
            super.onStateChange(iArr);
        }
        return R(iArr, this.D0);
    }

    public void p0(float f) {
        if (this.c0 != f) {
            float fH = H();
            this.c0 = f;
            float fH2 = H();
            invalidateSelf();
            if (fH != fH2) {
                Q();
            }
        }
    }

    public void q0(ColorStateList colorStateList) {
        if (this.I != colorStateList) {
            this.I = colorStateList;
            this.F0 = this.E0 ? ba5.c(colorStateList) : null;
            onStateChange(getState());
        }
    }

    public void r0(CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = "";
        }
        if (TextUtils.equals(this.J, charSequence)) {
            return;
        }
        this.J = charSequence;
        this.p0.d = true;
        invalidateSelf();
        Q();
    }

    public void s0(float f) {
        if (this.f0 != f) {
            this.f0 = f;
            invalidateSelf();
            Q();
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j);
        }
    }

    @Override // defpackage.la5, android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.y0 != i) {
            this.y0 = i;
            invalidateSelf();
        }
    }

    @Override // defpackage.la5, android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.z0 != colorFilter) {
            this.z0 = colorFilter;
            invalidateSelf();
        }
    }

    @Override // defpackage.la5, android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        if (this.B0 != colorStateList) {
            this.B0 = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // defpackage.la5, android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        if (this.C0 != mode) {
            this.C0 = mode;
            this.A0 = c50.L0(this, this.B0, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        if (w0()) {
            visible |= this.L.setVisible(z, z2);
        }
        if (v0()) {
            visible |= this.X.setVisible(z, z2);
        }
        if (x0()) {
            visible |= this.Q.setVisible(z, z2);
        }
        if (visible) {
            invalidateSelf();
        }
        return visible;
    }

    public void t0(float f) {
        if (this.e0 != f) {
            this.e0 = f;
            invalidateSelf();
            Q();
        }
    }

    public void u0(boolean z) {
        if (this.E0 != z) {
            this.E0 = z;
            this.F0 = z ? ba5.c(this.I) : null;
            onStateChange(getState());
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    public final boolean v0() {
        return this.W && this.X != null && this.w0;
    }

    public final boolean w0() {
        return this.K && this.L != null;
    }

    public final boolean x0() {
        return this.P && this.Q != null;
    }

    public final void y0(Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }
}
