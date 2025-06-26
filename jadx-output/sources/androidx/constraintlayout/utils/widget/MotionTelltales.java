package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.ViewParent;
import android.view.animation.Interpolator;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.R$styleable;
import defpackage.b5;
import defpackage.i5;
import defpackage.j5;
import defpackage.k5;
import defpackage.m5;
import defpackage.p4;
import defpackage.v4;
import java.util.HashMap;

/* loaded from: classes.dex */
public class MotionTelltales extends MockView {
    public Paint p;
    public MotionLayout q;
    public float[] r;
    public Matrix s;
    public int t;
    public int u;
    public float v;

    public MotionTelltales(Context context) {
        super(context);
        this.p = new Paint();
        this.r = new float[2];
        this.s = new Matrix();
        this.t = 0;
        this.u = -65281;
        this.v = 0.25f;
        a(context, null);
    }

    private void a(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.MotionTelltales);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R$styleable.MotionTelltales_telltales_tailColor) {
                    this.u = typedArrayObtainStyledAttributes.getColor(index, this.u);
                } else if (index == R$styleable.MotionTelltales_telltales_velocityMode) {
                    this.t = typedArrayObtainStyledAttributes.getInt(index, this.t);
                } else if (index == R$styleable.MotionTelltales_telltales_tailScale) {
                    this.v = typedArrayObtainStyledAttributes.getFloat(index, this.v);
                }
            }
        }
        this.p.setColor(this.u);
        this.p.setStrokeWidth(5.0f);
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // androidx.constraintlayout.utils.widget.MockView, android.view.View
    public void onDraw(Canvas canvas) {
        int i;
        int i2;
        float f;
        float[] fArr;
        int i3;
        int i4;
        float[] fArr2;
        int i5;
        m5 m5Var;
        int i6;
        m5 m5Var2;
        m5 m5Var3;
        m5 m5Var4;
        double[] dArr;
        int i7;
        float[] fArr3;
        float f2;
        v4 v4Var;
        float f3;
        int i8;
        MotionTelltales motionTelltales = this;
        super.onDraw(canvas);
        getMatrix().invert(motionTelltales.s);
        if (motionTelltales.q == null) {
            ViewParent parent = getParent();
            if (parent instanceof MotionLayout) {
                motionTelltales.q = (MotionLayout) parent;
                return;
            }
            return;
        }
        int width = getWidth();
        int height = getHeight();
        int i9 = 5;
        float[] fArr4 = {0.1f, 0.25f, 0.5f, 0.75f, 0.9f};
        int i10 = 0;
        while (i10 < i9) {
            float f4 = fArr4[i10];
            int i11 = 0;
            while (i11 < i9) {
                float f5 = fArr4[i11];
                MotionLayout motionLayout = motionTelltales.q;
                float[] fArr5 = motionTelltales.r;
                int i12 = motionTelltales.t;
                float fA = motionLayout.x;
                float f6 = motionLayout.I;
                if (motionLayout.w != null) {
                    float fSignum = Math.signum(motionLayout.K - f6);
                    float interpolation = motionLayout.w.getInterpolation(motionLayout.I + 1.0E-5f);
                    float interpolation2 = motionLayout.w.getInterpolation(motionLayout.I);
                    fA = (((interpolation - interpolation2) / 1.0E-5f) * fSignum) / motionLayout.G;
                    f6 = interpolation2;
                }
                Interpolator interpolator = motionLayout.w;
                if (interpolator instanceof j5) {
                    fA = ((j5) interpolator).a();
                }
                float f7 = fA;
                i5 i5Var = motionLayout.E.get(motionTelltales);
                if ((i12 & 1) == 0) {
                    int width2 = getWidth();
                    int height2 = getHeight();
                    float fA2 = i5Var.a(f6, i5Var.u);
                    HashMap<String, m5> map = i5Var.x;
                    m5 m5Var5 = map == null ? null : map.get("translationX");
                    HashMap<String, m5> map2 = i5Var.x;
                    fArr = fArr4;
                    if (map2 == null) {
                        i6 = i12;
                        m5Var = null;
                    } else {
                        m5Var = map2.get("translationY");
                        i6 = i12;
                    }
                    HashMap<String, m5> map3 = i5Var.x;
                    i3 = i10;
                    if (map3 == null) {
                        i5 = i11;
                        m5Var2 = null;
                    } else {
                        m5Var2 = map3.get("rotation");
                        i5 = i11;
                    }
                    HashMap<String, m5> map4 = i5Var.x;
                    i2 = height;
                    if (map4 == null) {
                        i = width;
                        m5Var3 = null;
                    } else {
                        m5Var3 = map4.get("scaleX");
                        i = width;
                    }
                    HashMap<String, m5> map5 = i5Var.x;
                    if (map5 == null) {
                        f = f7;
                        m5Var4 = null;
                    } else {
                        m5Var4 = map5.get("scaleY");
                        f = f7;
                    }
                    HashMap<String, b5> map6 = i5Var.y;
                    b5 b5Var = map6 == null ? null : map6.get("translationX");
                    HashMap<String, b5> map7 = i5Var.y;
                    b5 b5Var2 = map7 == null ? null : map7.get("translationY");
                    HashMap<String, b5> map8 = i5Var.y;
                    b5 b5Var3 = map8 == null ? null : map8.get("rotation");
                    HashMap<String, b5> map9 = i5Var.y;
                    b5 b5Var4 = map9 == null ? null : map9.get("scaleX");
                    HashMap<String, b5> map10 = i5Var.y;
                    b5 b5Var5 = map10 == null ? null : map10.get("scaleY");
                    v4 v4Var2 = new v4();
                    v4Var2.e = 0.0f;
                    v4Var2.d = 0.0f;
                    v4Var2.c = 0.0f;
                    v4Var2.b = 0.0f;
                    v4Var2.a = 0.0f;
                    v4Var2.b(m5Var2, fA2);
                    v4Var2.e(m5Var5, m5Var, fA2);
                    v4Var2.d(m5Var3, m5Var4, fA2);
                    if (b5Var3 != null) {
                        v4Var2.e = b5Var3.b(fA2);
                    }
                    if (b5Var != null) {
                        v4Var2.c = b5Var.b(fA2);
                    }
                    if (b5Var2 != null) {
                        v4Var2.d = b5Var2.b(fA2);
                    }
                    v4Var2.c(b5Var4, b5Var5, fA2);
                    p4 p4Var = i5Var.i;
                    if (p4Var != null) {
                        double[] dArr2 = i5Var.n;
                        if (dArr2.length > 0) {
                            double d = fA2;
                            p4Var.c(d, dArr2);
                            i5Var.i.f(d, i5Var.o);
                            v4Var = v4Var2;
                            i8 = i6;
                            fArr3 = fArr5;
                            f3 = f5;
                            i5Var.d.w(f5, f4, fArr5, i5Var.m, i5Var.o, i5Var.n);
                        } else {
                            v4Var = v4Var2;
                            f3 = f5;
                            fArr3 = fArr5;
                            i8 = i6;
                        }
                        v4Var.a(f3, f4, width2, height2, fArr3);
                        i7 = i8;
                        f2 = f3;
                    } else if (i5Var.h != null) {
                        double dA = i5Var.a(fA2, i5Var.u);
                        i5Var.h[0].f(dA, i5Var.o);
                        i5Var.h[0].c(dA, i5Var.n);
                        float f8 = i5Var.u[0];
                        int i13 = 0;
                        while (true) {
                            dArr = i5Var.o;
                            if (i13 >= dArr.length) {
                                break;
                            }
                            dArr[i13] = dArr[i13] * f8;
                            i13++;
                        }
                        i7 = i6;
                        fArr3 = fArr5;
                        f2 = f5;
                        i5Var.d.w(f5, f4, fArr5, i5Var.m, dArr, i5Var.n);
                        v4Var2.a(f2, f4, width2, height2, fArr3);
                    } else {
                        k5 k5Var = i5Var.e;
                        b5 b5Var6 = b5Var5;
                        float f9 = k5Var.i;
                        k5 k5Var2 = i5Var.d;
                        b5 b5Var7 = b5Var4;
                        float f10 = f9 - k5Var2.i;
                        b5 b5Var8 = b5Var2;
                        float f11 = k5Var.j - k5Var2.j;
                        b5 b5Var9 = b5Var;
                        float f12 = k5Var.k - k5Var2.k;
                        float f13 = (k5Var.l - k5Var2.l) + f11;
                        fArr5[0] = ((f12 + f10) * f5) + ((1.0f - f5) * f10);
                        fArr5[1] = (f13 * f4) + ((1.0f - f4) * f11);
                        v4Var2.e = 0.0f;
                        v4Var2.d = 0.0f;
                        v4Var2.c = 0.0f;
                        v4Var2.b = 0.0f;
                        v4Var2.a = 0.0f;
                        v4Var2.b(m5Var2, fA2);
                        v4Var2.e(m5Var5, m5Var, fA2);
                        v4Var2.d(m5Var3, m5Var4, fA2);
                        if (b5Var3 != null) {
                            v4Var2.e = b5Var3.b(fA2);
                        }
                        if (b5Var9 != null) {
                            v4Var2.c = b5Var9.b(fA2);
                        }
                        if (b5Var8 != null) {
                            v4Var2.d = b5Var8.b(fA2);
                        }
                        v4Var2.c(b5Var7, b5Var6, fA2);
                        i4 = i6;
                        fArr2 = fArr5;
                        v4Var2.a(f5, f4, width2, height2, fArr5);
                    }
                    i4 = i7;
                    f5 = f2;
                    fArr2 = fArr3;
                } else {
                    i = width;
                    i2 = height;
                    f = f7;
                    fArr = fArr4;
                    i3 = i10;
                    i4 = i12;
                    fArr2 = fArr5;
                    i5 = i11;
                    i5Var.b(f6, f5, f4, fArr2);
                }
                if (i4 < 2) {
                    fArr2[0] = fArr2[0] * f;
                    fArr2[1] = fArr2[1] * f;
                }
                motionTelltales = this;
                motionTelltales.s.mapVectors(motionTelltales.r);
                width = i;
                float f14 = width * f5;
                height = i2;
                float f15 = height * f4;
                float[] fArr6 = motionTelltales.r;
                float f16 = fArr6[0];
                float f17 = motionTelltales.v;
                float f18 = f14 - (f16 * f17);
                float f19 = f15 - (fArr6[1] * f17);
                motionTelltales.s.mapVectors(fArr6);
                canvas.drawLine(f14, f15, f18, f19, motionTelltales.p);
                i11 = i5 + 1;
                fArr4 = fArr;
                i10 = i3;
                i9 = 5;
            }
            i10++;
            i9 = 5;
        }
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        postInvalidate();
    }

    public void setText(CharSequence charSequence) {
        this.j = charSequence.toString();
        requestLayout();
    }

    public MotionTelltales(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.p = new Paint();
        this.r = new float[2];
        this.s = new Matrix();
        this.t = 0;
        this.u = -65281;
        this.v = 0.25f;
        a(context, attributeSet);
    }

    public MotionTelltales(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.p = new Paint();
        this.r = new float[2];
        this.s = new Matrix();
        this.t = 0;
        this.u = -65281;
        this.v = 0.25f;
        a(context, attributeSet);
    }
}
