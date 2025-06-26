package defpackage;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Build;
import defpackage.g95;

/* loaded from: classes.dex */
public final class r95<S extends g95> extends o95 {
    public p95<S> p;
    public q95<ObjectAnimator> q;

    public r95(Context context, g95 g95Var, p95<S> p95Var, q95<ObjectAnimator> q95Var) {
        super(context, g95Var);
        this.p = p95Var;
        p95Var.b = this;
        this.q = q95Var;
        q95Var.a = this;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect rect = new Rect();
        if (getBounds().isEmpty() || !isVisible() || !canvas.getClipBounds(rect)) {
            return;
        }
        canvas.save();
        p95<S> p95Var = this.p;
        float fC = c();
        p95Var.a.a();
        p95Var.a(canvas, fC);
        this.p.c(canvas, this.m);
        int i = 0;
        while (true) {
            q95<ObjectAnimator> q95Var = this.q;
            int[] iArr = q95Var.c;
            if (i >= iArr.length) {
                canvas.restore();
                return;
            }
            p95<S> p95Var2 = this.p;
            Paint paint = this.m;
            float[] fArr = q95Var.b;
            int i2 = i * 2;
            p95Var2.b(canvas, paint, fArr[i2], fArr[i2 + 1], iArr[i]);
            i++;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.p.d();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.p.e();
    }

    @Override // defpackage.o95
    public boolean i(boolean z, boolean z2, boolean z3) {
        boolean zI = super.i(z, z2, z3);
        if (!isRunning()) {
            this.q.a();
        }
        float fA = this.g.a(this.e.getContentResolver());
        if (z && (z3 || (Build.VERSION.SDK_INT <= 21 && fA > 0.0f))) {
            this.q.f();
        }
        return zI;
    }
}
