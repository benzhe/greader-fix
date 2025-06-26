package defpackage;

import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Log;
import android.view.Gravity;
import android.view.View;
import defpackage.d0;
import defpackage.p85;
import defpackage.p9;
import defpackage.x95;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class j85 {
    public Bitmap A;
    public float B;
    public float C;
    public int[] D;
    public boolean E;
    public final TextPaint F;
    public final TextPaint G;
    public TimeInterpolator H;
    public TimeInterpolator I;
    public float J;
    public float K;
    public float L;
    public ColorStateList M;
    public float N;
    public float O;
    public float P;
    public ColorStateList Q;
    public float R;
    public float S;
    public StaticLayout T;
    public float U;
    public float V;
    public float W;
    public CharSequence X;
    public final View a;
    public boolean b;
    public float c;
    public final Rect d;
    public final Rect e;
    public final RectF f;
    public ColorStateList k;
    public ColorStateList l;
    public float m;
    public float n;
    public float o;
    public float p;
    public float q;
    public float r;
    public Typeface s;
    public Typeface t;
    public Typeface u;
    public x95 v;
    public x95 w;
    public CharSequence x;
    public CharSequence y;
    public boolean z;
    public int g = 16;
    public int h = 16;
    public float i = 15.0f;
    public float j = 15.0f;
    public int Y = 1;

    public class a implements x95.a {
        public a() {
        }

        @Override // x95.a
        public void a(Typeface typeface) throws NoSuchMethodException, SecurityException {
            j85.this.r(typeface);
        }
    }

    public class b implements x95.a {
        public b() {
        }

        @Override // x95.a
        public void a(Typeface typeface) throws NoSuchMethodException, SecurityException {
            j85.this.v(typeface);
        }
    }

    public j85(View view) {
        this.a = view;
        TextPaint textPaint = new TextPaint(129);
        this.F = textPaint;
        this.G = new TextPaint(textPaint);
        this.e = new Rect();
        this.d = new Rect();
        this.f = new RectF();
    }

    public static int a(int i, int i2, float f) {
        float f2 = 1.0f - f;
        return Color.argb((int) ((Color.alpha(i2) * f) + (Color.alpha(i) * f2)), (int) ((Color.red(i2) * f) + (Color.red(i) * f2)), (int) ((Color.green(i2) * f) + (Color.green(i) * f2)), (int) ((Color.blue(i2) * f) + (Color.blue(i) * f2)));
    }

    public static float k(float f, float f2, float f3, TimeInterpolator timeInterpolator) {
        if (timeInterpolator != null) {
            f3 = timeInterpolator.getInterpolation(f3);
        }
        return i55.a(f, f2, f3);
    }

    public static boolean n(Rect rect, int i, int i2, int i3, int i4) {
        return rect.left == i && rect.top == i2 && rect.right == i3 && rect.bottom == i4;
    }

    public void A(Typeface typeface) throws NoSuchMethodException, SecurityException {
        boolean z;
        x95 x95Var = this.w;
        boolean z2 = true;
        if (x95Var != null) {
            x95Var.c = true;
        }
        if (this.s != typeface) {
            this.s = typeface;
            z = true;
        } else {
            z = false;
        }
        x95 x95Var2 = this.v;
        if (x95Var2 != null) {
            x95Var2.c = true;
        }
        if (this.t != typeface) {
            this.t = typeface;
        } else {
            z2 = false;
        }
        if (z || z2) {
            m();
        }
    }

    public float b() {
        if (this.x == null) {
            return 0.0f;
        }
        TextPaint textPaint = this.G;
        textPaint.setTextSize(this.j);
        textPaint.setTypeface(this.s);
        textPaint.setLetterSpacing(this.R);
        TextPaint textPaint2 = this.G;
        CharSequence charSequence = this.x;
        return textPaint2.measureText(charSequence, 0, charSequence.length());
    }

    public final boolean c(CharSequence charSequence) {
        View view = this.a;
        AtomicInteger atomicInteger = ha.a;
        return ((p9.c) (view.getLayoutDirection() == 1 ? p9.d : p9.c)).b(charSequence, 0, charSequence.length());
    }

    public final void d(float f) throws NoSuchMethodException, SecurityException {
        this.f.left = k(this.d.left, this.e.left, f, this.H);
        this.f.top = k(this.m, this.n, f, this.H);
        this.f.right = k(this.d.right, this.e.right, f, this.H);
        this.f.bottom = k(this.d.bottom, this.e.bottom, f, this.H);
        this.q = k(this.o, this.p, f, this.H);
        this.r = k(this.m, this.n, f, this.H);
        x(k(this.i, this.j, f, this.I));
        TimeInterpolator timeInterpolator = i55.b;
        this.U = 1.0f - k(0.0f, 1.0f, 1.0f - f, timeInterpolator);
        View view = this.a;
        AtomicInteger atomicInteger = ha.a;
        view.postInvalidateOnAnimation();
        this.V = k(1.0f, 0.0f, f, timeInterpolator);
        this.a.postInvalidateOnAnimation();
        ColorStateList colorStateList = this.l;
        ColorStateList colorStateList2 = this.k;
        if (colorStateList != colorStateList2) {
            this.F.setColor(a(j(colorStateList2), i(), f));
        } else {
            this.F.setColor(i());
        }
        float f2 = this.R;
        float f3 = this.S;
        if (f2 != f3) {
            this.F.setLetterSpacing(k(f3, f2, f, timeInterpolator));
        } else {
            this.F.setLetterSpacing(f2);
        }
        this.F.setShadowLayer(k(this.N, this.J, f, null), k(this.O, this.K, f, null), k(this.P, this.L, f, null), a(j(this.Q), j(this.M), f));
        this.a.postInvalidateOnAnimation();
    }

    public final void e(float f) throws NoSuchMethodException, SecurityException {
        boolean z;
        float f2;
        StaticLayout staticLayoutA;
        if (this.x == null) {
            return;
        }
        float fWidth = this.e.width();
        float fWidth2 = this.d.width();
        if (Math.abs(f - this.j) < 0.001f) {
            f2 = this.j;
            this.B = 1.0f;
            Typeface typeface = this.u;
            Typeface typeface2 = this.s;
            if (typeface != typeface2) {
                this.u = typeface2;
                z = true;
            } else {
                z = false;
            }
        } else {
            float f3 = this.i;
            Typeface typeface3 = this.u;
            Typeface typeface4 = this.t;
            if (typeface3 != typeface4) {
                this.u = typeface4;
                z = true;
            } else {
                z = false;
            }
            if (Math.abs(f - f3) < 0.001f) {
                this.B = 1.0f;
            } else {
                this.B = f / this.i;
            }
            float f4 = this.j / this.i;
            fWidth = fWidth2 * f4 > fWidth ? Math.min(fWidth / f4, fWidth2) : fWidth2;
            f2 = f3;
        }
        if (fWidth > 0.0f) {
            z = this.C != f2 || this.E || z;
            this.C = f2;
            this.E = false;
        }
        if (this.y == null || z) {
            this.F.setTextSize(this.C);
            this.F.setTypeface(this.u);
            this.F.setLinearText(this.B != 1.0f);
            boolean zC = c(this.x);
            this.z = zC;
            int i = this.Y;
            int i2 = i > 1 && !zC ? i : 1;
            try {
                p85 p85Var = new p85(this.x, this.F, (int) fWidth);
                p85Var.i = TextUtils.TruncateAt.END;
                p85Var.h = zC;
                p85Var.e = Layout.Alignment.ALIGN_NORMAL;
                p85Var.g = false;
                p85Var.f = i2;
                staticLayoutA = p85Var.a();
            } catch (p85.a e) {
                Log.e("CollapsingTextHelper", e.getCause().getMessage(), e);
                staticLayoutA = null;
            }
            Objects.requireNonNull(staticLayoutA);
            this.T = staticLayoutA;
            this.y = staticLayoutA.getText();
        }
    }

    public final void f() {
        Bitmap bitmap = this.A;
        if (bitmap != null) {
            bitmap.recycle();
            this.A = null;
        }
    }

    public void g(Canvas canvas) {
        int iSave = canvas.save();
        if (this.y == null || !this.b) {
            return;
        }
        float lineLeft = (this.T.getLineLeft(0) + this.q) - (this.W * 2.0f);
        this.F.setTextSize(this.C);
        float f = this.q;
        float f2 = this.r;
        float f3 = this.B;
        if (f3 != 1.0f) {
            canvas.scale(f3, f3, f, f2);
        }
        if (this.Y > 1 && !this.z) {
            int alpha = this.F.getAlpha();
            canvas.translate(lineLeft, f2);
            float f4 = alpha;
            this.F.setAlpha((int) (this.V * f4));
            this.T.draw(canvas);
            this.F.setAlpha((int) (this.U * f4));
            int lineBaseline = this.T.getLineBaseline(0);
            CharSequence charSequence = this.X;
            float f5 = lineBaseline;
            canvas.drawText(charSequence, 0, charSequence.length(), 0.0f, f5, this.F);
            String strTrim = this.X.toString().trim();
            if (strTrim.endsWith("…")) {
                strTrim = strTrim.substring(0, strTrim.length() - 1);
            }
            String str = strTrim;
            this.F.setAlpha(alpha);
            canvas.drawText(str, 0, Math.min(this.T.getLineEnd(0), str.length()), 0.0f, f5, (Paint) this.F);
        } else {
            canvas.translate(f, f2);
            this.T.draw(canvas);
        }
        canvas.restoreToCount(iSave);
    }

    public float h() {
        TextPaint textPaint = this.G;
        textPaint.setTextSize(this.j);
        textPaint.setTypeface(this.s);
        textPaint.setLetterSpacing(this.R);
        return -this.G.ascent();
    }

    public int i() {
        return j(this.l);
    }

    public final int j(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return 0;
        }
        int[] iArr = this.D;
        return iArr != null ? colorStateList.getColorForState(iArr, 0) : colorStateList.getDefaultColor();
    }

    public void l() {
        this.b = this.e.width() > 0 && this.e.height() > 0 && this.d.width() > 0 && this.d.height() > 0;
    }

    public void m() throws NoSuchMethodException, SecurityException {
        StaticLayout staticLayout;
        if (this.a.getHeight() <= 0 || this.a.getWidth() <= 0) {
            return;
        }
        float f = this.C;
        e(this.j);
        CharSequence charSequence = this.y;
        if (charSequence != null && (staticLayout = this.T) != null) {
            this.X = TextUtils.ellipsize(charSequence, this.F, staticLayout.getWidth(), TextUtils.TruncateAt.END);
        }
        CharSequence charSequence2 = this.X;
        float fMeasureText = charSequence2 != null ? this.F.measureText(charSequence2, 0, charSequence2.length()) : 0.0f;
        int absoluteGravity = Gravity.getAbsoluteGravity(this.h, this.z ? 1 : 0);
        int i = absoluteGravity & 112;
        if (i == 48) {
            this.n = this.e.top;
        } else if (i != 80) {
            this.n = this.e.centerY() - ((this.F.descent() - this.F.ascent()) / 2.0f);
        } else {
            this.n = this.F.ascent() + this.e.bottom;
        }
        int i2 = absoluteGravity & 8388615;
        if (i2 == 1) {
            this.p = this.e.centerX() - (fMeasureText / 2.0f);
        } else if (i2 != 5) {
            this.p = this.e.left;
        } else {
            this.p = this.e.right - fMeasureText;
        }
        e(this.i);
        float height = this.T != null ? r1.getHeight() : 0.0f;
        CharSequence charSequence3 = this.y;
        float fMeasureText2 = charSequence3 != null ? this.F.measureText(charSequence3, 0, charSequence3.length()) : 0.0f;
        StaticLayout staticLayout2 = this.T;
        if (staticLayout2 != null && this.Y > 1 && !this.z) {
            fMeasureText2 = staticLayout2.getWidth();
        }
        StaticLayout staticLayout3 = this.T;
        this.W = staticLayout3 != null ? staticLayout3.getLineLeft(0) : 0.0f;
        int absoluteGravity2 = Gravity.getAbsoluteGravity(this.g, this.z ? 1 : 0);
        int i3 = absoluteGravity2 & 112;
        if (i3 == 48) {
            this.m = this.d.top;
        } else if (i3 != 80) {
            this.m = this.d.centerY() - (height / 2.0f);
        } else {
            this.m = this.F.descent() + (this.d.bottom - height);
        }
        int i4 = absoluteGravity2 & 8388615;
        if (i4 == 1) {
            this.o = this.d.centerX() - (fMeasureText2 / 2.0f);
        } else if (i4 != 5) {
            this.o = this.d.left;
        } else {
            this.o = this.d.right - fMeasureText2;
        }
        f();
        x(f);
        d(this.c);
    }

    public void o(int i) throws NoSuchMethodException, SecurityException {
        y95 y95Var = new y95(this.a.getContext(), i);
        ColorStateList colorStateList = y95Var.a;
        if (colorStateList != null) {
            this.l = colorStateList;
        }
        float f = y95Var.k;
        if (f != 0.0f) {
            this.j = f;
        }
        ColorStateList colorStateList2 = y95Var.b;
        if (colorStateList2 != null) {
            this.M = colorStateList2;
        }
        this.K = y95Var.f;
        this.L = y95Var.g;
        this.J = y95Var.h;
        this.R = y95Var.j;
        x95 x95Var = this.w;
        if (x95Var != null) {
            x95Var.c = true;
        }
        a aVar = new a();
        y95Var.a();
        this.w = new x95(aVar, y95Var.n);
        y95Var.b(this.a.getContext(), this.w);
        m();
    }

    public void p(ColorStateList colorStateList) throws NoSuchMethodException, SecurityException {
        if (this.l != colorStateList) {
            this.l = colorStateList;
            m();
        }
    }

    public void q(int i) throws NoSuchMethodException, SecurityException {
        if (this.h != i) {
            this.h = i;
            m();
        }
    }

    public void r(Typeface typeface) throws NoSuchMethodException, SecurityException {
        x95 x95Var = this.w;
        boolean z = true;
        if (x95Var != null) {
            x95Var.c = true;
        }
        if (this.s != typeface) {
            this.s = typeface;
        } else {
            z = false;
        }
        if (z) {
            m();
        }
    }

    public void s(int i) throws NoSuchMethodException, SecurityException {
        y95 y95Var = new y95(this.a.getContext(), i);
        ColorStateList colorStateList = y95Var.a;
        if (colorStateList != null) {
            this.k = colorStateList;
        }
        float f = y95Var.k;
        if (f != 0.0f) {
            this.i = f;
        }
        ColorStateList colorStateList2 = y95Var.b;
        if (colorStateList2 != null) {
            this.Q = colorStateList2;
        }
        this.O = y95Var.f;
        this.P = y95Var.g;
        this.N = y95Var.h;
        this.S = y95Var.j;
        x95 x95Var = this.v;
        if (x95Var != null) {
            x95Var.c = true;
        }
        b bVar = new b();
        y95Var.a();
        this.v = new x95(bVar, y95Var.n);
        y95Var.b(this.a.getContext(), this.v);
        m();
    }

    public void t(ColorStateList colorStateList) throws NoSuchMethodException, SecurityException {
        if (this.k != colorStateList) {
            this.k = colorStateList;
            m();
        }
    }

    public void u(int i) throws NoSuchMethodException, SecurityException {
        if (this.g != i) {
            this.g = i;
            m();
        }
    }

    public void v(Typeface typeface) throws NoSuchMethodException, SecurityException {
        x95 x95Var = this.v;
        boolean z = true;
        if (x95Var != null) {
            x95Var.c = true;
        }
        if (this.t != typeface) {
            this.t = typeface;
        } else {
            z = false;
        }
        if (z) {
            m();
        }
    }

    public void w(float f) throws NoSuchMethodException, SecurityException {
        float fK = d0.h.k(f, 0.0f, 1.0f);
        if (fK != this.c) {
            this.c = fK;
            d(fK);
        }
    }

    public final void x(float f) throws NoSuchMethodException, SecurityException {
        e(f);
        View view = this.a;
        AtomicInteger atomicInteger = ha.a;
        view.postInvalidateOnAnimation();
    }

    public final boolean y(int[] iArr) throws NoSuchMethodException, SecurityException {
        ColorStateList colorStateList;
        this.D = iArr;
        ColorStateList colorStateList2 = this.l;
        if (!((colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.k) != null && colorStateList.isStateful()))) {
            return false;
        }
        m();
        return true;
    }

    public void z(CharSequence charSequence) throws NoSuchMethodException, SecurityException {
        if (charSequence == null || !TextUtils.equals(this.x, charSequence)) {
            this.x = charSequence;
            this.y = null;
            f();
            m();
        }
    }
}
