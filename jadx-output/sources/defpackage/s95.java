package defpackage;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import com.google.android.material.progressindicator.LinearProgressIndicatorSpec;

/* loaded from: classes.dex */
public final class s95 extends p95<LinearProgressIndicatorSpec> {
    public float c;
    public float d;
    public float e;

    public s95(LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        super(linearProgressIndicatorSpec);
        this.c = 300.0f;
    }

    public static void f(Canvas canvas, Paint paint, float f, float f2, float f3, boolean z, RectF rectF) {
        canvas.save();
        canvas.translate(f3, 0.0f);
        if (!z) {
            canvas.rotate(180.0f);
        }
        float f4 = ((-f) / 2.0f) + f2;
        float f5 = (f / 2.0f) - f2;
        canvas.drawRect(-f2, f4, 0.0f, f5, paint);
        canvas.save();
        canvas.translate(0.0f, f4);
        canvas.drawArc(rectF, 180.0f, 90.0f, true, paint);
        canvas.restore();
        canvas.translate(0.0f, f5);
        canvas.drawArc(rectF, 180.0f, -90.0f, true, paint);
        canvas.restore();
    }

    @Override // defpackage.p95
    public void a(Canvas canvas, float f) {
        Rect clipBounds = canvas.getClipBounds();
        this.c = clipBounds.width();
        float f2 = ((LinearProgressIndicatorSpec) this.a).a;
        canvas.translate(clipBounds.width() / 2.0f, Math.max(0.0f, (clipBounds.height() - ((LinearProgressIndicatorSpec) this.a).a) / 2.0f) + (clipBounds.height() / 2.0f));
        if (((LinearProgressIndicatorSpec) this.a).i) {
            canvas.scale(-1.0f, 1.0f);
        }
        if ((this.b.f() && ((LinearProgressIndicatorSpec) this.a).e == 1) || (this.b.e() && ((LinearProgressIndicatorSpec) this.a).f == 2)) {
            canvas.scale(1.0f, -1.0f);
        }
        if (this.b.f() || this.b.e()) {
            canvas.translate(0.0f, ((f - 1.0f) * ((LinearProgressIndicatorSpec) this.a).a) / 2.0f);
        }
        float f3 = this.c;
        canvas.clipRect((-f3) / 2.0f, (-f2) / 2.0f, f3 / 2.0f, f2 / 2.0f);
        S s = this.a;
        this.d = ((LinearProgressIndicatorSpec) s).a * f;
        this.e = ((LinearProgressIndicatorSpec) s).b * f;
    }

    @Override // defpackage.p95
    public void b(Canvas canvas, Paint paint, float f, float f2, int i) {
        if (f == f2) {
            return;
        }
        float f3 = this.c;
        float f4 = this.e;
        float f5 = ((-f3) / 2.0f) + f4;
        float f6 = f3 - (f4 * 2.0f);
        float f7 = (f * f6) + f5;
        float f8 = (f6 * f2) + f5;
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        paint.setColor(i);
        float f9 = this.d;
        canvas.drawRect(f7, (-f9) / 2.0f, f8, f9 / 2.0f, paint);
        float f10 = this.e;
        float f11 = -f10;
        RectF rectF = new RectF(f11, f11, f10, f10);
        f(canvas, paint, this.d, this.e, f7, true, rectF);
        f(canvas, paint, this.d, this.e, f8, false, rectF);
    }

    @Override // defpackage.p95
    public void c(Canvas canvas, Paint paint) {
        int iH = c50.H(((LinearProgressIndicatorSpec) this.a).d, this.b.n);
        float f = ((-this.c) / 2.0f) + this.e;
        float f2 = -f;
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        paint.setColor(iH);
        float f3 = this.d;
        canvas.drawRect(f, (-f3) / 2.0f, f2, f3 / 2.0f, paint);
        float f4 = this.e;
        float f5 = -f4;
        RectF rectF = new RectF(f5, f5, f4, f4);
        f(canvas, paint, this.d, this.e, f, true, rectF);
        f(canvas, paint, this.d, this.e, f2, false, rectF);
    }

    @Override // defpackage.p95
    public int d() {
        return ((LinearProgressIndicatorSpec) this.a).a;
    }

    @Override // defpackage.p95
    public int e() {
        return -1;
    }
}
