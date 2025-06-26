package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Constraints;
import androidx.constraintlayout.widget.R$styleable;
import androidx.core.widget.NestedScrollView;
import defpackage.a7;
import defpackage.c6;
import defpackage.c7;
import defpackage.ca;
import defpackage.d0;
import defpackage.d6;
import defpackage.e6;
import defpackage.f6;
import defpackage.g6;
import defpackage.h5;
import defpackage.h6;
import defpackage.i5;
import defpackage.j5;
import defpackage.j6;
import defpackage.jo;
import defpackage.k5;
import defpackage.l5;
import defpackage.o5;
import defpackage.p5;
import defpackage.q5;
import defpackage.u4;
import defpackage.w4;
import defpackage.z4;
import defpackage.z5;
import defpackage.z6;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes.dex */
public class MotionLayout extends ConstraintLayout implements ca {
    public static boolean G0;
    public int A;
    public i A0;
    public int B;
    public d B0;
    public int C;
    public boolean C0;
    public boolean D;
    public RectF D0;
    public HashMap<View, i5> E;
    public View E0;
    public long F;
    public ArrayList<Integer> F0;
    public float G;
    public float H;
    public float I;
    public long J;
    public float K;
    public boolean L;
    public boolean M;
    public h N;
    public float O;
    public float P;
    public int Q;
    public c R;
    public boolean S;
    public u4 T;
    public b U;
    public w4 V;
    public int W;
    public int a0;
    public boolean b0;
    public float c0;
    public float d0;
    public long e0;
    public float f0;
    public boolean g0;
    public ArrayList<MotionHelper> h0;
    public ArrayList<MotionHelper> i0;
    public ArrayList<h> j0;
    public int k0;
    public long l0;
    public float m0;
    public int n0;
    public float o0;
    public boolean p0;
    public int q0;
    public int r0;
    public int s0;
    public int t0;
    public int u0;
    public l5 v;
    public int v0;
    public Interpolator w;
    public float w0;
    public float x;
    public z4 x0;
    public int y;
    public boolean y0;
    public int z;
    public g z0;

    public class a implements Runnable {
        public final /* synthetic */ View e;

        public a(MotionLayout motionLayout, View view) {
            this.e = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.e.setNestedScrollingEnabled(true);
        }
    }

    public class b extends j5 {
        public float a = 0.0f;
        public float b = 0.0f;
        public float c;

        public b() {
        }

        @Override // defpackage.j5
        public float a() {
            return MotionLayout.this.x;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = this.a;
            if (f2 > 0.0f) {
                float f3 = this.c;
                if (f2 / f3 < f) {
                    f = f2 / f3;
                }
                MotionLayout.this.x = f2 - (f3 * f);
                return ((f2 * f) - (((f3 * f) * f) / 2.0f)) + this.b;
            }
            float f4 = this.c;
            if ((-f2) / f4 < f) {
                f = (-f2) / f4;
            }
            MotionLayout.this.x = (f4 * f) + f2;
            return (((f4 * f) * f) / 2.0f) + (f2 * f) + this.b;
        }
    }

    public class c {
        public float[] a;
        public int[] b;
        public float[] c;
        public Path d;
        public Paint e;
        public Paint f;
        public Paint g;
        public Paint h;
        public Paint i;
        public float[] j;
        public DashPathEffect k;
        public int l;
        public Rect m = new Rect();
        public int n = 1;

        public c() {
            Paint paint = new Paint();
            this.e = paint;
            paint.setAntiAlias(true);
            this.e.setColor(-21965);
            this.e.setStrokeWidth(2.0f);
            this.e.setStyle(Paint.Style.STROKE);
            Paint paint2 = new Paint();
            this.f = paint2;
            paint2.setAntiAlias(true);
            this.f.setColor(-2067046);
            this.f.setStrokeWidth(2.0f);
            this.f.setStyle(Paint.Style.STROKE);
            Paint paint3 = new Paint();
            this.g = paint3;
            paint3.setAntiAlias(true);
            this.g.setColor(-13391360);
            this.g.setStrokeWidth(2.0f);
            this.g.setStyle(Paint.Style.STROKE);
            Paint paint4 = new Paint();
            this.h = paint4;
            paint4.setAntiAlias(true);
            this.h.setColor(-13391360);
            this.h.setTextSize(MotionLayout.this.getContext().getResources().getDisplayMetrics().density * 12.0f);
            this.j = new float[8];
            Paint paint5 = new Paint();
            this.i = paint5;
            paint5.setAntiAlias(true);
            DashPathEffect dashPathEffect = new DashPathEffect(new float[]{4.0f, 8.0f}, 0.0f);
            this.k = dashPathEffect;
            this.g.setPathEffect(dashPathEffect);
            this.c = new float[100];
            this.b = new int[50];
        }

        public void a(Canvas canvas, int i, int i2, i5 i5Var) {
            int width;
            int height;
            float f;
            float f2;
            int i3;
            if (i == 4) {
                boolean z = false;
                boolean z2 = false;
                for (int i4 = 0; i4 < this.l; i4++) {
                    int[] iArr = this.b;
                    if (iArr[i4] == 1) {
                        z = true;
                    }
                    if (iArr[i4] == 2) {
                        z2 = true;
                    }
                }
                if (z) {
                    d(canvas);
                }
                if (z2) {
                    b(canvas);
                }
            }
            if (i == 2) {
                d(canvas);
            }
            if (i == 3) {
                b(canvas);
            }
            canvas.drawLines(this.a, this.e);
            View view = i5Var.a;
            if (view != null) {
                width = view.getWidth();
                height = i5Var.a.getHeight();
            } else {
                width = 0;
                height = 0;
            }
            int i5 = 1;
            while (i5 < i2 - 1) {
                if (i == 4 && this.b[i5 - 1] == 0) {
                    i3 = i5;
                } else {
                    float[] fArr = this.c;
                    int i6 = i5 * 2;
                    float f3 = fArr[i6];
                    float f4 = fArr[i6 + 1];
                    this.d.reset();
                    this.d.moveTo(f3, f4 + 10.0f);
                    this.d.lineTo(f3 + 10.0f, f4);
                    this.d.lineTo(f3, f4 - 10.0f);
                    this.d.lineTo(f3 - 10.0f, f4);
                    this.d.close();
                    int i7 = i5 - 1;
                    i5Var.t.get(i7);
                    if (i == 4) {
                        int[] iArr2 = this.b;
                        if (iArr2[i7] == 1) {
                            e(canvas, f3 - 0.0f, f4 - 0.0f);
                        } else if (iArr2[i7] == 2) {
                            c(canvas, f3 - 0.0f, f4 - 0.0f);
                        } else {
                            if (iArr2[i7] == 3) {
                                f = f4;
                                f2 = f3;
                                i3 = i5;
                                f(canvas, f3 - 0.0f, f4 - 0.0f, width, height);
                            }
                            canvas.drawPath(this.d, this.i);
                        }
                        f = f4;
                        f2 = f3;
                        i3 = i5;
                        canvas.drawPath(this.d, this.i);
                    } else {
                        f = f4;
                        f2 = f3;
                        i3 = i5;
                    }
                    if (i == 2) {
                        e(canvas, f2 - 0.0f, f - 0.0f);
                    }
                    if (i == 3) {
                        c(canvas, f2 - 0.0f, f - 0.0f);
                    }
                    if (i == 6) {
                        f(canvas, f2 - 0.0f, f - 0.0f, width, height);
                    }
                    canvas.drawPath(this.d, this.i);
                }
                i5 = i3 + 1;
            }
            float[] fArr2 = this.a;
            if (fArr2.length > 1) {
                canvas.drawCircle(fArr2[0], fArr2[1], 8.0f, this.f);
                float[] fArr3 = this.a;
                canvas.drawCircle(fArr3[fArr3.length - 2], fArr3[fArr3.length - 1], 8.0f, this.f);
            }
        }

        public final void b(Canvas canvas) {
            float[] fArr = this.a;
            float f = fArr[0];
            float f2 = fArr[1];
            float f3 = fArr[fArr.length - 2];
            float f4 = fArr[fArr.length - 1];
            canvas.drawLine(Math.min(f, f3), Math.max(f2, f4), Math.max(f, f3), Math.max(f2, f4), this.g);
            canvas.drawLine(Math.min(f, f3), Math.min(f2, f4), Math.min(f, f3), Math.max(f2, f4), this.g);
        }

        public final void c(Canvas canvas, float f, float f2) {
            float[] fArr = this.a;
            float f3 = fArr[0];
            float f4 = fArr[1];
            float f5 = fArr[fArr.length - 2];
            float f6 = fArr[fArr.length - 1];
            float fMin = Math.min(f3, f5);
            float fMax = Math.max(f4, f6);
            float fMin2 = f - Math.min(f3, f5);
            float fMax2 = Math.max(f4, f6) - f2;
            StringBuilder sbZ = jo.z("");
            sbZ.append(((int) (((fMin2 * 100.0f) / Math.abs(f5 - f3)) + 0.5d)) / 100.0f);
            String string = sbZ.toString();
            g(string, this.h);
            canvas.drawText(string, ((fMin2 / 2.0f) - (this.m.width() / 2)) + fMin, f2 - 20.0f, this.h);
            canvas.drawLine(f, f2, Math.min(f3, f5), f2, this.g);
            StringBuilder sbZ2 = jo.z("");
            sbZ2.append(((int) (((fMax2 * 100.0f) / Math.abs(f6 - f4)) + 0.5d)) / 100.0f);
            String string2 = sbZ2.toString();
            g(string2, this.h);
            canvas.drawText(string2, f + 5.0f, fMax - ((fMax2 / 2.0f) - (this.m.height() / 2)), this.h);
            canvas.drawLine(f, f2, f, Math.max(f4, f6), this.g);
        }

        public final void d(Canvas canvas) {
            float[] fArr = this.a;
            canvas.drawLine(fArr[0], fArr[1], fArr[fArr.length - 2], fArr[fArr.length - 1], this.g);
        }

        public final void e(Canvas canvas, float f, float f2) {
            float[] fArr = this.a;
            float f3 = fArr[0];
            float f4 = fArr[1];
            float f5 = fArr[fArr.length - 2];
            float f6 = fArr[fArr.length - 1];
            float fHypot = (float) Math.hypot(f3 - f5, f4 - f6);
            float f7 = f5 - f3;
            float f8 = f6 - f4;
            float f9 = (((f2 - f4) * f8) + ((f - f3) * f7)) / (fHypot * fHypot);
            float f10 = f3 + (f7 * f9);
            float f11 = f4 + (f9 * f8);
            Path path = new Path();
            path.moveTo(f, f2);
            path.lineTo(f10, f11);
            float fHypot2 = (float) Math.hypot(f10 - f, f11 - f2);
            StringBuilder sbZ = jo.z("");
            sbZ.append(((int) ((fHypot2 * 100.0f) / fHypot)) / 100.0f);
            String string = sbZ.toString();
            g(string, this.h);
            canvas.drawTextOnPath(string, path, (fHypot2 / 2.0f) - (this.m.width() / 2), -20.0f, this.h);
            canvas.drawLine(f, f2, f10, f11, this.g);
        }

        public final void f(Canvas canvas, float f, float f2, int i, int i2) {
            StringBuilder sbZ = jo.z("");
            sbZ.append(((int) ((((f - (i / 2)) * 100.0f) / (MotionLayout.this.getWidth() - i)) + 0.5d)) / 100.0f);
            String string = sbZ.toString();
            g(string, this.h);
            canvas.drawText(string, ((f / 2.0f) - (this.m.width() / 2)) + 0.0f, f2 - 20.0f, this.h);
            canvas.drawLine(f, f2, Math.min(0.0f, 1.0f), f2, this.g);
            StringBuilder sbZ2 = jo.z("");
            sbZ2.append(((int) ((((f2 - (i2 / 2)) * 100.0f) / (MotionLayout.this.getHeight() - i2)) + 0.5d)) / 100.0f);
            String string2 = sbZ2.toString();
            g(string2, this.h);
            canvas.drawText(string2, f + 5.0f, 0.0f - ((f2 / 2.0f) - (this.m.height() / 2)), this.h);
            canvas.drawLine(f, f2, f, Math.max(0.0f, 1.0f), this.g);
        }

        public void g(String str, Paint paint) {
            paint.getTextBounds(str, 0, str.length(), this.m);
        }
    }

    public class d {
        public d6 a = new d6();
        public d6 b = new d6();
        public a7 c = null;
        public a7 d = null;
        public int e;
        public int f;

        public d() {
        }

        public void a() {
            int childCount = MotionLayout.this.getChildCount();
            MotionLayout.this.E.clear();
            for (int i = 0; i < childCount; i++) {
                View childAt = MotionLayout.this.getChildAt(i);
                MotionLayout.this.E.put(childAt, new i5(childAt));
            }
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt2 = MotionLayout.this.getChildAt(i2);
                i5 i5Var = MotionLayout.this.E.get(childAt2);
                if (i5Var != null) {
                    if (this.c != null) {
                        c6 c6VarC = c(this.a, childAt2);
                        if (c6VarC != null) {
                            a7 a7Var = this.c;
                            k5 k5Var = i5Var.d;
                            k5Var.g = 0.0f;
                            k5Var.h = 0.0f;
                            i5Var.d(k5Var);
                            i5Var.d.t(c6VarC.u(), c6VarC.v(), c6VarC.t(), c6VarC.n());
                            a7.a aVarG = a7Var.g(i5Var.b);
                            i5Var.d.i(aVarG);
                            i5Var.j = aVarG.c.f;
                            i5Var.f.l(c6VarC, a7Var, i5Var.b);
                        } else if (MotionLayout.this.Q != 0) {
                            Log.e("MotionLayout", d0.h.D() + "no widget for  " + d0.h.F(childAt2) + " (" + childAt2.getClass().getName() + ")");
                        }
                    }
                    if (this.d != null) {
                        c6 c6VarC2 = c(this.b, childAt2);
                        if (c6VarC2 != null) {
                            a7 a7Var2 = this.d;
                            k5 k5Var2 = i5Var.e;
                            k5Var2.g = 1.0f;
                            k5Var2.h = 1.0f;
                            i5Var.d(k5Var2);
                            i5Var.e.t(c6VarC2.u(), c6VarC2.v(), c6VarC2.t(), c6VarC2.n());
                            i5Var.e.i(a7Var2.g(i5Var.b));
                            i5Var.g.l(c6VarC2, a7Var2, i5Var.b);
                        } else if (MotionLayout.this.Q != 0) {
                            Log.e("MotionLayout", d0.h.D() + "no widget for  " + d0.h.F(childAt2) + " (" + childAt2.getClass().getName() + ")");
                        }
                    }
                }
            }
        }

        public void b(d6 d6Var, d6 d6Var2) {
            ArrayList<c6> arrayList = d6Var.C0;
            HashMap<c6, c6> map = new HashMap<>();
            map.put(d6Var, d6Var2);
            d6Var2.C0.clear();
            d6Var2.i(d6Var, map);
            Iterator<c6> it = arrayList.iterator();
            while (it.hasNext()) {
                c6 next = it.next();
                c6 z5Var = next instanceof z5 ? new z5() : next instanceof f6 ? new f6() : next instanceof e6 ? new e6() : next instanceof g6 ? new h6() : new c6();
                d6Var2.a(z5Var);
                map.put(next, z5Var);
            }
            Iterator<c6> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                c6 next2 = it2.next();
                map.get(next2).i(next2, map);
            }
        }

        public c6 c(d6 d6Var, View view) {
            if (d6Var.c0 == view) {
                return d6Var;
            }
            ArrayList<c6> arrayList = d6Var.C0;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                c6 c6Var = arrayList.get(i);
                if (c6Var.c0 == view) {
                    return c6Var;
                }
            }
            return null;
        }

        public void d(a7 a7Var, a7 a7Var2) {
            c6.a aVar = c6.a.WRAP_CONTENT;
            this.c = a7Var;
            this.d = a7Var2;
            this.a = new d6();
            this.b = new d6();
            d6 d6Var = this.a;
            MotionLayout motionLayout = MotionLayout.this;
            boolean z = MotionLayout.G0;
            d6Var.Q(motionLayout.g.F0);
            this.b.Q(MotionLayout.this.g.F0);
            this.a.C0.clear();
            this.b.C0.clear();
            b(MotionLayout.this.g, this.a);
            b(MotionLayout.this.g, this.b);
            if (MotionLayout.this.I > 0.5d) {
                if (a7Var != null) {
                    f(this.a, a7Var);
                }
                f(this.b, a7Var2);
            } else {
                f(this.b, a7Var2);
                if (a7Var != null) {
                    f(this.a, a7Var);
                }
            }
            this.a.G0 = MotionLayout.this.n();
            this.a.S();
            this.b.G0 = MotionLayout.this.n();
            this.b.S();
            ViewGroup.LayoutParams layoutParams = MotionLayout.this.getLayoutParams();
            if (layoutParams != null) {
                if (layoutParams.width == -2) {
                    this.a.L[0] = aVar;
                    this.b.L[0] = aVar;
                }
                if (layoutParams.height == -2) {
                    this.a.L[1] = aVar;
                    this.b.L[1] = aVar;
                }
            }
        }

        public void e() {
            MotionLayout motionLayout = MotionLayout.this;
            int i = motionLayout.B;
            int i2 = motionLayout.C;
            int mode = View.MeasureSpec.getMode(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            MotionLayout motionLayout2 = MotionLayout.this;
            motionLayout2.u0 = mode;
            motionLayout2.v0 = mode2;
            int optimizationLevel = motionLayout2.getOptimizationLevel();
            MotionLayout motionLayout3 = MotionLayout.this;
            if (motionLayout3.z == motionLayout3.getStartState()) {
                MotionLayout.this.q(this.b, optimizationLevel, i, i2);
                if (this.c != null) {
                    MotionLayout.this.q(this.a, optimizationLevel, i, i2);
                }
            } else {
                if (this.c != null) {
                    MotionLayout.this.q(this.a, optimizationLevel, i, i2);
                }
                MotionLayout.this.q(this.b, optimizationLevel, i, i2);
            }
            int i3 = 0;
            boolean z = true;
            if (((MotionLayout.this.getParent() instanceof MotionLayout) && mode == 1073741824 && mode2 == 1073741824) ? false : true) {
                MotionLayout motionLayout4 = MotionLayout.this;
                motionLayout4.u0 = mode;
                motionLayout4.v0 = mode2;
                if (motionLayout4.z == motionLayout4.getStartState()) {
                    MotionLayout.this.q(this.b, optimizationLevel, i, i2);
                    if (this.c != null) {
                        MotionLayout.this.q(this.a, optimizationLevel, i, i2);
                    }
                } else {
                    if (this.c != null) {
                        MotionLayout.this.q(this.a, optimizationLevel, i, i2);
                    }
                    MotionLayout.this.q(this.b, optimizationLevel, i, i2);
                }
                MotionLayout.this.q0 = this.a.t();
                MotionLayout.this.r0 = this.a.n();
                MotionLayout.this.s0 = this.b.t();
                MotionLayout.this.t0 = this.b.n();
                MotionLayout motionLayout5 = MotionLayout.this;
                motionLayout5.p0 = (motionLayout5.q0 == motionLayout5.s0 && motionLayout5.r0 == motionLayout5.t0) ? false : true;
            }
            MotionLayout motionLayout6 = MotionLayout.this;
            int i4 = motionLayout6.q0;
            int i5 = motionLayout6.r0;
            int i6 = motionLayout6.u0;
            if (i6 == Integer.MIN_VALUE || i6 == 0) {
                i4 = (int) ((motionLayout6.w0 * (motionLayout6.s0 - i4)) + i4);
            }
            int i7 = motionLayout6.v0;
            if (i7 == Integer.MIN_VALUE || i7 == 0) {
                i5 = (int) ((motionLayout6.w0 * (motionLayout6.t0 - i5)) + i5);
            }
            int i8 = i5;
            d6 d6Var = this.a;
            motionLayout6.p(i, i2, i4, i8, d6Var.P0 || this.b.P0, d6Var.Q0 || this.b.Q0);
            MotionLayout motionLayout7 = MotionLayout.this;
            int childCount = motionLayout7.getChildCount();
            motionLayout7.B0.a();
            motionLayout7.M = true;
            int width = motionLayout7.getWidth();
            int height = motionLayout7.getHeight();
            l5.b bVar = motionLayout7.v.c;
            int i9 = bVar != null ? bVar.p : -1;
            if (i9 != -1) {
                for (int i10 = 0; i10 < childCount; i10++) {
                    i5 i5Var = motionLayout7.E.get(motionLayout7.getChildAt(i10));
                    if (i5Var != null) {
                        i5Var.A = i9;
                    }
                }
            }
            for (int i11 = 0; i11 < childCount; i11++) {
                i5 i5Var2 = motionLayout7.E.get(motionLayout7.getChildAt(i11));
                if (i5Var2 != null) {
                    motionLayout7.v.g(i5Var2);
                    i5Var2.e(width, height, motionLayout7.getNanoTime());
                }
            }
            l5.b bVar2 = motionLayout7.v.c;
            float f = bVar2 != null ? bVar2.i : 0.0f;
            if (f != 0.0f) {
                boolean z2 = ((double) f) < 0.0d;
                float fAbs = Math.abs(f);
                float fMax = -3.4028235E38f;
                float fMin = Float.MAX_VALUE;
                int i12 = 0;
                float fMin2 = Float.MAX_VALUE;
                float fMax2 = -3.4028235E38f;
                while (true) {
                    if (i12 >= childCount) {
                        z = false;
                        break;
                    }
                    i5 i5Var3 = motionLayout7.E.get(motionLayout7.getChildAt(i12));
                    if (!Float.isNaN(i5Var3.j)) {
                        break;
                    }
                    k5 k5Var = i5Var3.e;
                    float f2 = k5Var.i;
                    float f3 = k5Var.j;
                    float f4 = z2 ? f3 - f2 : f3 + f2;
                    fMin2 = Math.min(fMin2, f4);
                    fMax2 = Math.max(fMax2, f4);
                    i12++;
                }
                if (!z) {
                    while (i3 < childCount) {
                        i5 i5Var4 = motionLayout7.E.get(motionLayout7.getChildAt(i3));
                        k5 k5Var2 = i5Var4.e;
                        float f5 = k5Var2.i;
                        float f6 = k5Var2.j;
                        float f7 = z2 ? f6 - f5 : f6 + f5;
                        i5Var4.l = 1.0f / (1.0f - fAbs);
                        i5Var4.k = fAbs - (((f7 - fMin2) * fAbs) / (fMax2 - fMin2));
                        i3++;
                    }
                    return;
                }
                for (int i13 = 0; i13 < childCount; i13++) {
                    i5 i5Var5 = motionLayout7.E.get(motionLayout7.getChildAt(i13));
                    if (!Float.isNaN(i5Var5.j)) {
                        fMin = Math.min(fMin, i5Var5.j);
                        fMax = Math.max(fMax, i5Var5.j);
                    }
                }
                while (i3 < childCount) {
                    i5 i5Var6 = motionLayout7.E.get(motionLayout7.getChildAt(i3));
                    if (!Float.isNaN(i5Var6.j)) {
                        i5Var6.l = 1.0f / (1.0f - fAbs);
                        if (z2) {
                            i5Var6.k = fAbs - (((fMax - i5Var6.j) / (fMax - fMin)) * fAbs);
                        } else {
                            i5Var6.k = fAbs - (((i5Var6.j - fMin) * fAbs) / (fMax - fMin));
                        }
                    }
                    i3++;
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void f(d6 d6Var, a7 a7Var) {
            SparseArray<c6> sparseArray = new SparseArray<>();
            Constraints.a aVar = new Constraints.a(-2, -2);
            sparseArray.clear();
            sparseArray.put(0, d6Var);
            sparseArray.put(MotionLayout.this.getId(), d6Var);
            Iterator<c6> it = d6Var.C0.iterator();
            while (it.hasNext()) {
                c6 next = it.next();
                sparseArray.put(((View) next.c0).getId(), next);
            }
            Iterator<c6> it2 = d6Var.C0.iterator();
            while (it2.hasNext()) {
                c6 next2 = it2.next();
                View view = (View) next2.c0;
                int id = view.getId();
                if (a7Var.c.containsKey(Integer.valueOf(id))) {
                    a7Var.c.get(Integer.valueOf(id)).a(aVar);
                }
                next2.I(a7Var.g(view.getId()).d.c);
                next2.D(a7Var.g(view.getId()).d.d);
                if (view instanceof ConstraintHelper) {
                    ConstraintHelper constraintHelper = (ConstraintHelper) view;
                    int id2 = constraintHelper.getId();
                    if (a7Var.c.containsKey(Integer.valueOf(id2))) {
                        a7.a aVar2 = a7Var.c.get(Integer.valueOf(id2));
                        if (next2 instanceof h6) {
                            constraintHelper.l(aVar2, (h6) next2, aVar, sparseArray);
                        }
                    }
                    if (view instanceof Barrier) {
                        ((Barrier) view).r();
                    }
                }
                aVar.resolveLayoutDirection(MotionLayout.this.getLayoutDirection());
                MotionLayout motionLayout = MotionLayout.this;
                boolean z = MotionLayout.G0;
                motionLayout.b(false, view, next2, aVar, sparseArray);
                if (a7Var.g(view.getId()).b.c == 1) {
                    next2.e0 = view.getVisibility();
                } else {
                    next2.e0 = a7Var.g(view.getId()).b.b;
                }
            }
            Iterator<c6> it3 = d6Var.C0.iterator();
            while (it3.hasNext()) {
                c6 next3 = it3.next();
                if (next3 instanceof j6) {
                    ConstraintHelper constraintHelper2 = (ConstraintHelper) next3.c0;
                    g6 g6Var = (g6) next3;
                    constraintHelper2.q(g6Var, sparseArray);
                    j6 j6Var = (j6) g6Var;
                    for (int i = 0; i < j6Var.D0; i++) {
                        c6 c6Var = j6Var.C0[i];
                    }
                }
            }
        }
    }

    public interface e {
    }

    public static class f implements e {
        public static f b = new f();
        public VelocityTracker a;
    }

    public class g {
        public float a = Float.NaN;
        public float b = Float.NaN;
        public int c = -1;
        public int d = -1;

        public g() {
        }

        public void a() {
            int i = this.c;
            if (i != -1 || this.d != -1) {
                if (i == -1) {
                    MotionLayout.this.C(this.d);
                } else {
                    int i2 = this.d;
                    if (i2 == -1) {
                        MotionLayout.this.setState(i, -1, -1);
                    } else {
                        MotionLayout.this.setTransition(i, i2);
                    }
                }
                MotionLayout.this.setState(i.SETUP);
            }
            if (Float.isNaN(this.b)) {
                if (Float.isNaN(this.a)) {
                    return;
                }
                MotionLayout.this.setProgress(this.a);
            } else {
                MotionLayout.this.setProgress(this.a, this.b);
                this.a = Float.NaN;
                this.b = Float.NaN;
                this.c = -1;
                this.d = -1;
            }
        }
    }

    public interface h {
        void a(MotionLayout motionLayout, int i, int i2, float f);

        void b(MotionLayout motionLayout, int i, int i2);

        void c(MotionLayout motionLayout, int i, boolean z, float f);

        void d(MotionLayout motionLayout, int i);
    }

    public enum i {
        UNDEFINED,
        SETUP,
        MOVING,
        FINISHED
    }

    public MotionLayout(Context context) {
        super(context);
        this.x = 0.0f;
        this.y = -1;
        this.z = -1;
        this.A = -1;
        this.B = 0;
        this.C = 0;
        this.D = true;
        this.E = new HashMap<>();
        this.F = 0L;
        this.G = 1.0f;
        this.H = 0.0f;
        this.I = 0.0f;
        this.K = 0.0f;
        this.M = false;
        this.Q = 0;
        this.S = false;
        this.T = new u4();
        this.U = new b();
        this.b0 = false;
        this.g0 = false;
        this.h0 = null;
        this.i0 = null;
        this.j0 = null;
        this.k0 = 0;
        this.l0 = -1L;
        this.m0 = 0.0f;
        this.n0 = 0;
        this.o0 = 0.0f;
        this.p0 = false;
        this.x0 = new z4();
        this.y0 = false;
        this.A0 = i.UNDEFINED;
        this.B0 = new d();
        this.C0 = false;
        this.D0 = new RectF();
        this.E0 = null;
        this.F0 = new ArrayList<>();
        x(null);
    }

    public void A() {
        this.B0.e();
        invalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0080  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void B(int r13, float r14, float r15) {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionLayout.B(int, float, float):void");
    }

    public void C(int i2) {
        c7 c7Var;
        if (!isAttachedToWindow()) {
            if (this.z0 == null) {
                this.z0 = new g();
            }
            this.z0.d = i2;
            return;
        }
        l5 l5Var = this.v;
        if (l5Var != null && (c7Var = l5Var.b) != null) {
            int i3 = this.z;
            float f2 = -1;
            c7.a aVar = c7Var.b.get(i2);
            if (aVar == null) {
                i3 = i2;
            } else if (f2 != -1.0f && f2 != -1.0f) {
                Iterator<c7.b> it = aVar.b.iterator();
                c7.b bVar = null;
                while (true) {
                    if (it.hasNext()) {
                        c7.b next = it.next();
                        if (next.a(f2, f2)) {
                            if (i3 == next.e) {
                                break;
                            } else {
                                bVar = next;
                            }
                        }
                    } else {
                        i3 = bVar != null ? bVar.e : aVar.c;
                    }
                }
            } else if (aVar.c != i3) {
                Iterator<c7.b> it2 = aVar.b.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        if (i3 == it2.next().e) {
                            break;
                        }
                    } else {
                        i3 = aVar.c;
                        break;
                    }
                }
            }
            if (i3 != -1) {
                i2 = i3;
            }
        }
        int i4 = this.z;
        if (i4 == i2) {
            return;
        }
        if (this.y == i2) {
            r(0.0f);
            return;
        }
        if (this.A == i2) {
            r(1.0f);
            return;
        }
        this.A = i2;
        if (i4 != -1) {
            setTransition(i4, i2);
            r(1.0f);
            this.I = 0.0f;
            r(1.0f);
            return;
        }
        this.S = false;
        this.K = 1.0f;
        this.H = 0.0f;
        this.I = 0.0f;
        this.J = getNanoTime();
        this.F = getNanoTime();
        this.L = false;
        this.w = null;
        this.G = this.v.c() / 1000.0f;
        this.y = -1;
        this.v.m(-1, this.A);
        this.v.i();
        int childCount = getChildCount();
        this.E.clear();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            this.E.put(childAt, new i5(childAt));
        }
        this.M = true;
        this.B0.d(null, this.v.b(i2));
        A();
        this.B0.a();
        int childCount2 = getChildCount();
        for (int i6 = 0; i6 < childCount2; i6++) {
            View childAt2 = getChildAt(i6);
            i5 i5Var = this.E.get(childAt2);
            if (i5Var != null) {
                k5 k5Var = i5Var.d;
                k5Var.g = 0.0f;
                k5Var.h = 0.0f;
                k5Var.t(childAt2.getX(), childAt2.getY(), childAt2.getWidth(), childAt2.getHeight());
                h5 h5Var = i5Var.f;
                Objects.requireNonNull(h5Var);
                childAt2.getX();
                childAt2.getY();
                childAt2.getWidth();
                childAt2.getHeight();
                h5Var.g = childAt2.getVisibility();
                h5Var.e = childAt2.getVisibility() != 0 ? 0.0f : childAt2.getAlpha();
                h5Var.h = childAt2.getElevation();
                h5Var.i = childAt2.getRotation();
                h5Var.j = childAt2.getRotationX();
                h5Var.k = childAt2.getRotationY();
                h5Var.l = childAt2.getScaleX();
                h5Var.m = childAt2.getScaleY();
                h5Var.n = childAt2.getPivotX();
                h5Var.o = childAt2.getPivotY();
                h5Var.p = childAt2.getTranslationX();
                h5Var.q = childAt2.getTranslationY();
                h5Var.r = childAt2.getTranslationZ();
            }
        }
        int width = getWidth();
        int height = getHeight();
        for (int i7 = 0; i7 < childCount; i7++) {
            i5 i5Var2 = this.E.get(getChildAt(i7));
            this.v.g(i5Var2);
            i5Var2.e(width, height, getNanoTime());
        }
        l5.b bVar2 = this.v.c;
        float f3 = bVar2 != null ? bVar2.i : 0.0f;
        if (f3 != 0.0f) {
            float fMin = Float.MAX_VALUE;
            float fMax = -3.4028235E38f;
            for (int i8 = 0; i8 < childCount; i8++) {
                k5 k5Var2 = this.E.get(getChildAt(i8)).e;
                float f4 = k5Var2.j + k5Var2.i;
                fMin = Math.min(fMin, f4);
                fMax = Math.max(fMax, f4);
            }
            for (int i9 = 0; i9 < childCount; i9++) {
                i5 i5Var3 = this.E.get(getChildAt(i9));
                k5 k5Var3 = i5Var3.e;
                float f5 = k5Var3.i;
                float f6 = k5Var3.j;
                i5Var3.l = 1.0f / (1.0f - f3);
                i5Var3.k = f3 - ((((f5 + f6) - fMin) * f3) / (fMax - fMin));
            }
        }
        this.H = 0.0f;
        this.I = 0.0f;
        this.M = true;
        invalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x02b0  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x02dd  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x02f7  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0307  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x031c  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0326  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0333  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x033f  */
    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void dispatchDraw(android.graphics.Canvas r28) {
        /*
            Method dump skipped, instructions count: 1149
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionLayout.dispatchDraw(android.graphics.Canvas):void");
    }

    public int[] getConstraintSetIds() {
        l5 l5Var = this.v;
        if (l5Var == null) {
            return null;
        }
        int size = l5Var.g.size();
        int[] iArr = new int[size];
        for (int i2 = 0; i2 < size; i2++) {
            iArr[i2] = l5Var.g.keyAt(i2);
        }
        return iArr;
    }

    public int getCurrentState() {
        return this.z;
    }

    public ArrayList<l5.b> getDefinedTransitions() {
        l5 l5Var = this.v;
        if (l5Var == null) {
            return null;
        }
        return l5Var.d;
    }

    public w4 getDesignTool() {
        if (this.V == null) {
            this.V = new w4(this);
        }
        return this.V;
    }

    public int getEndState() {
        return this.A;
    }

    public long getNanoTime() {
        return System.nanoTime();
    }

    public float getProgress() {
        return this.I;
    }

    public int getStartState() {
        return this.y;
    }

    public float getTargetPosition() {
        return this.K;
    }

    public Bundle getTransitionState() {
        if (this.z0 == null) {
            this.z0 = new g();
        }
        g gVar = this.z0;
        MotionLayout motionLayout = MotionLayout.this;
        gVar.d = motionLayout.A;
        gVar.c = motionLayout.y;
        gVar.b = motionLayout.getVelocity();
        gVar.a = MotionLayout.this.getProgress();
        g gVar2 = this.z0;
        Objects.requireNonNull(gVar2);
        Bundle bundle = new Bundle();
        bundle.putFloat("motion.progress", gVar2.a);
        bundle.putFloat("motion.velocity", gVar2.b);
        bundle.putInt("motion.StartState", gVar2.c);
        bundle.putInt("motion.EndState", gVar2.d);
        return bundle;
    }

    public long getTransitionTimeMs() {
        if (this.v != null) {
            this.G = r0.c() / 1000.0f;
        }
        return (long) (this.G * 1000.0f);
    }

    public float getVelocity() {
        return this.x;
    }

    @Override // defpackage.ca
    public void h(View view, int i2, int i3, int i4, int i5, int i6, int[] iArr) {
        if (this.b0 || i2 != 0 || i3 != 0) {
            iArr[0] = iArr[0] + i4;
            iArr[1] = iArr[1] + i5;
        }
        this.b0 = false;
    }

    @Override // defpackage.ba
    public void i(View view, int i2, int i3, int i4, int i5, int i6) {
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return super.isAttachedToWindow();
    }

    @Override // defpackage.ba
    public boolean j(View view, View view2, int i2, int i3) {
        l5.b bVar;
        q5 q5Var;
        l5 l5Var = this.v;
        return (l5Var == null || (bVar = l5Var.c) == null || (q5Var = bVar.l) == null || (q5Var.t & 2) != 0) ? false : true;
    }

    @Override // defpackage.ba
    public void k(View view, View view2, int i2, int i3) {
    }

    @Override // defpackage.ba
    public void l(View view, int i2) {
        q5 q5Var;
        l5 l5Var = this.v;
        if (l5Var == null) {
            return;
        }
        float f2 = this.c0;
        float f3 = this.f0;
        float f4 = f2 / f3;
        float f5 = this.d0 / f3;
        l5.b bVar = l5Var.c;
        if (bVar == null || (q5Var = bVar.l) == null) {
            return;
        }
        q5Var.k = false;
        float progress = q5Var.o.getProgress();
        q5Var.o.v(q5Var.d, progress, q5Var.h, q5Var.g, q5Var.l);
        float f6 = q5Var.i;
        float[] fArr = q5Var.l;
        float f7 = fArr[0];
        float f8 = q5Var.j;
        float f9 = fArr[1];
        float f10 = f6 != 0.0f ? (f4 * f6) / fArr[0] : (f5 * f8) / fArr[1];
        if (!Float.isNaN(f10)) {
            progress += f10 / 3.0f;
        }
        if (progress != 0.0f) {
            boolean z = progress != 1.0f;
            int i3 = q5Var.c;
            if ((i3 != 3) && z) {
                q5Var.o.B(i3, ((double) progress) >= 0.5d ? 1.0f : 0.0f, f10);
            }
        }
    }

    @Override // defpackage.ba
    public void m(View view, int i2, int i3, int[] iArr, int i4) {
        l5.b bVar;
        boolean z;
        q5 q5Var;
        float f2;
        q5 q5Var2;
        q5 q5Var3;
        int i5;
        l5 l5Var = this.v;
        if (l5Var == null || (bVar = l5Var.c) == null || !(!bVar.o)) {
            return;
        }
        if (!z || (q5Var3 = bVar.l) == null || (i5 = q5Var3.e) == -1 || view.getId() == i5) {
            l5 l5Var2 = this.v;
            if (l5Var2 != null) {
                l5.b bVar2 = l5Var2.c;
                if ((bVar2 == null || (q5Var2 = bVar2.l) == null) ? false : q5Var2.r) {
                    float f3 = this.H;
                    if ((f3 == 1.0f || f3 == 0.0f) && view.canScrollVertically(-1)) {
                        return;
                    }
                }
            }
            if (bVar.l != null) {
                q5 q5Var4 = this.v.c.l;
                if ((q5Var4.t & 1) != 0) {
                    float f4 = i2;
                    float f5 = i3;
                    q5Var4.o.v(q5Var4.d, q5Var4.o.getProgress(), q5Var4.h, q5Var4.g, q5Var4.l);
                    float f6 = q5Var4.i;
                    if (f6 != 0.0f) {
                        float[] fArr = q5Var4.l;
                        if (fArr[0] == 0.0f) {
                            fArr[0] = 1.0E-7f;
                        }
                        f2 = (f4 * f6) / fArr[0];
                    } else {
                        float[] fArr2 = q5Var4.l;
                        if (fArr2[1] == 0.0f) {
                            fArr2[1] = 1.0E-7f;
                        }
                        f2 = (f5 * q5Var4.j) / fArr2[1];
                    }
                    float f7 = this.I;
                    if ((f7 <= 0.0f && f2 < 0.0f) || (f7 >= 1.0f && f2 > 0.0f)) {
                        view.setNestedScrollingEnabled(false);
                        view.post(new a(this, view));
                        return;
                    }
                }
            }
            float f8 = this.H;
            long nanoTime = getNanoTime();
            float f9 = i2;
            this.c0 = f9;
            float f10 = i3;
            this.d0 = f10;
            this.f0 = (float) ((nanoTime - this.e0) * 1.0E-9d);
            this.e0 = nanoTime;
            l5.b bVar3 = this.v.c;
            if (bVar3 != null && (q5Var = bVar3.l) != null) {
                float progress = q5Var.o.getProgress();
                if (!q5Var.k) {
                    q5Var.k = true;
                    q5Var.o.setProgress(progress);
                }
                q5Var.o.v(q5Var.d, progress, q5Var.h, q5Var.g, q5Var.l);
                float f11 = q5Var.i;
                float[] fArr3 = q5Var.l;
                if (Math.abs((q5Var.j * fArr3[1]) + (f11 * fArr3[0])) < 0.01d) {
                    float[] fArr4 = q5Var.l;
                    fArr4[0] = 0.01f;
                    fArr4[1] = 0.01f;
                }
                float f12 = q5Var.i;
                float fMax = Math.max(Math.min(progress + (f12 != 0.0f ? (f9 * f12) / q5Var.l[0] : (f10 * q5Var.j) / q5Var.l[1]), 1.0f), 0.0f);
                if (fMax != q5Var.o.getProgress()) {
                    q5Var.o.setProgress(fMax);
                }
            }
            if (f8 != this.H) {
                iArr[0] = i2;
                iArr[1] = i3;
            }
            s(false);
            if (iArr[0] == 0 && iArr[1] == 0) {
                return;
            }
            this.b0 = true;
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public void o(int i2) {
        this.o = null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        int i2;
        boolean z;
        super.onAttachedToWindow();
        l5 l5Var = this.v;
        if (l5Var != null && (i2 = this.z) != -1) {
            a7 a7VarB = l5Var.b(i2);
            l5 l5Var2 = this.v;
            int i3 = 0;
            while (true) {
                if (i3 < l5Var2.g.size()) {
                    int iKeyAt = l5Var2.g.keyAt(i3);
                    int i4 = l5Var2.i.get(iKeyAt);
                    int size = l5Var2.i.size();
                    while (i4 > 0) {
                        if (i4 != iKeyAt) {
                            int i5 = size - 1;
                            if (size >= 0) {
                                i4 = l5Var2.i.get(i4);
                                size = i5;
                            }
                        }
                        z = true;
                        break;
                    }
                    z = false;
                    if (z) {
                        Log.e("MotionScene", "Cannot be derived from yourself");
                        break;
                    } else {
                        l5Var2.l(iKeyAt);
                        i3++;
                    }
                } else {
                    for (int i6 = 0; i6 < l5Var2.g.size(); i6++) {
                        a7 a7VarValueAt = l5Var2.g.valueAt(i6);
                        Objects.requireNonNull(a7VarValueAt);
                        int childCount = getChildCount();
                        for (int i7 = 0; i7 < childCount; i7++) {
                            View childAt = getChildAt(i7);
                            ConstraintLayout.a aVar = (ConstraintLayout.a) childAt.getLayoutParams();
                            int id = childAt.getId();
                            if (a7VarValueAt.b && id == -1) {
                                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                            }
                            if (!a7VarValueAt.c.containsKey(Integer.valueOf(id))) {
                                a7VarValueAt.c.put(Integer.valueOf(id), new a7.a());
                            }
                            a7.a aVar2 = a7VarValueAt.c.get(Integer.valueOf(id));
                            if (!aVar2.d.b) {
                                aVar2.b(id, aVar);
                                if (childAt instanceof ConstraintHelper) {
                                    aVar2.d.e0 = ((ConstraintHelper) childAt).getReferencedIds();
                                    if (childAt instanceof Barrier) {
                                        Barrier barrier = (Barrier) childAt;
                                        a7.b bVar = aVar2.d;
                                        bVar.j0 = barrier.n.F0;
                                        bVar.b0 = barrier.getType();
                                        aVar2.d.c0 = barrier.getMargin();
                                    }
                                }
                                aVar2.d.b = true;
                            }
                            a7.d dVar = aVar2.b;
                            if (!dVar.a) {
                                dVar.b = childAt.getVisibility();
                                aVar2.b.d = childAt.getAlpha();
                                aVar2.b.a = true;
                            }
                            a7.e eVar = aVar2.e;
                            if (!eVar.a) {
                                eVar.a = true;
                                eVar.b = childAt.getRotation();
                                aVar2.e.c = childAt.getRotationX();
                                aVar2.e.d = childAt.getRotationY();
                                aVar2.e.e = childAt.getScaleX();
                                aVar2.e.f = childAt.getScaleY();
                                float pivotX = childAt.getPivotX();
                                float pivotY = childAt.getPivotY();
                                if (pivotX != 0.0d || pivotY != 0.0d) {
                                    a7.e eVar2 = aVar2.e;
                                    eVar2.g = pivotX;
                                    eVar2.h = pivotY;
                                }
                                aVar2.e.i = childAt.getTranslationX();
                                aVar2.e.j = childAt.getTranslationY();
                                aVar2.e.k = childAt.getTranslationZ();
                                a7.e eVar3 = aVar2.e;
                                if (eVar3.l) {
                                    eVar3.m = childAt.getElevation();
                                }
                            }
                        }
                    }
                }
            }
            if (a7VarB != null) {
                a7VarB.c(this, true);
                setConstraintSet(null);
                requestLayout();
            }
            this.y = this.z;
        }
        y();
        g gVar = this.z0;
        if (gVar != null) {
            gVar.a();
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        l5.b bVar;
        q5 q5Var;
        int i2;
        RectF rectFA;
        l5 l5Var = this.v;
        if (l5Var != null && this.D && (bVar = l5Var.c) != null && (!bVar.o) && (q5Var = bVar.l) != null && ((motionEvent.getAction() != 0 || (rectFA = q5Var.a(this, new RectF())) == null || rectFA.contains(motionEvent.getX(), motionEvent.getY())) && (i2 = q5Var.e) != -1)) {
            View view = this.E0;
            if (view == null || view.getId() != i2) {
                this.E0 = findViewById(i2);
            }
            if (this.E0 != null) {
                this.D0.set(r0.getLeft(), this.E0.getTop(), this.E0.getRight(), this.E0.getBottom());
                if (this.D0.contains(motionEvent.getX(), motionEvent.getY()) && !w(0.0f, 0.0f, this.E0, motionEvent)) {
                    return onTouchEvent(motionEvent);
                }
            }
        }
        return false;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        this.y0 = true;
        try {
            if (this.v == null) {
                super.onLayout(z, i2, i3, i4, i5);
                return;
            }
            int i6 = i4 - i2;
            int i7 = i5 - i3;
            if (this.W != i6 || this.a0 != i7) {
                A();
                s(true);
            }
            this.W = i6;
            this.a0 = i7;
        } finally {
            this.y0 = false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0076  */
    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r18, int r19) {
        /*
            Method dump skipped, instructions count: 366
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionLayout.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedFling(View view, float f2, float f3, boolean z) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedPreFling(View view, float f2, float f3) {
        return false;
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i2) {
        q5 q5Var;
        l5 l5Var = this.v;
        if (l5Var != null) {
            boolean zN = n();
            l5Var.o = zN;
            l5.b bVar = l5Var.c;
            if (bVar == null || (q5Var = bVar.l) == null) {
                return;
            }
            q5Var.b(zN);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        e eVar;
        q5 q5Var;
        char c2;
        char c3;
        int i2;
        char c4;
        char c5;
        char c6;
        char c7;
        RectF rectF;
        View viewFindViewById;
        MotionEvent motionEvent2;
        l5.b bVar;
        int iA;
        q5 q5Var2;
        RectF rectFA;
        l5 l5Var = this.v;
        if (l5Var == null || !this.D || !l5Var.n()) {
            return super.onTouchEvent(motionEvent);
        }
        l5 l5Var2 = this.v;
        if (l5Var2.c != null && !(!r3.o)) {
            return super.onTouchEvent(motionEvent);
        }
        int currentState = getCurrentState();
        Objects.requireNonNull(l5Var2);
        RectF rectF2 = new RectF();
        if (l5Var2.n == null) {
            Objects.requireNonNull(l5Var2.a);
            f.b.a = VelocityTracker.obtain();
            l5Var2.n = f.b;
        }
        VelocityTracker velocityTracker = ((f) l5Var2.n).a;
        if (velocityTracker != null) {
            velocityTracker.addMovement(motionEvent);
        }
        if (currentState != -1) {
            int action = motionEvent.getAction();
            if (action == 0) {
                l5Var2.p = motionEvent.getRawX();
                l5Var2.q = motionEvent.getRawY();
                l5Var2.l = motionEvent;
                q5 q5Var3 = l5Var2.c.l;
                if (q5Var3 == null) {
                    return true;
                }
                MotionLayout motionLayout = l5Var2.a;
                int i3 = q5Var3.f;
                if (i3 == -1 || (viewFindViewById = motionLayout.findViewById(i3)) == null) {
                    rectF = null;
                } else {
                    rectF2.set(viewFindViewById.getLeft(), viewFindViewById.getTop(), viewFindViewById.getRight(), viewFindViewById.getBottom());
                    rectF = rectF2;
                }
                if (rectF != null && !rectF.contains(l5Var2.l.getX(), l5Var2.l.getY())) {
                    l5Var2.l = null;
                    return true;
                }
                RectF rectFA2 = l5Var2.c.l.a(l5Var2.a, rectF2);
                if (rectFA2 == null || rectFA2.contains(l5Var2.l.getX(), l5Var2.l.getY())) {
                    l5Var2.m = false;
                } else {
                    l5Var2.m = true;
                }
                q5 q5Var4 = l5Var2.c.l;
                float f2 = l5Var2.p;
                float f3 = l5Var2.q;
                q5Var4.m = f2;
                q5Var4.n = f3;
                return true;
            }
            if (action == 2) {
                float rawY = motionEvent.getRawY() - l5Var2.q;
                float rawX = motionEvent.getRawX() - l5Var2.p;
                if ((rawX == 0.0d && rawY == 0.0d) || (motionEvent2 = l5Var2.l) == null) {
                    return true;
                }
                if (currentState != -1) {
                    c7 c7Var = l5Var2.b;
                    if (c7Var == null || (iA = c7Var.a(currentState, -1, -1)) == -1) {
                        iA = currentState;
                    }
                    ArrayList arrayList = new ArrayList();
                    Iterator<l5.b> it = l5Var2.d.iterator();
                    while (it.hasNext()) {
                        l5.b next = it.next();
                        if (next.d == iA || next.c == iA) {
                            arrayList.add(next);
                        }
                    }
                    RectF rectF3 = new RectF();
                    Iterator it2 = arrayList.iterator();
                    float f4 = 0.0f;
                    bVar = null;
                    while (it2.hasNext()) {
                        l5.b bVar2 = (l5.b) it2.next();
                        if (!bVar2.o && (q5Var2 = bVar2.l) != null) {
                            q5Var2.b(l5Var2.o);
                            RectF rectFA3 = bVar2.l.a(l5Var2.a, rectF3);
                            if ((rectFA3 == null || rectFA3.contains(motionEvent2.getX(), motionEvent2.getY())) && ((rectFA = bVar2.l.a(l5Var2.a, rectF3)) == null || rectFA.contains(motionEvent2.getX(), motionEvent2.getY()))) {
                                q5 q5Var5 = bVar2.l;
                                float f5 = ((q5Var5.j * rawY) + (q5Var5.i * rawX)) * (bVar2.c == currentState ? -1.0f : 1.1f);
                                if (f5 > f4) {
                                    f4 = f5;
                                    bVar = bVar2;
                                }
                            }
                        }
                    }
                } else {
                    bVar = l5Var2.c;
                }
                if (bVar != null) {
                    setTransition(bVar);
                    RectF rectFA4 = l5Var2.c.l.a(l5Var2.a, rectF2);
                    l5Var2.m = (rectFA4 == null || rectFA4.contains(l5Var2.l.getX(), l5Var2.l.getY())) ? false : true;
                    q5 q5Var6 = l5Var2.c.l;
                    float f6 = l5Var2.p;
                    float f7 = l5Var2.q;
                    q5Var6.m = f6;
                    q5Var6.n = f7;
                    q5Var6.k = false;
                }
            }
        }
        l5.b bVar3 = l5Var2.c;
        if (bVar3 != null && (q5Var = bVar3.l) != null && !l5Var2.m) {
            e eVar2 = l5Var2.n;
            i iVar = i.FINISHED;
            f fVar = (f) eVar2;
            VelocityTracker velocityTracker2 = fVar.a;
            if (velocityTracker2 != null) {
                velocityTracker2.addMovement(motionEvent);
            }
            int action2 = motionEvent.getAction();
            if (action2 == 0) {
                q5Var.m = motionEvent.getRawX();
                q5Var.n = motionEvent.getRawY();
                q5Var.k = false;
            } else if (action2 == 1) {
                q5Var.k = false;
                fVar.a.computeCurrentVelocity(1000);
                float xVelocity = fVar.a.getXVelocity();
                float yVelocity = fVar.a.getYVelocity();
                float progress = q5Var.o.getProgress();
                int i4 = q5Var.d;
                if (i4 != -1) {
                    q5Var.o.v(i4, progress, q5Var.h, q5Var.g, q5Var.l);
                    c3 = 0;
                    c2 = 1;
                } else {
                    float fMin = Math.min(q5Var.o.getWidth(), q5Var.o.getHeight());
                    float[] fArr = q5Var.l;
                    c2 = 1;
                    fArr[1] = q5Var.j * fMin;
                    c3 = 0;
                    fArr[0] = fMin * q5Var.i;
                }
                float f8 = q5Var.i;
                float[] fArr2 = q5Var.l;
                float f9 = fArr2[c3];
                float f10 = fArr2[c2];
                float f11 = f8 != 0.0f ? xVelocity / fArr2[c3] : yVelocity / fArr2[c2];
                float f12 = !Float.isNaN(f11) ? (f11 / 3.0f) + progress : progress;
                if (f12 != 0.0f && f12 != 1.0f && (i2 = q5Var.c) != 3) {
                    q5Var.o.B(i2, ((double) f12) < 0.5d ? 0.0f : 1.0f, f11);
                    if (0.0f >= progress || 1.0f <= progress) {
                        q5Var.o.setState(iVar);
                    }
                } else if (0.0f >= f12 || 1.0f <= f12) {
                    q5Var.o.setState(iVar);
                }
            } else if (action2 == 2) {
                float rawY2 = motionEvent.getRawY() - q5Var.n;
                float rawX2 = motionEvent.getRawX() - q5Var.m;
                if (Math.abs((q5Var.j * rawY2) + (q5Var.i * rawX2)) > q5Var.u || q5Var.k) {
                    float progress2 = q5Var.o.getProgress();
                    if (!q5Var.k) {
                        q5Var.k = true;
                        q5Var.o.setProgress(progress2);
                    }
                    int i5 = q5Var.d;
                    if (i5 != -1) {
                        q5Var.o.v(i5, progress2, q5Var.h, q5Var.g, q5Var.l);
                        c5 = 0;
                        c4 = 1;
                    } else {
                        float fMin2 = Math.min(q5Var.o.getWidth(), q5Var.o.getHeight());
                        float[] fArr3 = q5Var.l;
                        c4 = 1;
                        fArr3[1] = q5Var.j * fMin2;
                        c5 = 0;
                        fArr3[0] = fMin2 * q5Var.i;
                    }
                    float f13 = q5Var.i;
                    float[] fArr4 = q5Var.l;
                    if (Math.abs(((q5Var.j * fArr4[c4]) + (f13 * fArr4[c5])) * q5Var.s) < 0.01d) {
                        float[] fArr5 = q5Var.l;
                        c6 = 0;
                        fArr5[0] = 0.01f;
                        c7 = 1;
                        fArr5[1] = 0.01f;
                    } else {
                        c6 = 0;
                        c7 = 1;
                    }
                    float fMax = Math.max(Math.min(progress2 + (q5Var.i != 0.0f ? rawX2 / q5Var.l[c6] : rawY2 / q5Var.l[c7]), 1.0f), 0.0f);
                    if (fMax != q5Var.o.getProgress()) {
                        q5Var.o.setProgress(fMax);
                        fVar.a.computeCurrentVelocity(1000);
                        q5Var.o.x = q5Var.i != 0.0f ? fVar.a.getXVelocity() / q5Var.l[0] : fVar.a.getYVelocity() / q5Var.l[1];
                    } else {
                        q5Var.o.x = 0.0f;
                    }
                    q5Var.m = motionEvent.getRawX();
                    q5Var.n = motionEvent.getRawY();
                }
            }
        }
        l5Var2.p = motionEvent.getRawX();
        l5Var2.q = motionEvent.getRawY();
        if (motionEvent.getAction() != 1 || (eVar = l5Var2.n) == null) {
            return true;
        }
        f fVar2 = (f) eVar;
        fVar2.a.recycle();
        fVar2.a = null;
        l5Var2.n = null;
        int i6 = this.z;
        if (i6 == -1) {
            return true;
        }
        l5Var2.a(this, i6);
        return true;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        if (view instanceof MotionHelper) {
            MotionHelper motionHelper = (MotionHelper) view;
            if (this.j0 == null) {
                this.j0 = new ArrayList<>();
            }
            this.j0.add(motionHelper);
            if (motionHelper.l) {
                if (this.h0 == null) {
                    this.h0 = new ArrayList<>();
                }
                this.h0.add(motionHelper);
            }
            if (motionHelper.m) {
                if (this.i0 == null) {
                    this.i0 = new ArrayList<>();
                }
                this.i0.add(motionHelper);
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        ArrayList<MotionHelper> arrayList = this.h0;
        if (arrayList != null) {
            arrayList.remove(view);
        }
        ArrayList<MotionHelper> arrayList2 = this.i0;
        if (arrayList2 != null) {
            arrayList2.remove(view);
        }
    }

    public void r(float f2) {
        if (this.v == null) {
            return;
        }
        float f3 = this.I;
        float f4 = this.H;
        if (f3 != f4 && this.L) {
            this.I = f4;
        }
        float f5 = this.I;
        if (f5 == f2) {
            return;
        }
        this.S = false;
        this.K = f2;
        this.G = r0.c() / 1000.0f;
        setProgress(this.K);
        this.w = this.v.f();
        this.L = false;
        this.F = getNanoTime();
        this.M = true;
        this.H = f5;
        this.I = f5;
        invalidate();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View, android.view.ViewParent
    public void requestLayout() {
        l5 l5Var;
        l5.b bVar;
        if (this.p0 || this.z != -1 || (l5Var = this.v) == null || (bVar = l5Var.c) == null || bVar.q != 0) {
            super.requestLayout();
        }
    }

    public void s(boolean z) {
        float f2;
        boolean z2;
        int i2;
        float interpolation;
        boolean z3;
        i iVar = i.FINISHED;
        if (this.J == -1) {
            this.J = getNanoTime();
        }
        float f3 = this.I;
        if (f3 > 0.0f && f3 < 1.0f) {
            this.z = -1;
        }
        boolean z4 = false;
        if (this.g0 || (this.M && (z || this.K != f3))) {
            float fSignum = Math.signum(this.K - f3);
            long nanoTime = getNanoTime();
            Interpolator interpolator = this.w;
            if (interpolator instanceof j5) {
                f2 = 0.0f;
            } else {
                f2 = (((nanoTime - this.J) * fSignum) * 1.0E-9f) / this.G;
                this.x = f2;
            }
            float f4 = this.I + f2;
            if (this.L) {
                f4 = this.K;
            }
            if ((fSignum <= 0.0f || f4 < this.K) && (fSignum > 0.0f || f4 > this.K)) {
                z2 = false;
            } else {
                f4 = this.K;
                this.M = false;
                z2 = true;
            }
            this.I = f4;
            this.H = f4;
            this.J = nanoTime;
            if (interpolator != null && !z2) {
                if (this.S) {
                    interpolation = interpolator.getInterpolation((nanoTime - this.F) * 1.0E-9f);
                    this.I = interpolation;
                    this.J = nanoTime;
                    Interpolator interpolator2 = this.w;
                    if (interpolator2 instanceof j5) {
                        float fA = ((j5) interpolator2).a();
                        this.x = fA;
                        if (Math.abs(fA) * this.G <= 1.0E-5f) {
                            this.M = false;
                        }
                        if (fA > 0.0f && interpolation >= 1.0f) {
                            this.I = 1.0f;
                            this.M = false;
                            interpolation = 1.0f;
                        }
                        if (fA < 0.0f && interpolation <= 0.0f) {
                            this.I = 0.0f;
                            this.M = false;
                            f4 = 0.0f;
                        }
                    }
                } else {
                    interpolation = interpolator.getInterpolation(f4);
                    Interpolator interpolator3 = this.w;
                    if (interpolator3 instanceof j5) {
                        this.x = ((j5) interpolator3).a();
                    } else {
                        this.x = ((interpolator3.getInterpolation(f4 + f2) - interpolation) * fSignum) / f2;
                    }
                }
                f4 = interpolation;
            }
            if (Math.abs(this.x) > 1.0E-5f) {
                setState(i.MOVING);
            }
            if ((fSignum > 0.0f && f4 >= this.K) || (fSignum <= 0.0f && f4 <= this.K)) {
                f4 = this.K;
                this.M = false;
            }
            if (f4 >= 1.0f || f4 <= 0.0f) {
                this.M = false;
                setState(iVar);
            }
            int childCount = getChildCount();
            this.g0 = false;
            long nanoTime2 = getNanoTime();
            this.w0 = f4;
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                i5 i5Var = this.E.get(childAt);
                if (i5Var != null) {
                    this.g0 = i5Var.c(childAt, f4, nanoTime2, this.x0) | this.g0;
                }
            }
            boolean z5 = (fSignum > 0.0f && f4 >= this.K) || (fSignum <= 0.0f && f4 <= this.K);
            if (!this.g0 && !this.M && z5) {
                setState(iVar);
            }
            if (this.p0) {
                requestLayout();
            }
            this.g0 = (!z5) | this.g0;
            if (f4 > 0.0f || (i2 = this.y) == -1 || this.z == i2) {
                z4 = false;
            } else {
                this.z = i2;
                this.v.b(i2).a(this);
                setState(iVar);
                z4 = true;
            }
            if (f4 >= 1.0d) {
                int i4 = this.z;
                int i5 = this.A;
                if (i4 != i5) {
                    this.z = i5;
                    this.v.b(i5).a(this);
                    setState(iVar);
                    z4 = true;
                }
            }
            if (this.g0 || this.M) {
                invalidate();
            } else if ((fSignum > 0.0f && f4 == 1.0f) || (fSignum < 0.0f && f4 == 0.0f)) {
                setState(iVar);
            }
            if ((!this.g0 && this.M && fSignum > 0.0f && f4 == 1.0f) || (fSignum < 0.0f && f4 == 0.0f)) {
                y();
            }
        }
        float f5 = this.I;
        if (f5 < 1.0f) {
            if (f5 <= 0.0f) {
                int i6 = this.z;
                int i7 = this.y;
                z3 = i6 == i7 ? z4 : true;
                this.z = i7;
            }
            this.C0 |= z4;
            if (z4 && !this.y0) {
                requestLayout();
            }
            this.H = this.I;
        }
        int i8 = this.z;
        int i9 = this.A;
        z3 = i8 == i9 ? z4 : true;
        this.z = i9;
        z4 = z3;
        this.C0 |= z4;
        if (z4) {
            requestLayout();
        }
        this.H = this.I;
    }

    public void setDebugMode(int i2) {
        this.Q = i2;
        invalidate();
    }

    public void setInteractionEnabled(boolean z) {
        this.D = z;
    }

    public void setInterpolatedProgress(float f2) {
        if (this.v != null) {
            setState(i.MOVING);
            Interpolator interpolatorF = this.v.f();
            if (interpolatorF != null) {
                setProgress(interpolatorF.getInterpolation(f2));
                return;
            }
        }
        setProgress(f2);
    }

    public void setOnHide(float f2) {
        ArrayList<MotionHelper> arrayList = this.i0;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.i0.get(i2).setProgress(f2);
            }
        }
    }

    public void setOnShow(float f2) {
        ArrayList<MotionHelper> arrayList = this.h0;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.h0.get(i2).setProgress(f2);
            }
        }
    }

    public void setProgress(float f2, float f3) {
        if (isAttachedToWindow()) {
            setProgress(f2);
            setState(i.MOVING);
            this.x = f3;
            r(1.0f);
            return;
        }
        if (this.z0 == null) {
            this.z0 = new g();
        }
        g gVar = this.z0;
        gVar.a = f2;
        gVar.b = f3;
    }

    public void setScene(l5 l5Var) {
        q5 q5Var;
        this.v = l5Var;
        boolean zN = n();
        l5Var.o = zN;
        l5.b bVar = l5Var.c;
        if (bVar != null && (q5Var = bVar.l) != null) {
            q5Var.b(zN);
        }
        A();
    }

    public void setState(i iVar) {
        i iVar2 = i.FINISHED;
        if (iVar == iVar2 && this.z == -1) {
            return;
        }
        i iVar3 = this.A0;
        this.A0 = iVar;
        i iVar4 = i.MOVING;
        if (iVar3 == iVar4 && iVar == iVar4) {
            t();
        }
        int iOrdinal = iVar3.ordinal();
        if (iOrdinal != 0 && iOrdinal != 1) {
            if (iOrdinal == 2 && iVar == iVar2) {
                u();
                return;
            }
            return;
        }
        if (iVar == iVar4) {
            t();
        }
        if (iVar == iVar2) {
            u();
        }
    }

    public void setTransition(int i2, int i3) {
        if (!isAttachedToWindow()) {
            if (this.z0 == null) {
                this.z0 = new g();
            }
            g gVar = this.z0;
            gVar.c = i2;
            gVar.d = i3;
            return;
        }
        l5 l5Var = this.v;
        if (l5Var != null) {
            this.y = i2;
            this.A = i3;
            l5Var.m(i2, i3);
            this.B0.d(this.v.b(i2), this.v.b(i3));
            A();
            this.I = 0.0f;
            r(0.0f);
        }
    }

    public void setTransitionDuration(int i2) {
        l5 l5Var = this.v;
        if (l5Var == null) {
            Log.e("MotionLayout", "MotionScene not defined");
            return;
        }
        l5.b bVar = l5Var.c;
        if (bVar != null) {
            bVar.h = i2;
        } else {
            l5Var.j = i2;
        }
    }

    public void setTransitionListener(h hVar) {
        this.N = hVar;
    }

    public void setTransitionState(Bundle bundle) {
        if (this.z0 == null) {
            this.z0 = new g();
        }
        g gVar = this.z0;
        Objects.requireNonNull(gVar);
        gVar.a = bundle.getFloat("motion.progress");
        gVar.b = bundle.getFloat("motion.velocity");
        gVar.c = bundle.getInt("motion.StartState");
        gVar.d = bundle.getInt("motion.EndState");
        if (isAttachedToWindow()) {
            this.z0.a();
        }
    }

    public final void t() {
        ArrayList<h> arrayList;
        if ((this.N == null && ((arrayList = this.j0) == null || arrayList.isEmpty())) || this.o0 == this.H) {
            return;
        }
        if (this.n0 != -1) {
            h hVar = this.N;
            if (hVar != null) {
                hVar.b(this, this.y, this.A);
            }
            ArrayList<h> arrayList2 = this.j0;
            if (arrayList2 != null) {
                Iterator<h> it = arrayList2.iterator();
                while (it.hasNext()) {
                    it.next().b(this, this.y, this.A);
                }
            }
        }
        this.n0 = -1;
        float f2 = this.H;
        this.o0 = f2;
        h hVar2 = this.N;
        if (hVar2 != null) {
            hVar2.a(this, this.y, this.A, f2);
        }
        ArrayList<h> arrayList3 = this.j0;
        if (arrayList3 != null) {
            Iterator<h> it2 = arrayList3.iterator();
            while (it2.hasNext()) {
                it2.next().a(this, this.y, this.A, this.H);
            }
        }
    }

    @Override // android.view.View
    public String toString() {
        Context context = getContext();
        return d0.h.E(context, this.y) + "->" + d0.h.E(context, this.A) + " (pos:" + this.I + " Dpos/Dt:" + this.x;
    }

    public void u() {
        int iIntValue;
        ArrayList<h> arrayList;
        if ((this.N != null || ((arrayList = this.j0) != null && !arrayList.isEmpty())) && this.n0 == -1) {
            this.n0 = this.z;
            if (this.F0.isEmpty()) {
                iIntValue = -1;
            } else {
                iIntValue = this.F0.get(r0.size() - 1).intValue();
            }
            int i2 = this.z;
            if (iIntValue != i2 && i2 != -1) {
                this.F0.add(Integer.valueOf(i2));
            }
        }
        z();
    }

    public void v(int i2, float f2, float f3, float f4, float[] fArr) {
        HashMap<View, i5> map = this.E;
        View view = this.e.get(i2);
        i5 i5Var = map.get(view);
        if (i5Var != null) {
            i5Var.b(f2, f3, f4, fArr);
            float y = view.getY();
            this.O = f2;
            this.P = y;
            return;
        }
        Log.w("MotionLayout", "WARNING could not find view id " + (view == null ? jo.g("", i2) : view.getContext().getResources().getResourceName(i2)));
    }

    public final boolean w(float f2, float f3, View view, MotionEvent motionEvent) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                if (w(view.getLeft() + f2, view.getTop() + f3, viewGroup.getChildAt(i2), motionEvent)) {
                    return true;
                }
            }
        }
        this.D0.set(view.getLeft() + f2, view.getTop() + f3, f2 + view.getRight(), f3 + view.getBottom());
        if (motionEvent.getAction() == 0) {
            if (this.D0.contains(motionEvent.getX(), motionEvent.getY()) && view.onTouchEvent(motionEvent)) {
                return true;
            }
        } else if (view.onTouchEvent(motionEvent)) {
            return true;
        }
        return false;
    }

    public final void x(AttributeSet attributeSet) {
        l5 l5Var;
        String string;
        G0 = isInEditMode();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.MotionLayout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            boolean z = true;
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i2);
                if (index == R$styleable.MotionLayout_layoutDescription) {
                    this.v = new l5(getContext(), this, typedArrayObtainStyledAttributes.getResourceId(index, -1));
                } else if (index == R$styleable.MotionLayout_currentState) {
                    this.z = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                } else if (index == R$styleable.MotionLayout_motionProgress) {
                    this.K = typedArrayObtainStyledAttributes.getFloat(index, 0.0f);
                    this.M = true;
                } else if (index == R$styleable.MotionLayout_applyMotionScene) {
                    z = typedArrayObtainStyledAttributes.getBoolean(index, z);
                } else if (index == R$styleable.MotionLayout_showPaths) {
                    if (this.Q == 0) {
                        this.Q = typedArrayObtainStyledAttributes.getBoolean(index, false) ? 2 : 0;
                    }
                } else if (index == R$styleable.MotionLayout_motionDebug) {
                    this.Q = typedArrayObtainStyledAttributes.getInt(index, 0);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            if (this.v == null) {
                Log.e("MotionLayout", "WARNING NO app:layoutDescription tag");
            }
            if (!z) {
                this.v = null;
            }
        }
        if (this.Q != 0) {
            l5 l5Var2 = this.v;
            if (l5Var2 == null) {
                Log.e("MotionLayout", "CHECK: motion scene not set! set \"app:layoutDescription=\"@xml/file\"");
            } else {
                int i3 = l5Var2.i();
                l5 l5Var3 = this.v;
                a7 a7VarB = l5Var3.b(l5Var3.i());
                String strE = d0.h.E(getContext(), i3);
                int childCount = getChildCount();
                for (int i4 = 0; i4 < childCount; i4++) {
                    View childAt = getChildAt(i4);
                    int id = childAt.getId();
                    if (id == -1) {
                        StringBuilder sbC = jo.C("CHECK: ", strE, " ALL VIEWS SHOULD HAVE ID's ");
                        sbC.append(childAt.getClass().getName());
                        sbC.append(" does not!");
                        Log.w("MotionLayout", sbC.toString());
                    }
                    if ((a7VarB.c.containsKey(Integer.valueOf(id)) ? a7VarB.c.get(Integer.valueOf(id)) : null) == null) {
                        StringBuilder sbC2 = jo.C("CHECK: ", strE, " NO CONSTRAINTS for ");
                        sbC2.append(d0.h.F(childAt));
                        Log.w("MotionLayout", sbC2.toString());
                    }
                }
                Integer[] numArr = (Integer[]) a7VarB.c.keySet().toArray(new Integer[0]);
                int length = numArr.length;
                int[] iArr = new int[length];
                for (int i5 = 0; i5 < length; i5++) {
                    iArr[i5] = numArr[i5].intValue();
                }
                for (int i6 = 0; i6 < length; i6++) {
                    int i7 = iArr[i6];
                    String strE2 = d0.h.E(getContext(), i7);
                    if (findViewById(iArr[i6]) == null) {
                        Log.w("MotionLayout", "CHECK: " + strE + " NO View matches id " + strE2);
                    }
                    if (a7VarB.g(i7).d.d == -1) {
                        Log.w("MotionLayout", "CHECK: " + strE + "(" + strE2 + ") no LAYOUT_HEIGHT");
                    }
                    if (a7VarB.g(i7).d.c == -1) {
                        Log.w("MotionLayout", "CHECK: " + strE + "(" + strE2 + ") no LAYOUT_HEIGHT");
                    }
                }
                SparseIntArray sparseIntArray = new SparseIntArray();
                SparseIntArray sparseIntArray2 = new SparseIntArray();
                Iterator<l5.b> it = this.v.d.iterator();
                while (it.hasNext()) {
                    l5.b next = it.next();
                    if (next == this.v.c) {
                        Log.v("MotionLayout", "CHECK: CURRENT");
                    }
                    StringBuilder sbZ = jo.z("CHECK: transition = ");
                    Context context = getContext();
                    String resourceEntryName = next.d == -1 ? "null" : context.getResources().getResourceEntryName(next.d);
                    if (next.c == -1) {
                        string = jo.n(resourceEntryName, " -> null");
                    } else {
                        StringBuilder sbB = jo.B(resourceEntryName, " -> ");
                        sbB.append(context.getResources().getResourceEntryName(next.c));
                        string = sbB.toString();
                    }
                    sbZ.append(string);
                    Log.v("MotionLayout", sbZ.toString());
                    Log.v("MotionLayout", "CHECK: transition.setDuration = " + next.h);
                    if (next.d == next.c) {
                        Log.e("MotionLayout", "CHECK: start and end constraint set should not be the same!");
                    }
                    int i8 = next.d;
                    int i9 = next.c;
                    String strE3 = d0.h.E(getContext(), i8);
                    String strE4 = d0.h.E(getContext(), i9);
                    if (sparseIntArray.get(i8) == i9) {
                        Log.e("MotionLayout", "CHECK: two transitions with the same start and end " + strE3 + "->" + strE4);
                    }
                    if (sparseIntArray2.get(i9) == i8) {
                        Log.e("MotionLayout", "CHECK: you can't have reverse transitions" + strE3 + "->" + strE4);
                    }
                    sparseIntArray.put(i8, i9);
                    sparseIntArray2.put(i9, i8);
                    if (this.v.b(i8) == null) {
                        Log.e("MotionLayout", " no such constraintSetStart " + strE3);
                    }
                    if (this.v.b(i9) == null) {
                        Log.e("MotionLayout", " no such constraintSetEnd " + strE3);
                    }
                }
            }
        }
        if (this.z != -1 || (l5Var = this.v) == null) {
            return;
        }
        this.z = l5Var.i();
        this.y = this.v.i();
        this.A = this.v.d();
    }

    public final void y() {
        l5.b bVar;
        q5 q5Var;
        View viewFindViewById;
        l5 l5Var = this.v;
        if (l5Var == null) {
            return;
        }
        if (l5Var.a(this, this.z)) {
            requestLayout();
            return;
        }
        int i2 = this.z;
        if (i2 != -1) {
            l5 l5Var2 = this.v;
            Iterator<l5.b> it = l5Var2.d.iterator();
            while (it.hasNext()) {
                l5.b next = it.next();
                if (next.m.size() > 0) {
                    Iterator<l5.b.a> it2 = next.m.iterator();
                    while (it2.hasNext()) {
                        it2.next().b(this);
                    }
                }
            }
            Iterator<l5.b> it3 = l5Var2.f.iterator();
            while (it3.hasNext()) {
                l5.b next2 = it3.next();
                if (next2.m.size() > 0) {
                    Iterator<l5.b.a> it4 = next2.m.iterator();
                    while (it4.hasNext()) {
                        it4.next().b(this);
                    }
                }
            }
            Iterator<l5.b> it5 = l5Var2.d.iterator();
            while (it5.hasNext()) {
                l5.b next3 = it5.next();
                if (next3.m.size() > 0) {
                    Iterator<l5.b.a> it6 = next3.m.iterator();
                    while (it6.hasNext()) {
                        it6.next().a(this, i2, next3);
                    }
                }
            }
            Iterator<l5.b> it7 = l5Var2.f.iterator();
            while (it7.hasNext()) {
                l5.b next4 = it7.next();
                if (next4.m.size() > 0) {
                    Iterator<l5.b.a> it8 = next4.m.iterator();
                    while (it8.hasNext()) {
                        it8.next().a(this, i2, next4);
                    }
                }
            }
        }
        if (!this.v.n() || (bVar = this.v.c) == null || (q5Var = bVar.l) == null) {
            return;
        }
        int i3 = q5Var.d;
        if (i3 != -1) {
            viewFindViewById = q5Var.o.findViewById(i3);
            if (viewFindViewById == null) {
                StringBuilder sbZ = jo.z("cannot find TouchAnchorId @id/");
                sbZ.append(d0.h.E(q5Var.o.getContext(), q5Var.d));
                Log.e("TouchResponse", sbZ.toString());
            }
        } else {
            viewFindViewById = null;
        }
        if (viewFindViewById instanceof NestedScrollView) {
            NestedScrollView nestedScrollView = (NestedScrollView) viewFindViewById;
            nestedScrollView.setOnTouchListener(new o5(q5Var));
            nestedScrollView.setOnScrollChangeListener(new p5(q5Var));
        }
    }

    public final void z() {
        ArrayList<h> arrayList;
        if (this.N == null && ((arrayList = this.j0) == null || arrayList.isEmpty())) {
            return;
        }
        Iterator<Integer> it = this.F0.iterator();
        while (it.hasNext()) {
            Integer next = it.next();
            h hVar = this.N;
            if (hVar != null) {
                hVar.d(this, next.intValue());
            }
            ArrayList<h> arrayList2 = this.j0;
            if (arrayList2 != null) {
                Iterator<h> it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    it2.next().d(this, next.intValue());
                }
            }
        }
        this.F0.clear();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public void setState(int i2, int i3, int i4) {
        setState(i.SETUP);
        this.z = i2;
        this.y = -1;
        this.A = -1;
        z6 z6Var = this.o;
        if (z6Var != null) {
            z6Var.b(i2, i3, i4);
            return;
        }
        l5 l5Var = this.v;
        if (l5Var != null) {
            l5Var.b(i2).c(this, true);
            setConstraintSet(null);
            requestLayout();
        }
    }

    public void setProgress(float f2) {
        i iVar = i.FINISHED;
        if (!isAttachedToWindow()) {
            if (this.z0 == null) {
                this.z0 = new g();
            }
            this.z0.a = f2;
            return;
        }
        if (f2 <= 0.0f) {
            this.z = this.y;
            if (this.I == 0.0f) {
                setState(iVar);
            }
        } else if (f2 >= 1.0f) {
            this.z = this.A;
            if (this.I == 1.0f) {
                setState(iVar);
            }
        } else {
            this.z = -1;
            setState(i.MOVING);
        }
        if (this.v == null) {
            return;
        }
        this.L = true;
        this.K = f2;
        this.H = f2;
        this.J = -1L;
        this.F = -1L;
        this.w = null;
        this.M = true;
        invalidate();
    }

    public void setTransition(int i2) {
        l5.b next;
        l5 l5Var = this.v;
        if (l5Var != null) {
            Iterator<l5.b> it = l5Var.d.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                } else {
                    next = it.next();
                    if (next.a == i2) {
                        break;
                    }
                }
            }
            this.y = next.d;
            this.A = next.c;
            if (!isAttachedToWindow()) {
                if (this.z0 == null) {
                    this.z0 = new g();
                }
                g gVar = this.z0;
                gVar.c = this.y;
                gVar.d = this.A;
                return;
            }
            float f2 = Float.NaN;
            int i3 = this.z;
            if (i3 == this.y) {
                f2 = 0.0f;
            } else if (i3 == this.A) {
                f2 = 1.0f;
            }
            l5 l5Var2 = this.v;
            l5Var2.c = next;
            q5 q5Var = next.l;
            if (q5Var != null) {
                q5Var.b(l5Var2.o);
            }
            this.B0.d(this.v.b(this.y), this.v.b(this.A));
            A();
            this.I = Float.isNaN(f2) ? 0.0f : f2;
            if (Float.isNaN(f2)) {
                Log.v("MotionLayout", d0.h.D() + " transitionToStart ");
                r(0.0f);
                return;
            }
            setProgress(f2);
        }
    }

    public MotionLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.x = 0.0f;
        this.y = -1;
        this.z = -1;
        this.A = -1;
        this.B = 0;
        this.C = 0;
        this.D = true;
        this.E = new HashMap<>();
        this.F = 0L;
        this.G = 1.0f;
        this.H = 0.0f;
        this.I = 0.0f;
        this.K = 0.0f;
        this.M = false;
        this.Q = 0;
        this.S = false;
        this.T = new u4();
        this.U = new b();
        this.b0 = false;
        this.g0 = false;
        this.h0 = null;
        this.i0 = null;
        this.j0 = null;
        this.k0 = 0;
        this.l0 = -1L;
        this.m0 = 0.0f;
        this.n0 = 0;
        this.o0 = 0.0f;
        this.p0 = false;
        this.x0 = new z4();
        this.y0 = false;
        this.A0 = i.UNDEFINED;
        this.B0 = new d();
        this.C0 = false;
        this.D0 = new RectF();
        this.E0 = null;
        this.F0 = new ArrayList<>();
        x(attributeSet);
    }

    public void setTransition(l5.b bVar) {
        q5 q5Var;
        l5 l5Var = this.v;
        l5Var.c = bVar;
        if (bVar != null && (q5Var = bVar.l) != null) {
            q5Var.b(l5Var.o);
        }
        setState(i.SETUP);
        if (this.z == this.v.d()) {
            this.I = 1.0f;
            this.H = 1.0f;
            this.K = 1.0f;
        } else {
            this.I = 0.0f;
            this.H = 0.0f;
            this.K = 0.0f;
        }
        this.J = (bVar.r & 1) != 0 ? -1L : getNanoTime();
        int i2 = this.v.i();
        int iD = this.v.d();
        if (i2 == this.y && iD == this.A) {
            return;
        }
        this.y = i2;
        this.A = iD;
        this.v.m(i2, iD);
        this.B0.d(this.v.b(this.y), this.v.b(this.A));
        d dVar = this.B0;
        int i3 = this.y;
        int i4 = this.A;
        dVar.e = i3;
        dVar.f = i4;
        dVar.e();
        A();
    }

    public MotionLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.x = 0.0f;
        this.y = -1;
        this.z = -1;
        this.A = -1;
        this.B = 0;
        this.C = 0;
        this.D = true;
        this.E = new HashMap<>();
        this.F = 0L;
        this.G = 1.0f;
        this.H = 0.0f;
        this.I = 0.0f;
        this.K = 0.0f;
        this.M = false;
        this.Q = 0;
        this.S = false;
        this.T = new u4();
        this.U = new b();
        this.b0 = false;
        this.g0 = false;
        this.h0 = null;
        this.i0 = null;
        this.j0 = null;
        this.k0 = 0;
        this.l0 = -1L;
        this.m0 = 0.0f;
        this.n0 = 0;
        this.o0 = 0.0f;
        this.p0 = false;
        this.x0 = new z4();
        this.y0 = false;
        this.A0 = i.UNDEFINED;
        this.B0 = new d();
        this.C0 = false;
        this.D0 = new RectF();
        this.E0 = null;
        this.F0 = new ArrayList<>();
        x(attributeSet);
    }
}
