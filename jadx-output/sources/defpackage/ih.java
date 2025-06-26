package defpackage;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import java.util.Objects;
import org.apache.commons.codec.binary.Base64;

/* loaded from: classes.dex */
public class ih extends Drawable implements Animatable {
    public static final Interpolator k = new LinearInterpolator();
    public static final Interpolator l = new uc();
    public static final int[] m = {-16777216};
    public final a e;
    public float f;
    public Resources g;
    public Animator h;
    public float i;
    public boolean j;

    public static class a {
        public final RectF a = new RectF();
        public final Paint b;
        public final Paint c;
        public final Paint d;
        public float e;
        public float f;
        public float g;
        public float h;
        public int[] i;
        public int j;
        public float k;
        public float l;
        public float m;
        public boolean n;
        public Path o;
        public float p;
        public float q;
        public int r;
        public int s;
        public int t;
        public int u;

        public a() {
            Paint paint = new Paint();
            this.b = paint;
            Paint paint2 = new Paint();
            this.c = paint2;
            Paint paint3 = new Paint();
            this.d = paint3;
            this.e = 0.0f;
            this.f = 0.0f;
            this.g = 0.0f;
            this.h = 5.0f;
            this.p = 1.0f;
            this.t = Base64.BASELENGTH;
            paint.setStrokeCap(Paint.Cap.SQUARE);
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.STROKE);
            paint2.setStyle(Paint.Style.FILL);
            paint2.setAntiAlias(true);
            paint3.setColor(0);
        }

        public void a(int i) {
            this.j = i;
            this.u = this.i[i];
        }

        public void b(boolean z) {
            if (this.n != z) {
                this.n = z;
            }
        }
    }

    public ih(Context context) {
        Objects.requireNonNull(context);
        this.g = context.getResources();
        a aVar = new a();
        this.e = aVar;
        aVar.i = m;
        aVar.a(0);
        aVar.h = 2.5f;
        aVar.b.setStrokeWidth(2.5f);
        invalidateSelf();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new gh(this, aVar));
        valueAnimatorOfFloat.setRepeatCount(-1);
        valueAnimatorOfFloat.setRepeatMode(1);
        valueAnimatorOfFloat.setInterpolator(k);
        valueAnimatorOfFloat.addListener(new hh(this, aVar));
        this.h = valueAnimatorOfFloat;
    }

    public void a(float f, a aVar, boolean z) {
        float interpolation;
        float interpolation2;
        if (this.j) {
            d(f, aVar);
            float fFloor = (float) (Math.floor(aVar.m / 0.8f) + 1.0d);
            float f2 = aVar.k;
            float f3 = aVar.l;
            aVar.e = (((f3 - 0.01f) - f2) * f) + f2;
            aVar.f = f3;
            float f4 = aVar.m;
            aVar.g = jo.a(fFloor, f4, f, f4);
            return;
        }
        if (f != 1.0f || z) {
            float f5 = aVar.m;
            if (f < 0.5f) {
                interpolation = aVar.k;
                interpolation2 = (l.getInterpolation(f / 0.5f) * 0.79f) + 0.01f + interpolation;
            } else {
                float f6 = aVar.k + 0.79f;
                interpolation = f6 - (((1.0f - l.getInterpolation((f - 0.5f) / 0.5f)) * 0.79f) + 0.01f);
                interpolation2 = f6;
            }
            float f7 = (0.20999998f * f) + f5;
            float f8 = (f + this.i) * 216.0f;
            aVar.e = interpolation;
            aVar.f = interpolation2;
            aVar.g = f7;
            this.f = f8;
        }
    }

    public final void b(float f, float f2, float f3, float f4) {
        a aVar = this.e;
        float f5 = this.g.getDisplayMetrics().density;
        float f6 = f2 * f5;
        aVar.h = f6;
        aVar.b.setStrokeWidth(f6);
        aVar.q = f * f5;
        aVar.a(0);
        aVar.r = (int) (f3 * f5);
        aVar.s = (int) (f4 * f5);
    }

    public void c(int i) {
        if (i == 0) {
            b(11.0f, 3.0f, 12.0f, 6.0f);
        } else {
            b(7.5f, 2.5f, 10.0f, 5.0f);
        }
        invalidateSelf();
    }

    public void d(float f, a aVar) {
        if (f <= 0.75f) {
            aVar.u = aVar.i[aVar.j];
            return;
        }
        float f2 = (f - 0.75f) / 0.25f;
        int[] iArr = aVar.i;
        int i = aVar.j;
        int i2 = iArr[i];
        int i3 = iArr[(i + 1) % iArr.length];
        aVar.u = ((((i2 >> 24) & Base64.BASELENGTH) + ((int) ((((i3 >> 24) & Base64.BASELENGTH) - r1) * f2))) << 24) | ((((i2 >> 16) & Base64.BASELENGTH) + ((int) ((((i3 >> 16) & Base64.BASELENGTH) - r3) * f2))) << 16) | ((((i2 >> 8) & Base64.BASELENGTH) + ((int) ((((i3 >> 8) & Base64.BASELENGTH) - r4) * f2))) << 8) | ((i2 & Base64.BASELENGTH) + ((int) (f2 * ((i3 & Base64.BASELENGTH) - r2))));
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        canvas.save();
        canvas.rotate(this.f, bounds.exactCenterX(), bounds.exactCenterY());
        a aVar = this.e;
        RectF rectF = aVar.a;
        float f = aVar.q;
        float fMin = (aVar.h / 2.0f) + f;
        if (f <= 0.0f) {
            fMin = (Math.min(bounds.width(), bounds.height()) / 2.0f) - Math.max((aVar.r * aVar.p) / 2.0f, aVar.h / 2.0f);
        }
        rectF.set(bounds.centerX() - fMin, bounds.centerY() - fMin, bounds.centerX() + fMin, bounds.centerY() + fMin);
        float f2 = aVar.e;
        float f3 = aVar.g;
        float f4 = (f2 + f3) * 360.0f;
        float f5 = ((aVar.f + f3) * 360.0f) - f4;
        aVar.b.setColor(aVar.u);
        aVar.b.setAlpha(aVar.t);
        float f6 = aVar.h / 2.0f;
        rectF.inset(f6, f6);
        canvas.drawCircle(rectF.centerX(), rectF.centerY(), rectF.width() / 2.0f, aVar.d);
        float f7 = -f6;
        rectF.inset(f7, f7);
        canvas.drawArc(rectF, f4, f5, false, aVar.b);
        if (aVar.n) {
            Path path = aVar.o;
            if (path == null) {
                Path path2 = new Path();
                aVar.o = path2;
                path2.setFillType(Path.FillType.EVEN_ODD);
            } else {
                path.reset();
            }
            float fMin2 = Math.min(rectF.width(), rectF.height()) / 2.0f;
            float f8 = (aVar.r * aVar.p) / 2.0f;
            aVar.o.moveTo(0.0f, 0.0f);
            aVar.o.lineTo(aVar.r * aVar.p, 0.0f);
            Path path3 = aVar.o;
            float f9 = aVar.r;
            float f10 = aVar.p;
            path3.lineTo((f9 * f10) / 2.0f, aVar.s * f10);
            aVar.o.offset((rectF.centerX() + fMin2) - f8, (aVar.h / 2.0f) + rectF.centerY());
            aVar.o.close();
            aVar.c.setColor(aVar.u);
            aVar.c.setAlpha(aVar.t);
            canvas.save();
            canvas.rotate(f4 + f5, rectF.centerX(), rectF.centerY());
            canvas.drawPath(aVar.o, aVar.c);
            canvas.restore();
        }
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.e.t;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.h.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.e.t = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.e.b.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.h.cancel();
        a aVar = this.e;
        float f = aVar.e;
        aVar.k = f;
        float f2 = aVar.f;
        aVar.l = f2;
        aVar.m = aVar.g;
        if (f2 != f) {
            this.j = true;
            this.h.setDuration(666L);
            this.h.start();
            return;
        }
        aVar.a(0);
        a aVar2 = this.e;
        aVar2.k = 0.0f;
        aVar2.l = 0.0f;
        aVar2.m = 0.0f;
        aVar2.e = 0.0f;
        aVar2.f = 0.0f;
        aVar2.g = 0.0f;
        this.h.setDuration(1332L);
        this.h.start();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.h.cancel();
        this.f = 0.0f;
        this.e.b(false);
        this.e.a(0);
        a aVar = this.e;
        aVar.k = 0.0f;
        aVar.l = 0.0f;
        aVar.m = 0.0f;
        aVar.e = 0.0f;
        aVar.f = 0.0f;
        aVar.g = 0.0f;
        invalidateSelf();
    }
}
