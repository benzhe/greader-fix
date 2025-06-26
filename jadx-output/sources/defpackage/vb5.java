package defpackage;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;

/* loaded from: classes.dex */
public class vb5 extends la5 {
    public final Paint C;
    public final RectF D;
    public int E;

    public vb5() {
        this(null);
    }

    public void F(float f, float f2, float f3, float f4) {
        RectF rectF = this.D;
        if (f == rectF.left && f2 == rectF.top && f3 == rectF.right && f4 == rectF.bottom) {
            return;
        }
        rectF.set(f, f2, f3, f4);
        invalidateSelf();
    }

    @Override // defpackage.la5, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable.Callback callback = getCallback();
        if (callback instanceof View) {
            View view = (View) callback;
            if (view.getLayerType() != 2) {
                view.setLayerType(2, null);
            }
        } else {
            this.E = canvas.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), null);
        }
        super.draw(canvas);
        canvas.drawRect(this.D, this.C);
        if (getCallback() instanceof View) {
            return;
        }
        canvas.restoreToCount(this.E);
    }

    public vb5(pa5 pa5Var) {
        super(pa5Var == null ? new pa5() : pa5Var);
        Paint paint = new Paint(1);
        this.C = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        this.D = new RectF();
    }
}
