package defpackage;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import defpackage.w65;

/* loaded from: classes.dex */
public class v65 {
    public final a a;
    public final View b;
    public final Path c;
    public final Paint d;
    public final Paint e;
    public w65.e f;
    public Drawable g;

    public interface a {
        void c(Canvas canvas);

        boolean d();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public v65(a aVar) {
        this.a = aVar;
        View view = (View) aVar;
        this.b = view;
        view.setWillNotDraw(false);
        this.c = new Path();
        this.d = new Paint(7);
        Paint paint = new Paint(1);
        this.e = paint;
        paint.setColor(0);
    }

    public void a(Canvas canvas) {
        if (g()) {
            this.a.c(canvas);
            if (h()) {
                canvas.drawRect(0.0f, 0.0f, this.b.getWidth(), this.b.getHeight(), this.e);
            }
        } else {
            this.a.c(canvas);
            if (h()) {
                canvas.drawRect(0.0f, 0.0f, this.b.getWidth(), this.b.getHeight(), this.e);
            }
        }
        Drawable drawable = this.g;
        if ((drawable == null || this.f == null) ? false : true) {
            Rect bounds = drawable.getBounds();
            float fWidth = this.f.a - (bounds.width() / 2.0f);
            float fHeight = this.f.b - (bounds.height() / 2.0f);
            canvas.translate(fWidth, fHeight);
            this.g.draw(canvas);
            canvas.translate(-fWidth, -fHeight);
        }
    }

    public int b() {
        return this.e.getColor();
    }

    public final float c(w65.e eVar) {
        return c50.N(eVar.a, eVar.b, 0.0f, 0.0f, this.b.getWidth(), this.b.getHeight());
    }

    public w65.e d() {
        w65.e eVar = this.f;
        if (eVar == null) {
            return null;
        }
        w65.e eVar2 = new w65.e(eVar.a, eVar.b, eVar.c);
        if (eVar2.c == Float.MAX_VALUE) {
            eVar2.c = c(eVar2);
        }
        return eVar2;
    }

    public boolean e() {
        return this.a.d() && !g();
    }

    public void f(w65.e eVar) {
        if (eVar == null) {
            this.f = null;
        } else {
            w65.e eVar2 = this.f;
            if (eVar2 == null) {
                this.f = new w65.e(eVar.a, eVar.b, eVar.c);
            } else {
                float f = eVar.a;
                float f2 = eVar.b;
                float f3 = eVar.c;
                eVar2.a = f;
                eVar2.b = f2;
                eVar2.c = f3;
            }
            if (eVar.c + 1.0E-4f >= c(eVar)) {
                this.f.c = Float.MAX_VALUE;
            }
        }
        this.b.invalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean g() {
        /*
            r4 = this;
            w65$e r0 = r4.f
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L14
            float r0 = r0.c
            r3 = 2139095039(0x7f7fffff, float:3.4028235E38)
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 != 0) goto L11
            r0 = 1
            goto L12
        L11:
            r0 = 0
        L12:
            if (r0 == 0) goto L15
        L14:
            r1 = 1
        L15:
            r0 = r1 ^ 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.v65.g():boolean");
    }

    public final boolean h() {
        return Color.alpha(this.e.getColor()) != 0;
    }
}
