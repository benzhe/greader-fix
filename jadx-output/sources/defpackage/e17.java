package defpackage;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.View;

/* loaded from: classes2.dex */
public final class e17 {
    public final View a;
    public final View b;
    public final Rect c = new Rect();

    public e17(View view, View view2) {
        this.a = view;
        this.b = view2;
    }

    public final void a(Canvas canvas, Paint paint) {
        canvas.drawRect(0.0f, this.b.getBottom(), this.a.getMeasuredWidth(), this.a.getMeasuredHeight(), paint);
    }

    public final void b(Canvas canvas, Paint paint) {
        canvas.drawRect(0.0f, 0.0f, this.b.getLeft(), this.a.getMeasuredHeight(), paint);
    }

    public final void c(Canvas canvas, Paint paint) {
        canvas.drawRect(this.b.getRight(), 0.0f, this.a.getMeasuredWidth(), this.a.getMeasuredHeight(), paint);
    }

    public final void d(Canvas canvas, Paint paint) {
        canvas.drawRect(0.0f, 0.0f, this.a.getMeasuredWidth(), this.b.getTop(), paint);
    }
}
