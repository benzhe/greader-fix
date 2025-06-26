package com.google.android.material.timepicker;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import defpackage.ha;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class ClockHandView extends View {
    public static final /* synthetic */ int t = 0;
    public ValueAnimator e;
    public float f;
    public float g;
    public boolean h;
    public int i;
    public final List<c> j;
    public final int k;
    public final float l;
    public final Paint m;
    public final RectF n;
    public final int o;
    public float p;
    public boolean q;
    public double r;
    public int s;

    public class a implements ValueAnimator.AnimatorUpdateListener {
        public a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            ClockHandView clockHandView = ClockHandView.this;
            int i = ClockHandView.t;
            clockHandView.c(fFloatValue, true);
        }
    }

    public class b extends AnimatorListenerAdapter {
        public b(ClockHandView clockHandView) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            animator.end();
        }
    }

    public interface c {
        void a(float f, boolean z);
    }

    public ClockHandView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.materialClockStyle);
    }

    public final int a(float f, float f2) {
        int degrees = ((int) Math.toDegrees(Math.atan2(f2 - (getHeight() / 2), f - (getWidth() / 2)))) + 90;
        return degrees < 0 ? degrees + 360 : degrees;
    }

    public void b(float f, boolean z) {
        ValueAnimator valueAnimator = this.e;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (!z) {
            c(f, false);
            return;
        }
        float f2 = this.p;
        if (Math.abs(f2 - f) > 180.0f) {
            if (f2 > 180.0f && f < 180.0f) {
                f += 360.0f;
            }
            if (f2 < 180.0f && f > 180.0f) {
                f2 += 360.0f;
            }
        }
        Pair pair = new Pair(Float.valueOf(f2), Float.valueOf(f));
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(((Float) pair.first).floatValue(), ((Float) pair.second).floatValue());
        this.e = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(200L);
        this.e.addUpdateListener(new a());
        this.e.addListener(new b(this));
        this.e.start();
    }

    public final void c(float f, boolean z) {
        float f2 = f % 360.0f;
        this.p = f2;
        this.r = Math.toRadians(f2 - 90.0f);
        int height = getHeight() / 2;
        float fCos = (this.s * ((float) Math.cos(this.r))) + (getWidth() / 2);
        float fSin = (this.s * ((float) Math.sin(this.r))) + height;
        RectF rectF = this.n;
        int i = this.k;
        rectF.set(fCos - i, fSin - i, fCos + i, fSin + i);
        Iterator<c> it = this.j.iterator();
        while (it.hasNext()) {
            it.next().a(f2, z);
        }
        invalidate();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight() / 2;
        float width = getWidth() / 2;
        float fCos = (this.s * ((float) Math.cos(this.r))) + width;
        float f = height;
        float fSin = (this.s * ((float) Math.sin(this.r))) + f;
        this.m.setStrokeWidth(0.0f);
        canvas.drawCircle(fCos, fSin, this.k, this.m);
        double dSin = Math.sin(this.r);
        double dCos = Math.cos(this.r);
        this.m.setStrokeWidth(this.o);
        canvas.drawLine(width, f, r1 + ((int) (dCos * d)), height + ((int) (d * dSin)), this.m);
        canvas.drawCircle(width, f, this.l, this.m);
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        b(this.p, false);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        int actionMasked = motionEvent.getActionMasked();
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        boolean z3 = false;
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 2) {
                int i = (int) (x - this.f);
                int i2 = (int) (y - this.g);
                this.h = (i2 * i2) + (i * i) > this.i;
                z = this.q;
                if (actionMasked == 1) {
                }
            } else {
                z = false;
            }
            z2 = false;
        } else {
            this.f = x;
            this.g = y;
            this.h = true;
            this.q = false;
            z = false;
            z2 = true;
        }
        boolean z4 = this.q;
        float fA = a(x, y);
        boolean z5 = this.p != fA;
        if (z2 && z5) {
            z3 = true;
        } else if (z5 || z) {
            b(fA, false);
            z3 = true;
        }
        this.q = z4 | z3;
        return true;
    }

    public ClockHandView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.j = new ArrayList();
        Paint paint = new Paint();
        this.m = paint;
        this.n = new RectF();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ClockHandView, i, R$style.Widget_MaterialComponents_TimePicker_Clock);
        this.s = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ClockHandView_materialCircleRadius, 0);
        this.k = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ClockHandView_selectorSize, 0);
        this.o = getResources().getDimensionPixelSize(R$dimen.material_clock_hand_stroke_width);
        this.l = r6.getDimensionPixelSize(R$dimen.material_clock_hand_center_dot_radius);
        int color = typedArrayObtainStyledAttributes.getColor(R$styleable.ClockHandView_clockHandColor, 0);
        paint.setAntiAlias(true);
        paint.setColor(color);
        b(0.0f, false);
        this.i = ViewConfiguration.get(context).getScaledTouchSlop();
        AtomicInteger atomicInteger = ha.a;
        setImportantForAccessibility(2);
        typedArrayObtainStyledAttributes.recycle();
    }
}
