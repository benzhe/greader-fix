package defpackage;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import com.google.android.material.progressindicator.CircularProgressIndicatorSpec;

/* loaded from: classes.dex */
public final class h95 extends p95<CircularProgressIndicatorSpec> {
    public int c;
    public float d;
    public float e;
    public float f;

    public h95(CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        super(circularProgressIndicatorSpec);
        this.c = 1;
    }

    @Override // defpackage.p95
    public void a(Canvas canvas, float f) {
        S s = this.a;
        float f2 = (((CircularProgressIndicatorSpec) s).g / 2.0f) + ((CircularProgressIndicatorSpec) s).h;
        canvas.translate(f2, f2);
        canvas.rotate(-90.0f);
        float f3 = -f2;
        canvas.clipRect(f3, f3, f2, f2);
        this.c = ((CircularProgressIndicatorSpec) this.a).i == 0 ? 1 : -1;
        this.d = ((CircularProgressIndicatorSpec) r5).a * f;
        this.e = ((CircularProgressIndicatorSpec) r5).b * f;
        this.f = (((CircularProgressIndicatorSpec) r5).g - ((CircularProgressIndicatorSpec) r5).a) / 2.0f;
        if ((this.b.f() && ((CircularProgressIndicatorSpec) this.a).e == 2) || (this.b.e() && ((CircularProgressIndicatorSpec) this.a).f == 1)) {
            this.f = (((1.0f - f) * ((CircularProgressIndicatorSpec) this.a).a) / 2.0f) + this.f;
        } else if ((this.b.f() && ((CircularProgressIndicatorSpec) this.a).e == 1) || (this.b.e() && ((CircularProgressIndicatorSpec) this.a).f == 2)) {
            this.f -= ((1.0f - f) * ((CircularProgressIndicatorSpec) this.a).a) / 2.0f;
        }
    }

    @Override // defpackage.p95
    public void b(Canvas canvas, Paint paint, float f, float f2, int i) {
        if (f == f2) {
            return;
        }
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        paint.setColor(i);
        paint.setStrokeWidth(this.d);
        float f3 = this.c;
        float f4 = f * 360.0f * f3;
        if (f2 < f) {
            f2 += 1.0f;
        }
        float f5 = (f2 - f) * 360.0f * f3;
        float f6 = this.f;
        float f7 = -f6;
        canvas.drawArc(new RectF(f7, f7, f6, f6), f4, f5, false, paint);
        if (this.e <= 0.0f || Math.abs(f5) >= 360.0f) {
            return;
        }
        paint.setStyle(Paint.Style.FILL);
        float f8 = this.e;
        float f9 = -f8;
        RectF rectF = new RectF(f9, f9, f8, f8);
        f(canvas, paint, this.d, this.e, f4, true, rectF);
        f(canvas, paint, this.d, this.e, f4 + f5, false, rectF);
    }

    @Override // defpackage.p95
    public void c(Canvas canvas, Paint paint) {
        int iH = c50.H(((CircularProgressIndicatorSpec) this.a).d, this.b.n);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        paint.setColor(iH);
        paint.setStrokeWidth(this.d);
        float f = this.f;
        float f2 = -f;
        canvas.drawArc(new RectF(f2, f2, f, f), 0.0f, 360.0f, false, paint);
    }

    @Override // defpackage.p95
    public int d() {
        CircularProgressIndicatorSpec circularProgressIndicatorSpec = (CircularProgressIndicatorSpec) this.a;
        return (circularProgressIndicatorSpec.h * 2) + circularProgressIndicatorSpec.g;
    }

    @Override // defpackage.p95
    public int e() {
        CircularProgressIndicatorSpec circularProgressIndicatorSpec = (CircularProgressIndicatorSpec) this.a;
        return (circularProgressIndicatorSpec.h * 2) + circularProgressIndicatorSpec.g;
    }

    public final void f(Canvas canvas, Paint paint, float f, float f2, float f3, boolean z, RectF rectF) {
        float f4 = z ? -1.0f : 1.0f;
        canvas.save();
        canvas.rotate(f3);
        float f5 = f / 2.0f;
        float f6 = f4 * f2;
        canvas.drawRect((this.f - f5) + f2, Math.min(0.0f, this.c * f6), (this.f + f5) - f2, Math.max(0.0f, f6 * this.c), paint);
        canvas.translate((this.f - f5) + f2, 0.0f);
        canvas.drawArc(rectF, 180.0f, (-f4) * 90.0f * this.c, true, paint);
        canvas.translate(f - (f2 * 2.0f), 0.0f);
        canvas.drawArc(rectF, 0.0f, f4 * 90.0f * this.c, true, paint);
        canvas.restore();
    }
}
