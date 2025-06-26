package defpackage;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

/* loaded from: classes2.dex */
public class q27 extends Drawable {
    public final Paint a;
    public int b = 0;
    public int c = 0;
    public final Paint d;

    public q27(int i) {
        Paint paint = new Paint(1);
        this.a = paint;
        paint.setColor(i);
        Paint paint2 = new Paint(1);
        this.d = paint2;
        paint2.setColor(n56.k1(i) ? -1 : -16777216);
        paint2.setStyle(Paint.Style.STROKE);
    }

    public void a(int i) {
        this.a.setColor(i);
        this.d.setColor(n56.k1(i) ? -1 : -16777216);
        invalidateSelf();
    }

    public void b(int i) {
        if (i < 0) {
            i = 0;
        }
        this.c = i;
        this.d.setStrokeWidth(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        if (this.c == 0) {
            canvas.drawCircle(bounds.centerX(), bounds.centerY(), this.b, this.a);
        } else {
            canvas.drawCircle(bounds.centerX(), bounds.centerY(), this.b - this.c, this.a);
            canvas.drawCircle(bounds.centerX(), bounds.centerY(), this.b - this.c, this.d);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.b = Math.min(rect.width(), rect.height()) / 2;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.a.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.a.setColorFilter(colorFilter);
    }
}
